@interface OSDCaptureDevice
+ (id)ispBinary;
+ (id)ispVersion;
- (BOOL)getDeviceAndStreams:(id *)a3;
- (BOOL)setupCaptureDevice:(id *)a3;
- (BOOL)setupCaptureStreams:(id *)a3;
- (OSDCaptureDevice)init;
- (id)captureStreamForPortType:(__CFString *)a3 error:(id *)a4;
- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4;
- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4;
- (void)dealloc;
- (void)doneWithDeviceAndStreams;
- (void)teardown;
@end

@implementation OSDCaptureDevice

+ (id)ispBinary
{
  v2 = sub_100002364()[4];

  return [NSString stringWithUTF8String:v2];
}

+ (id)ispVersion
{
  v2 = *(sub_100002364() + 6);

  return [NSNumber numberWithInt:v2];
}

- (OSDCaptureDevice)init
{
  v3.receiver = self;
  v3.super_class = OSDCaptureDevice;
  result = [(OSDCaptureDevice *)&v3 init];
  if (result)
  {
    result->_deviceRef = 0;
    result->_owners = 0;
  }

  return result;
}

- (BOOL)getDeviceAndStreams:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(OSDCaptureDevice *)v4 owners]|| [(OSDCaptureDevice *)v4 setupCaptureDevice:a3]&& [(OSDCaptureDevice *)v4 setupCaptureStreams:a3])
  {
    [(OSDCaptureDevice *)v4 setOwners:[(OSDCaptureDevice *)v4 owners]+ 8];
    v5 = 1;
  }

  else
  {
    [(OSDCaptureDevice *)v4 teardown];
    v5 = 0;
  }

  objc_sync_exit(v4);

  return v5;
}

- (void)doneWithDeviceAndStreams
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(OSDCaptureDevice *)v2 owners])
  {
    [(OSDCaptureDevice *)v2 setOwners:[(OSDCaptureDevice *)v2 owners]- 8];
    if (![(OSDCaptureDevice *)v2 owners])
    {
      [(OSDCaptureDevice *)v2 teardown];
    }
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ >> Attempted to deactivate a camera with no matching activiation!", &v4, 0xCu);
    }
  }

  objc_sync_exit(v2);
}

- (BOOL)setupCaptureDevice:(id *)a3
{
  v5 = sub_100002364();
  v6 = dlopen(v5[1], 4);
  if (!v6)
  {
    v17 = dlerror();
    v15 = @"%@ >> Unable to open the isp plugin: %s";
    v23 = self;
    v24 = v17;
LABEL_18:
    v16 = a3;
    goto LABEL_19;
  }

  v7 = dlsym(v6, v5[2]);
  if (!v7)
  {
    v15 = @"%@ >> Unable to load the isp symbols.";
    v23 = self;
    goto LABEL_18;
  }

  v8 = v7;
  v25 = v5;
  v9 = v7(kCFAllocatorDefault, 0, &self->_deviceRef);
  if (v9 == -536870187)
  {
    v10 = 2;
    v11 = 2;
    do
    {
      v12 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        LODWORD(v27[0]) = 2;
        WORD2(v27[0]) = 1024;
        *(v27 + 6) = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Camera creation returned kIOReturnBusy. Delaying %d seconds to retry. (%d retries left)", buf, 0xEu);
      }

      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 2.0, 0);
      v9 = v8(kCFAllocatorDefault, 0, &self->_deviceRef);
      v11 = v10 - 1;
      if (v9 == -536870187)
      {
        v13 = v10 - 1;
      }

      else
      {
        v13 = v10;
      }

      if (v9 != -536870187)
      {
        break;
      }

      v14 = v10 <= 0;
      v10 = v13;
    }

    while (!v14);
  }

  if (v9)
  {
    self->_deviceRef = 0;
    v15 = @"%@ >> Unable to create the FigCaptureDevice with status: (0x%08x)";
    v23 = self;
    v24 = v9;
LABEL_15:
    v16 = a3;
LABEL_19:
    [OSDError setError:v16 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:v15, v23, v24];
    return 0;
  }

  if (!self->_deviceRef)
  {
    v15 = @"%@ >> CRITICAL CreateCaptureDevice returned success but the device was NULL";
    v23 = self;
    goto LABEL_15;
  }

  v19 = [NSNumber numberWithInt:*(v25 + 6)];
  ispVersion = self->_ispVersion;
  self->_ispVersion = v19;

  v21 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_ispVersion;
    *buf = 138412290;
    v27[0] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "OSD using isp version %@", buf, 0xCu);
  }

  return 1;
}

- (BOOL)setupCaptureStreams:(id *)a3
{
  v5 = [(OSDPropertyBasedDevice *)self copyProperty:kFigCaptureDeviceProperty_StreamArray error:a3];
  if (a3 && *a3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(OSDCaptureDevice *)self deviceRef];
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (*v8 < 2uLL || (v9 = v8[2]) == 0 || (v10 = v8[2], (v11 = v9(v7, v5, 0), v11 != -12782) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      v6 = 1;
    }

    else
    {
      v27 = v11;
      v28 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = self;
        v39 = 1024;
        v40 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: Failed to request control of the streams! %d", buf, 0x12u);
      }

      v6 = 0;
    }

    v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v30 = v6;
      v31 = v5;
      v17 = *v33;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[OSDCaptureStream alloc] initWithStream:*(*(&v32 + 1) + 8 * i)];
          v20 = [(OSDCaptureStream *)v19 name:a3];
          if (!v20)
          {

            v6 = 0;
            v5 = v31;
            goto LABEL_23;
          }

          v21 = v20;
          [v13 setObject:v19 forKeyedSubscript:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v5 = v31;
      v6 = v30;
    }

LABEL_23:

    v22 = [v13 copy];
    portToStreamMap = self->_portToStreamMap;
    self->_portToStreamMap = v22;

    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(NSDictionary *)self->_portToStreamMap count];
      *buf = 134217984;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "OSDCaptureDevice has %lu streams", buf, 0xCu);
    }
  }

  return v6;
}

- (void)dealloc
{
  [(OSDCaptureDevice *)self teardown];
  v3.receiver = self;
  v3.super_class = OSDCaptureDevice;
  [(OSDCaptureDevice *)&v3 dealloc];
}

- (void)teardown
{
  [(NSDictionary *)self->_portToStreamMap enumerateKeysAndObjectsUsingBlock:&stru_100010550];
  portToStreamMap = self->_portToStreamMap;
  self->_portToStreamMap = 0;

  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    CFRelease(deviceRef);
    self->_deviceRef = 0;
  }
}

- (id)captureStreamForPortType:(__CFString *)a3 error:(id *)a4
{
  v5 = [(OSDCaptureDevice *)self portToStreamMap:a3];
  v6 = [v5 objectForKeyedSubscript:a3];

  return v6;
}

- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4
{
  deviceRef = self->_deviceRef;
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 56);
  if (!v9)
  {
    return -12782;
  }

  v10 = *(VTable + 8) + 56;

  return v9(FigBaseObject, a3, a4);
}

- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4
{
  deviceRef = self->_deviceRef;
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return -12782;
  }

  return v8(FigBaseObject, a3, kCFAllocatorDefault, a4);
}

@end
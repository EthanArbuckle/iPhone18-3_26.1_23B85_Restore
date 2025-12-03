@interface OSDGrape
- (BOOL)_enableProx:(BOOL)prox;
- (BOOL)_getMTReport:(unsigned __int8)report payloadBuffer:(char *)buffer bufferSize:(unsigned int *)size;
- (BOOL)_grapeCriticalErrorDetected:(id)detected;
- (BOOL)_isProxEnabled;
- (BOOL)_refreshGrapeProperties;
- (BOOL)_setMTReport:(unsigned __int8)report payloadBuffer:(char *)buffer bufferSize:(unsigned int)size;
- (BOOL)didDopplerErrorOccur;
- (BOOL)isDoppler;
- (BOOL)isGrapePowered;
- (BOOL)proxErrorDetected;
- (BOOL)scheduleSystemWake:(unsigned int)wake;
- (OSDGrape)init;
- (__MTDevice)_createMTDevice:(unsigned int)device;
- (id)_getMTReportErrorFromCommandBuffer:(char *)buffer length:(int)length;
- (id)bcdVersion;
- (id)constructedFirmwareVersion;
- (id)criticalErrorSet:(unint64_t *)set;
- (id)getDopplerDataRegister;
- (id)getDopplerError;
- (id)getDopplerSiliconVersion;
- (id)orbChipID;
- (id)orbErrorDetected;
- (unsigned)getDopplerReferenceSignalEvents;
- (unsigned)multitouchFirmwareVersion;
- (void)cleanupStreaming:(void *)streaming;
- (void)dealloc;
- (void)resetGrape;
- (void)startStreaming:(void *)streaming;
@end

@implementation OSDGrape

- (__MTDevice)_createMTDevice:(unsigned int)device
{
  Default = MTDeviceCreateDefault();
  if (!Default)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      v8 = "Could not create default MTDevice.";
      v9 = v7;
      v10 = 2;
      goto LABEL_9;
    }

LABEL_6:

    return 0;
  }

  v4 = Default;
  v5 = MTDeviceStart();
  if (v5)
  {
    v6 = v5;
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v6;
      v8 = "Unable to start MTDevice with code: %d";
      v9 = v7;
      v10 = 8;
LABEL_9:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, v12, v10);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  return v4;
}

- (OSDGrape)init
{
  v7.receiver = self;
  v7.super_class = OSDGrape;
  v2 = [(OSDGrape *)&v7 init];
  v3 = v2;
  if (v2 && (v4 = [(OSDGrape *)v2 _createMTDevice:268435457], (v3->_grapeDevice = v4) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_grapeDevice)
  {
    MTDeviceRelease();
  }

  v3.receiver = self;
  v3.super_class = OSDGrape;
  [(OSDGrape *)&v3 dealloc];
}

- (BOOL)_refreshGrapeProperties
{
  properties = 0;
  grapeDevice = self->_grapeDevice;
  Service = MTDeviceGetService();
  v5 = IORegistryEntryCreateCFProperties(Service, &properties, 0, 0);
  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IORegistryEntryCreateCFProperties failure for AppleMultitouchSPI.", v13, 2u);
    }
  }

  else
  {
    v6 = properties;
    v7 = [(__CFDictionary *)properties objectForKeyedSubscript:@"Constructed Firmware Version"];
    constructedFirmwareVersion = self->_constructedFirmwareVersion;
    self->_constructedFirmwareVersion = v7;

    v9 = [v6 objectForKeyedSubscript:@"bcdVersion"];
    bcdVersion = self->_bcdVersion;
    self->_bcdVersion = v9;

    v11 = [v6 objectForKeyedSubscript:@"ResetCount"];
    self->_resetCount = [v11 integerValue];
  }

  return v5 == 0;
}

- (unsigned)multitouchFirmwareVersion
{
  grapeDevice = self->_grapeDevice;
  MTDeviceGetVersion();
  return 0;
}

- (id)constructedFirmwareVersion
{
  [(OSDGrape *)self _refreshGrapeProperties];
  constructedFirmwareVersion = self->_constructedFirmwareVersion;

  return constructedFirmwareVersion;
}

- (id)bcdVersion
{
  [(OSDGrape *)self _refreshGrapeProperties];
  bcdVersion = self->_bcdVersion;

  return bcdVersion;
}

- (id)orbChipID
{
  v5 = 128;
  v6 = 176480;
  [(OSDGrape *)self _setMTReport:44 payloadBuffer:&v6 bufferSize:8];
  if ([(OSDGrape *)self _getMTReport:45 payloadBuffer:v7 bufferSize:&v5])
  {
    v3 = [NSData dataWithBytes:v7 length:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_grapeCriticalErrorDetected:(id)detected
{
  detectedCopy = detected;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14 = 0;
  v5 = [(OSDGrape *)self criticalErrorSet:&v14];
  v6 = v5;
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100022CA4;
    v10[3] = &unk_1000909C8;
    v11 = v5;
    v12 = &v15;
    [detectedCopy enumerateObjectsUsingBlock:v10];

    v7 = *(v16 + 24);
  }

  else
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to read critical errors. Please check grape is powered on", buf, 2u);
    }

    v7 = 1;
    *(v16 + 24) = 1;
  }

  _Block_object_dispose(&v15, 8);
  return v7 & 1;
}

- (id)orbErrorDetected
{
  v4 = 0;
  v2 = [(OSDGrape *)self criticalErrorSet:&v4];

  return v2;
}

- (BOOL)proxErrorDetected
{
  v3 = [NSSet alloc];
  v7 = @"Prox critical error.";
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 initWithArray:v4];

  LOBYTE(self) = [(OSDGrape *)self _grapeCriticalErrorDetected:v5];
  return self;
}

- (BOOL)_getMTReport:(unsigned __int8)report payloadBuffer:(char *)buffer bufferSize:(unsigned int *)size
{
  if (!size)
  {
    return 0;
  }

  v5 = *size;
  grapeDevice = self->_grapeDevice;
  Report = MTDeviceGetReport();
  if (Report)
  {
    v8 = Report;
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109376;
      v11[1] = v8;
      v12 = 1024;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get MT report with code: %d (0x%x)", v11, 0xEu);
    }

    return 0;
  }

  return 1;
}

- (BOOL)_setMTReport:(unsigned __int8)report payloadBuffer:(char *)buffer bufferSize:(unsigned int)size
{
  grapeDevice = self->_grapeDevice;
  v6 = MTDeviceSetReport();
  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109376;
      v9[1] = v6;
      v10 = 1024;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set MT report with code: %d (0x%x)", v9, 0xEu);
    }
  }

  return v6 == 0;
}

- (id)criticalErrorSet:(unint64_t *)set
{
  v5 = +[NSMutableSet set];
  v15 = 4;
  v16 = 0;
  if (![(OSDGrape *)self _getMTReport:127 payloadBuffer:&v16 bufferSize:&v15])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "getMTReport failed";
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_11;
  }

  if (v15 != 4)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "Unexpected number of bytes returned from MTReport";
    goto LABEL_16;
  }

  if (set)
  {
    *set = v16;
  }

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processing 0x%x for grape critical errors.", buf, 8u);
  }

  v17[0] = @"EEPROM baseline invalid.";
  v17[1] = @"EEPROM calibration checksum error.";
  v18[0] = &off_1000C8A20;
  v18[1] = &off_1000C8A38;
  v17[2] = @"EEPROM calibration invalid.";
  v17[3] = @"EEPROM header invalid.";
  v18[2] = &off_1000C8A50;
  v18[3] = &off_1000C8A68;
  v17[4] = @"Host refclk not detected.";
  v17[5] = @"Unknown Error";
  v18[4] = &off_1000C8A80;
  v18[5] = &off_1000C8A98;
  v17[6] = @"EEPROM version unsupported.";
  v17[7] = @"ZEPHYR revert defaults.";
  v18[6] = &off_1000C8AB0;
  v18[7] = &off_1000C8AC8;
  v17[8] = @"Orb offset calibration missing.";
  v17[9] = @"Orb offset calibration checksum error.";
  v18[8] = &off_1000C8AE0;
  v18[9] = &off_1000C8AF8;
  v17[10] = @"Orb force calibration missing.";
  v17[11] = @"Orb force calibration checksum error.";
  v18[10] = &off_1000C8B10;
  v18[11] = &off_1000C8B28;
  v17[12] = @"Orb critical error.";
  v17[13] = @"Prox critical error.";
  v18[12] = &off_1000C8B40;
  v18[13] = &off_1000C8B58;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000232EC;
  v12[3] = &unk_1000909F0;
  v14 = v16;
  v8 = v5;
  v13 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v8;

LABEL_12:

  return v9;
}

- (BOOL)scheduleSystemWake:(unsigned int)wake
{
  v4 = 64;
  v5 = 1000 * wake;
  return [(OSDGrape *)self _setMTReport:244 payloadBuffer:&v4 bufferSize:3];
}

- (BOOL)isGrapePowered
{
  grapeDevice = self->_grapeDevice;
  MTDevicePowerGetEnabled();
  return 0;
}

- (void)resetGrape
{
  grapeDevice = self->_grapeDevice;
  v4 = MTDevicePowerSetEnabled();
  if (v4)
  {
    v5 = v4;
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Power off : %u", &v11, 8u);
    }
  }

  v7 = self->_grapeDevice;
  v8 = MTDevicePowerSetEnabled();
  if (v8)
  {
    v9 = v8;
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Power on : %u", &v11, 8u);
    }
  }
}

- (void)startStreaming:(void *)streaming
{
  v5 = [(OSDGrape *)self _createMTDevice:0];
  self->_grapeDevice = v5;
  if (v5)
  {
    if (![(OSDGrape *)self _enableProx:1])
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Enabling prox failed", buf, 2u);
      }
    }

    if (![(OSDGrape *)self _registerForProx:streaming])
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Registering for prox failed", v10, 2u);
      }
    }

    grapeDevice = self->_grapeDevice;
    MTDeviceSetInputDetectionMode();
    sleep(1u);
    v9 = self->_grapeDevice;
    MTDeviceSetZephyrParameter();
  }
}

- (void)cleanupStreaming:(void *)streaming
{
  grapeDevice = self->_grapeDevice;
  MTDeviceSetZephyrParameter();
  [(OSDGrape *)self _unregisterForProx:streaming];
  [(OSDGrape *)self _enableProx:0];
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_grapeDevice;
    v11 = 67109120;
    v12 = MTDevicePowerSetEnabled();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Power off status: %u", &v11, 8u);
  }

  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_grapeDevice;
    v10 = MTDevicePowerSetEnabled();
    v11 = 67109120;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power on status: %u", &v11, 8u);
  }
}

- (BOOL)_isProxEnabled
{
  grapeDevice = self->_grapeDevice;
  MTDeviceGetReport();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v7 = 0;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reading Prox enabled status %u bytes value is %d", buf, 0xEu);
  }

  return v5 != 0;
}

- (BOOL)_enableProx:(BOOL)prox
{
  proxCopy = prox;
  if (prox && [(OSDGrape *)self _isProxEnabled])
  {
    return 1;
  }

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = proxCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enabling prox: %d", buf, 8u);
  }

  grapeDevice = self->_grapeDevice;
  if (MTDeviceSetReport())
  {
    return 0;
  }

  v5 = 1;
  sleep(1u);
  return v5;
}

- (BOOL)isDoppler
{
  grapeDevice = self->_grapeDevice;
  MTDeviceGetVersion();
  v3 = [NSString stringWithFormat:@"%x", 0];
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " FW version %@", buf, 0xCu);
  }

  v5 = [v3 containsString:@"d"];
  return v5;
}

- (BOOL)didDopplerErrorOccur
{
  grapeDevice = self->_grapeDevice;
  Report = MTDeviceGetReport();
  v4 = Report == 0;
  if (Report)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = 127;
      v6 = "Unable to get MTReport 0x%x";
      v7 = v5;
      v8 = 8;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((v12 & 8) != 0)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Doppler error detected";
      v7 = v5;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:

    return v4;
  }

  return 0;
}

- (id)getDopplerError
{
  v11 = 0x94000001C1582CLL;
  v12 = 0;
  v9 = 0x80020001C1582CLL;
  v10 = 0;
  getDopplerSiliconVersion = [(OSDGrape *)self getDopplerSiliconVersion];
  if ([getDopplerSiliconVersion isEqualToString:@"A0"])
  {
    v4 = &v11;
LABEL_5:
    v5 = [(OSDGrape *)self _getMTReportErrorFromCommandBuffer:v4 length:8];
    goto LABEL_9;
  }

  if ([getDopplerSiliconVersion isEqualToString:@"TC"])
  {
    v4 = &v9;
    goto LABEL_5;
  }

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid doppler silicon rev", v8, 2u);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)getDopplerDataRegister
{
  grapeDevice = self->_grapeDevice;
  if (MTDeviceGetReport())
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSData dataWithBytes:v5 length:0];
  }

  return v3;
}

- (id)_getMTReportErrorFromCommandBuffer:(char *)buffer length:(int)length
{
  grapeDevice = self->_grapeDevice;
  v7 = *buffer;
  if (MTDeviceSetReport())
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *buffer;
      v18[0] = 67109120;
      v18[1] = v9;
      v10 = "Unable to set MTReport 0x%x";
      v11 = v18;
LABEL_14:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, v11, 8u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v12 = self->_grapeDevice;
  if (MTDeviceGetReport())
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *buffer;
      *buf = 67109120;
      v17 = v15;
      v10 = "Unable to get MTReport 0x%x";
      v11 = buf;
      goto LABEL_14;
    }

LABEL_6:

    goto LABEL_7;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MTReportGet read 0 bytes", buf, 2u);
  }

LABEL_7:

  return 0;
}

- (id)getDopplerSiliconVersion
{
  v13 = 0x1000001C1582CLL;
  v14 = 0;
  grapeDevice = self->_grapeDevice;
  if (MTDeviceSetReport())
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v13;
      v5 = "Unable to set MTReport 0x%x";
      v6 = v15;
LABEL_7:
      v8 = v4;
      v9 = 8;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v5, v6, v9);
    }
  }

  else
  {
    v7 = self->_grapeDevice;
    if (!MTDeviceGetReport())
    {
      v4 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = "MTReportGet read 0 bytes";
      v6 = buf;
      v8 = v4;
      v9 = 2;
      goto LABEL_8;
    }

    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = 45;
      v5 = "Unable to get MTReport 0x%x";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_11:

  return 0;
}

- (unsigned)getDopplerReferenceSignalEvents
{
  getDopplerDataRegister = [(OSDGrape *)self getDopplerDataRegister];
  if ([getDopplerDataRegister length] > 0x20)
  {
    v4 = *([getDopplerDataRegister bytes] + 7);
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Doppler Data Dump Register invalid length", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end
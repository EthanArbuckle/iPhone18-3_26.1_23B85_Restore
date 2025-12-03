@interface TrackpadActuatorStage
- (BOOL)supportsActuationLimits;
- (TrackpadActuatorStage)initWithDevice:(__MTDevice *)device;
- (id)fetchActuatorLimits;
- (int)_openActuatorDevice;
- (unsigned)getActuationOptions:(int)options quietClick:(BOOL)click;
- (void)_handleActuationEvent:(id)event;
- (void)_handleCancelEvent:(id)event;
- (void)_handleGetDebugEvent:(id)event;
- (void)_handleHSTNotificationEvent:(id)event;
- (void)_handleHostStateEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_openActuatorDevice;
- (void)_updateHostClickControl;
- (void)dealloc;
- (void)handleActMatching:(unsigned int)matching;
- (void)handleConsume:(id)consume;
- (void)handleGetPropertyEvent:(id)event;
- (void)handlePointerSettings:(id)settings;
- (void)setActuationOptions:(unsigned int)options;
- (void)setQueue:(id)queue;
@end

@implementation TrackpadActuatorStage

- (void)setActuationOptions:(unsigned int)options
{
  if ([(TrackpadActuatorStage *)self actuationOptions]!= options)
  {
    self->_actuationOptions = options;
    actDevice = self->_actDevice;
    actuationOptions = [(TrackpadActuatorStage *)self actuationOptions];

    _MTActuatorSetFirmwareClicks(actDevice, actuationOptions);
  }
}

- (TrackpadActuatorStage)initWithDevice:(__MTDevice *)device
{
  v17.receiver = self;
  v17.super_class = TrackpadActuatorStage;
  v7 = [(HSStage *)&v17 init:device];
  v8 = v7;
  if (v7)
  {
    v7->_mtDevice = device;
    v7->_actDevice = 0;
    v7->_actuatorEntryID = 0;
    v7->_actuationsEnabled = 0;
    [(TrackpadActuatorStage *)v7 _openActuatorDevice];
    v8->_actuatorMatchedNotifierPortRef = 0;
    v8->_actuatorMatchedIterator = 0;
    v8->_displayState = 0;
    v9 = [[HSTCircularBuffer alloc] initWithMaxItems:50 includeTimestamp:1];
    actuationRequestHistory = v8->_actuationRequestHistory;
    v8->_actuationRequestHistory = v9;

    fetchActuatorLimits = [(TrackpadActuatorStage *)v8 fetchActuatorLimits];
    actuatorLimits = v8->_actuatorLimits;
    v8->_actuatorLimits = fetchActuatorLimits;

    v13 = [[ActuationManager alloc] initWithService:MTActuatorGetService()];
    actuationManager = v8->_actuationManager;
    v8->_actuationManager = v13;

    v8->_actuationOptions = 0;
    v15 = v8;
  }

  return v8;
}

- (void)dealloc
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "~%@", buf, 0xCu);
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  v5 = mach_continuous_time();
  v6 = consumeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(TrackpadActuatorStage *)self _handleActuationEvent:v6];
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(TrackpadActuatorStage *)self handlePointerSettings:v8];
  }

  else
  {
    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [(TrackpadActuatorStage *)self _handleHSTNotificationEvent:v10];
    }

    else
    {
      v12 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        [(TrackpadActuatorStage *)self handleGetPropertyEvent:v12];
      }

      else
      {
        v14 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          [(TrackpadActuatorStage *)self _handleSetPropertyEvent:v14];
        }

        else
        {
          v16 = HSUtil::DynamicCast<HSTCancelEvent>(v14);

          if (v16)
          {
            [(TrackpadActuatorStage *)self _handleCancelEvent:v14];
          }

          else
          {
            v17 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v14);

            if (v17)
            {
              [(TrackpadActuatorStage *)self _handleGetDebugEvent:v14];
            }

            else
            {
              v18 = HSUtil::DynamicCast<HSTHostStateEvent>(v14);

              if (v18)
              {
                [(TrackpadActuatorStage *)self _handleHostStateEvent:v14];
              }

              else
              {
                v21.receiver = self;
                v21.super_class = TrackpadActuatorStage;
                [(HSStage *)&v21 handleConsume:v14];
              }
            }
          }
        }
      }
    }
  }

  v19 = MTLoggingPlugin();
  if (os_signpost_enabled(v19))
  {
    ClassName = object_getClassName(v8);
    *buf = 134349314;
    v23 = v5;
    v24 = 2080;
    v25 = ClassName;
    _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadActuatorStage", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }
}

- (void)_handleCancelEvent:(id)event
{
  eventCopy = event;
  actuatorMatchedIterator = self->_actuatorMatchedIterator;
  if (actuatorMatchedIterator)
  {
    IOObjectRelease(actuatorMatchedIterator);
    self->_actuatorMatchedIterator = 0;
  }

  actuatorMatchedNotifierPortRef = self->_actuatorMatchedNotifierPortRef;
  if (actuatorMatchedNotifierPortRef)
  {
    IONotificationPortDestroy(actuatorMatchedNotifierPortRef);
    self->_actuatorMatchedNotifierPortRef = 0;
  }

  self->_mtDevice = 0;
  self->_actDevice = 0;
  v7.receiver = self;
  v7.super_class = TrackpadActuatorStage;
  [(HSStage *)&v7 handleConsume:eventCopy];
}

- (void)_handleActuationEvent:(id)event
{
  eventCopy = event;
  if (!self->_actuationsEnabled)
  {
    MTDeviceGetDeviceID();
    v21 = MTLoggingPlugin();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v24 = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Actuations disabled - Dropping actuation event (deviceID 0x%llX)", buf, 0xCu);
    }

    goto LABEL_10;
  }

  MTDeviceGetDeviceID();
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = eventCopy[2];
    *buf = 67109376;
    *v24 = v6;
    *&v24[4] = 2048;
    *&v24[6] = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Actuation(id=%d) was requested (deviceID 0x%llX)", buf, 0x12u);
  }

  actuationRequestHistory = self->_actuationRequestHistory;
  v25[0] = @"WaveformId";
  v8 = [NSNumber numberWithInt:eventCopy[2]];
  v25[1] = @"Strength";
  v26[0] = v8;
  v9 = [NSNumber numberWithInt:eventCopy[3]];
  v26[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(HSTCircularBuffer *)actuationRequestHistory appendItem:v10];

  kdebug_trace();
  actuationManager = [(TrackpadActuatorStage *)self actuationManager];
  v12 = eventCopy[2];
  v13 = eventCopy[4];
  v14 = eventCopy[5];
  actDevice = self->_actDevice;
  actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
  actuationOptions = [(TrackpadActuatorStage *)self actuationOptions];
  LODWORD(v18) = v13;
  LODWORD(v19) = v14;
  v20 = [actuationManager actuateForID:v12 strength:actDevice timeDilation:actuatorLimits device:actuationOptions actuatorLimits:v18 options:v19];

  if (v20)
  {
    MTDeviceGetDeviceID();
    v21 = MTLoggingPlugin();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = eventCopy[2];
      *buf = 67109632;
      *v24 = v22;
      *&v24[4] = 1024;
      *&v24[6] = v20;
      *&v24[10] = 2048;
      *&v24[12] = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Actuation(id=%d) failed to play with error 0x%08X (deviceID 0x%llX)", buf, 0x18u);
    }

LABEL_10:
  }
}

- (void)handlePointerSettings:(id)settings
{
  settingsCopy = settings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = settingsCopy[1];
    -[TrackpadActuatorStage setActuationOptions:](self, "setActuationOptions:", -[TrackpadActuatorStage getActuationOptions:quietClick:](self, "getActuationOptions:quietClick:", [v4 clickStrength], objc_msgSend(v4, "quietClick")));
  }
}

- (void)_handleHSTNotificationEvent:(id)event
{
  eventCopy = event;
  notification = [eventCopy notification];
  if (notification <= 10)
  {
    if (notification != 1 && notification != 8)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(TrackpadActuatorStage *)self _updateHostClickControl];
    goto LABEL_9;
  }

  if (notification == 11)
  {
    goto LABEL_8;
  }

  if (notification == 13)
  {
    self->_actuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  }

LABEL_9:
  v6.receiver = self;
  v6.super_class = TrackpadActuatorStage;
  [(HSStage *)&v6 handleConsume:eventCopy];
}

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = (eventCopy + 2);
  v7 = *(eventCopy + 39);
  if ((v7 & 0x80000000) == 0)
  {
    if (v7 != 14)
    {
      goto LABEL_43;
    }

    if (*v6 != 0x726F746175746341 || *(eventCopy + 22) != 0x7374696D694C726FLL)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (eventCopy[3] == 14 && **v6 == 0x726F746175746341 && *(*v6 + 6) == 0x7374696D694C726FLL)
  {
LABEL_28:
    actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
    actuationManager = v5[5];
    v5[5] = actuatorLimits;
LABEL_42:

    goto LABEL_43;
  }

  v10 = eventCopy[3];
  if (v10 != 25)
  {
    if (v10 != 27)
    {
      goto LABEL_43;
    }

    v11 = *v6;
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *(v11 + 19);
    v16 = v12 == 0x69746375646F7250 && v13 == 0x7461757463416E6FLL;
    v17 = v16 && v14 == 0x6C79616C506E6F69;
    if (!v17 || v15 != 0x7473696C79616C50)
    {
      goto LABEL_43;
    }

    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    productionPlaylistPlist = [actuationManager productionPlaylistPlist];
LABEL_41:
    v30 = v5[5];
    v5[5] = productionPlaylistPlist;

    goto LABEL_42;
  }

  v22 = *v6;
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = *(v22 + 24);
  if (v23 == 0x656469727265764FLL && v24 == 0x6F69746175746341 && v25 == 0x73696C79616C506ELL && v26 == 116)
  {
    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    productionPlaylistPlist = [actuationManager overridePlaylistPlist];
    goto LABEL_41;
  }

LABEL_43:
  v31.receiver = self;
  v31.super_class = TrackpadActuatorStage;
  [(HSStage *)&v31 handleConsume:v5];
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = *(eventCopy + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
      v6 = has_internal_diagnostics;
    }

    else
    {
      v6 = 0;
    }

    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v7 = (eventCopy + 16);
    v8 = eventCopy[39];
    if ((v8 & 0x80000000) == 0)
    {
      if (v8 != 15)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

    v10 = *(eventCopy + 3);
    if (v10 == 15)
    {
      v7 = *v7;
LABEL_29:
      v19 = *v7;
      v20 = *(v7 + 7);
      if (v19 != 0x5765746175746341 || v20 != 0x6D726F6665766157)
      {
        goto LABEL_11;
      }

      actuationManager = [(TrackpadActuatorStage *)self actuationManager];
      actDevice = self->_actDevice;
      actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
      LODWORD(v24) = 1.0;
      LODWORD(v25) = 1.0;
      [actuationManager actuateForDictionary:v5 strength:actDevice timeDilation:actuatorLimits device:0 actuatorLimits:v24 options:v25];

      goto LABEL_10;
    }

    if (v10 != 25)
    {
      goto LABEL_11;
    }

    v11 = *v7;
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *(v11 + 24);
    v16 = v12 == 0x656469727265764FLL && v13 == 0x6F69746175746341;
    v17 = v16 && v14 == 0x73696C79616C506ELL;
    if (!v17 || v15 != 116)
    {
      goto LABEL_11;
    }

    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    [actuationManager setOverridePlaylistPlist:v5];
  }

  else
  {
    actuationManager = v5;
    v5 = 0;
  }

LABEL_10:

LABEL_11:
}

- (void)_handleGetDebugEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[TrackpadActuatorStage _handleGetDebugEvent:]"];
    [v15 handleFailureInFunction:v16 file:@"TrackpadActuatorStage.mm" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  SystemActuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  v20[0] = @"Stage";
  v6 = objc_opt_class();
  v21[0] = NSStringFromClass(v6);
  v20[1] = @"ActuatorLimits";
  v17 = v21[0];
  actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
  dictionary = [actuatorLimits dictionary];
  v21[1] = dictionary;
  v20[2] = @"ActuationOptions";
  v8 = [NSNumber numberWithUnsignedInt:[(TrackpadActuatorStage *)self actuationOptions]];
  v21[2] = v8;
  v20[3] = @"FirmwareHostClickMode";
  v9 = [NSNumber numberWithBool:SystemActuationsEnabled];
  v21[3] = v9;
  v20[4] = @"DisplayState";
  v10 = [NSNumber numberWithUnsignedChar:self->_displayState];
  v21[4] = v10;
  v20[5] = @"ActuationRequests";
  items = [(HSTCircularBuffer *)self->_actuationRequestHistory items];
  v21[5] = items;
  v20[6] = @"ActuationManager";
  actuationManager = [(TrackpadActuatorStage *)self actuationManager];
  debug = [actuationManager debug];
  v21[6] = debug;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

  *(eventCopy + 16) = 1;
  [*(eventCopy + 3) addObject:v14];
  v19.receiver = self;
  v19.super_class = TrackpadActuatorStage;
  [(HSStage *)&v19 handleConsume:eventCopy];
}

- (void)_handleHostStateEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    if ([eventCopy displayOff])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (self->_displayState != v6)
    {
      self->_displayState = v6;
      [(TrackpadActuatorStage *)self _updateHostClickControl];
    }
  }

  else
  {
    v9 = 0;
    MTDeviceGetDeviceID();
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Received nil host state event (deviceID 0x%llX)", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = TrackpadActuatorStage;
  [(HSStage *)&v8 handleConsume:v5];
}

- (BOOL)supportsActuationLimits
{
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"SupportsActuationLimits", kCFAllocatorDefault, 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    bOOLValue = [CFProperty BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_updateHostClickControl
{
  if (self->_displayState == 1)
  {
    MTDeviceGetDeviceID();
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v9 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Handing off host click control (deviceID 0x%llX)", buf, 0xCu);
    }

    v4 = MTActuatorHandoffHostClickControl();
    if (!v4)
    {
      return;
    }

LABEL_9:
    MTDeviceGetDeviceID();
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      displayState = self->_displayState;
      *buf = 16777984;
      LOBYTE(v9[0]) = displayState;
      *(v9 + 1) = 1024;
      *(v9 + 3) = v4;
      *(&v9[1] + 3) = 2048;
      *(&v9[2] + 1) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to update host click control displayState=%hhu status=0x%08X (deviceID 0x%llX)", buf, 0x15u);
    }

    return;
  }

  MTDeviceGetDeviceID();
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Reclaiming host click control (deviceID 0x%llX)", buf, 0xCu);
  }

  v4 = MTActuatorReclaimHostClickControl();
  if (v4)
  {
    goto LABEL_9;
  }
}

- (int)_openActuatorDevice
{
  self->_actDevice = MTDeviceGetMTActuator();
  Service = MTActuatorGetService();
  IORegistryEntryGetRegistryEntryID(Service, &self->_actuatorEntryID);
  v4 = MTActuatorOpen();
  if (v4)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(TrackpadActuatorStage *)v4 _openActuatorDevice];
    }
  }

  self->_actuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  [(TrackpadActuatorStage *)self _updateHostClickControl];
  return v4;
}

- (unsigned)getActuationOptions:(int)options quietClick:(BOOL)click
{
  if (options > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_D5170[options];
  }

  if (click)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

- (id)fetchActuatorLimits
{
  v3 = objc_opt_new();
  if ([(TrackpadActuatorStage *)self supportsActuationLimits])
  {
    Report = MTActuatorGetReport();
    MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v8 = Report;
      v9 = 2048;
      v10 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to fetch device published actuation limits with error 0x%08X (deviceID 0x%llX)", buf, 0x12u);
    }
  }

  return v3;
}

- (void)handleActMatching:(unsigned int)matching
{
  v5 = IOIteratorNext(matching);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      *v11 = 0;
      if (!IORegistryEntryGetRegistryEntryID(v6, v11))
      {
        v7 |= *v11 == self->_actuatorEntryID;
      }

      IOObjectRelease(v6);
      v6 = IOIteratorNext(matching);
    }

    while (v6);
    if (v7)
    {
      goto LABEL_15;
    }
  }

  if (!self->_mtDevice)
  {
LABEL_15:
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TrackpadActuatorStage *)self handleActMatching:v8];
    }
  }

  else
  {
    if (self->_actDevice)
    {
      MTActuatorClose();
      CFRelease(self->_actDevice);
      self->_mtDevice->var4 = 0;
      self->_actDevice = 0;
    }

    [(TrackpadActuatorStage *)self _openActuatorDevice];
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      actuatorEntryID = self->_actuatorEntryID;
      if (self->_actuationsEnabled)
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      *v11 = 134218242;
      *&v11[4] = actuatorEntryID;
      v12 = 2080;
      v13 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Actuator matched - 0x%08llx, actuations enabled : %s", v11, 0x16u);
    }
  }
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    if (MTDeviceSupportsActuation())
    {
      v5 = IONotificationPortCreate(kIOMainPortDefault);
      self->_actuatorMatchedNotifierPortRef = v5;
      if (v5)
      {
        valuePtr = 0;
        MTDeviceGetDeviceID();
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v9 = v8;
        if (v6 && Mutable && v8)
        {
          CFDictionarySetValue(v8, @"Multitouch Actuator ID", v6);
          CFDictionarySetValue(Mutable, @"IOPropertyMatch", v9);
          CFRetain(Mutable);
          if (IOServiceAddMatchingNotification(self->_actuatorMatchedNotifierPortRef, "IOServiceFirstMatch", Mutable, actMatchedCallback, self, &self->_actuatorMatchedIterator))
          {
            v10 = MTLoggingPlugin();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [TrackpadActuatorStage setQueue:v10];
            }
          }

          else
          {
            [(TrackpadActuatorStage *)self handleActMatching:self->_actuatorMatchedIterator];
          }
        }

        IONotificationPortSetDispatchQueue(self->_actuatorMatchedNotifierPortRef, queueCopy);
        if (v6)
        {
          CFRelease(v6);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  else
  {
    dispatch_assert_queue_not_V2(0);
    actuatorMatchedNotifierPortRef = self->_actuatorMatchedNotifierPortRef;
    if (actuatorMatchedNotifierPortRef)
    {
      IONotificationPortDestroy(actuatorMatchedNotifierPortRef);
      self->_actuatorMatchedNotifierPortRef = 0;
    }
  }

  queue = self->_queue;
  self->_queue = queueCopy;
}

- (void)_openActuatorDevice
{
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to open actuator - 0x%08x", v2, 8u);
}

- (void)handleActMatching:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 136);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Skip actuator setup - 0x%08llx", &v3, 0xCu);
}

@end
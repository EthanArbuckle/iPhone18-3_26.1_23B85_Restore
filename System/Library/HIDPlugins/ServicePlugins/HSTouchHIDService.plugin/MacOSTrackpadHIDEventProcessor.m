@interface MacOSTrackpadHIDEventProcessor
- (BOOL)checkForMomentumCancellation:(id)a3;
- (BOOL)checkForMomentumInitiation:(id)a3 triggerEvent:(id)a4;
- (BOOL)shouldDispatchEvent:(id)a3;
- (MacOSTrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)a3 deviceType:(unsigned __int8)a4;
- (id)debugDictionary;
- (id)getMomentumEnableEvent:(id)a3;
- (id)handleHIDEvent:(id)a3;
- (void)_handleMomentumStateEvent:(id)a3;
- (void)appendDeviceInfoTo:(id)a3;
- (void)cancelMomentum;
- (void)handleConsume:(id)a3;
- (void)startMomentumWithSubtype:(int)a3 event:(id)a4;
@end

@implementation MacOSTrackpadHIDEventProcessor

- (MacOSTrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)a3 deviceType:(unsigned __int8)a4
{
  v8.receiver = self;
  v8.super_class = MacOSTrackpadHIDEventProcessor;
  v4 = [(TrackpadHIDEventProcessor *)&v8 initWithDeviceID:a3 deviceType:a4];
  v5 = v4;
  if (v4)
  {
    v4->_momentumActive = 0;
    v4->_momentumDragButton = 0;
    v4->_momentumSubtype = 1;
    v6 = v4;
  }

  return v5;
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(MacOSTrackpadHIDEventProcessor *)self _handleMomentumStateEvent:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:v4];
  }
}

- (id)handleHIDEvent:(id)a3
{
  v47 = a3;
  v4 = objc_opt_new();
  if ([v47 type] != 11)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v56 = "[Error] ";
      v57 = 2080;
      v58 = "";
      v59 = 2080;
      v60 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      v61 = 1024;
      v62 = [v47 type];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if ([v47 integerValueForField:720918] != &dword_0 + 1)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "[Error] ";
      v57 = 2080;
      v58 = "";
      v59 = 2080;
      v60 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected non-collection digitizer event. Eating it.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v5 = [v47 parent];

  if (v5)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "[Error] ";
      v57 = 2080;
      v58 = "";
      v59 = 2080;
      v60 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.", buf, 0x20u);
    }

LABEL_12:

    v7 = v4;
    goto LABEL_13;
  }

  v49 = v4;
  v9 = v47;
  v46 = [v9 conformsToEventType:2];
  v10 = [v9 conformsToEventType:3];
  v11 = [(MacOSTrackpadHIDEventProcessor *)self checkForMomentumCancellation:v9];
  v12 = [v9 children];
  v13 = [v12 copy];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v15)
  {
    goto LABEL_57;
  }

  v17 = 0;
  v18 = *v51;
  v48 = v11 | (v46 | v10) ^ 1;
  *&v16 = 136315906;
  v45 = v16;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v51 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v50 + 1) + 8 * i);
      if ([v20 type] == 17)
      {
        [v20 doubleValueForField:1114112];
        v22 = v21;
        [v20 doubleValueForField:1114113];
        v24 = v23;
        if (![(MacOSTrackpadHIDEventProcessor *)self checkForMomentumInitiation:v9 triggerEvent:v20]&& ![(TrackpadHIDEventProcessor *)self noPointing])
        {
          v25 = [(TrackpadHIDEventProcessor *)self previousButtonState];
          if ([(TrackpadHIDEventProcessor *)self hostClickControl])
          {
            v25 = [v20 integerValueForField:1114115];
          }

          if ([(TrackpadHIDEventProcessor *)self previousButtonState]!= v25)
          {
            v26 = MTLoggingPlugin();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = v45;
              v56 = "[Error] ";
              v57 = 2080;
              v58 = "";
              v59 = 2080;
              v60 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
              v61 = 1024;
              v62 = v46;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Pointer event processed with different button mask before button event(isPresent? %d)", buf, 0x26u);
            }
          }

          v27 = mach_absolute_time();
          v28 = [v20 options];
          v29 = v22;
          v30 = v24;
          v31 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v25 deltaY:v27 buttonMask:@"HostAlgs-Pointer" timestamp:v28 source:v29 options:v30];
          if (v31)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if ([v20 type] == 6)
        {
          [v20 doubleValueForField:393216];
          v33 = v32;
          [v20 doubleValueForField:393217];
          v35 = v34;
          [v20 doubleValueForField:393218];
          v37 = v36;
          IOHIDEventGetPhase();
          if (v17)
          {
            v17 = 1;
            continue;
          }

          v39 = v33;
          v40 = v35;
          v41 = v37;
          v31 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:v39 deltaZ:v40 options:v41];
          if (v31)
          {
            [v49 addObject:v31];
          }

          v42 = [(MacOSTrackpadHIDEventProcessor *)self checkForMomentumInitiation:v9 triggerEvent:v20];
          if (v42)
          {
            v43 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:0.0 deltaZ:0.0 options:0.0];
            if (v43)
            {
              if ([(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& !self->_momentumActive)
              {
                IOHIDEventSetScrollMomentum();
              }

              [v49 addObject:v43];
            }
          }

          if (v42 & 1 | ![(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
          {
            [v9 removeEvent:v20];
          }

          v17 = 1;
          goto LABEL_54;
        }

        if ([v20 type] == 2)
        {
          v38 = [v20 integerValueForField:0x20000];
          if (v48)
          {
            continue;
          }

          v31 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v38 deltaY:mach_absolute_time() buttonMask:@"HostAlgs-Button" timestamp:0.0 source:0.0];
          if (v31)
          {
LABEL_31:
            [v49 addObject:v31];
          }

LABEL_54:

          continue;
        }

        if ([v20 type] == 11 && -[TrackpadHIDEventProcessor deviceType](self, "deviceType") == 2)
        {
          [v9 removeEvent:v20];
        }
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v50 objects:v54 count:16];
  }

  while (v15);
LABEL_57:

  if ([(MacOSTrackpadHIDEventProcessor *)self shouldDispatchEvent:v9])
  {
    [(MacOSTrackpadHIDEventProcessor *)self appendDeviceInfoTo:v9];
    [v49 addObject:v9];
  }

  v44 = v49;

  v4 = v49;
LABEL_13:

  return v4;
}

- (void)_handleMomentumStateEvent:(id)a3
{
  v4 = a3;
  self->_momentumActive = [v4 isMomentumActive];
  v5.receiver = self;
  v5.super_class = MacOSTrackpadHIDEventProcessor;
  [(TrackpadHIDEventProcessor *)&v5 handleConsume:v4];
}

- (BOOL)shouldDispatchEvent:(id)a3
{
  v4 = a3;
  if (![(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:v4])
  {
    v7 = 0;
    goto LABEL_20;
  }

  v5 = [v4 integerValueForField:720903];
  v6 = [v4 integerValueForField:720920];
  if ([(TrackpadHIDEventProcessor *)self deviceType]!= 1)
  {
    if ([(TrackpadHIDEventProcessor *)self deviceType]!= 2 || (v5 & 0x108) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_20;
  }

  if (v5 | v6 & 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 children];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(&v15 + 1) + 8 * i) type]);
        v13 = [&off_112B80 containsObject:v12];

        if (v13)
        {
          v7 = 1;
          goto LABEL_19;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_19:

LABEL_20:
  return v7;
}

- (void)appendDeviceInfoTo:(id)a3
{
  v4 = a3;
  v8 = 0u;
  v9 = 0u;
  v7 = [(TrackpadHIDEventProcessor *)self deviceID];
  LODWORD(v6) = 0;
  v5 = +[HIDEvent vendorDefinedEvent:usagePage:usage:version:data:length:options:](HIDEvent, "vendorDefinedEvent:usagePage:usage:version:data:length:options:", [v4 timestamp], 65280, 6007, 1, &v7, 40, v6);
  if (v5)
  {
    [v4 appendEvent:v5];
  }
}

- (id)getMomentumEnableEvent:(id)a3
{
  v3 = a3;
  if ([v3 conformsToEventType:1])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 children];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 integerValueForField:0x10000];
          v10 = [v8 integerValueForField:65537];
          if ([v8 type] == 1 && v9 == &loc_FF00 && v10 == &dword_0 + 1)
          {
            v5 = v8;
            goto LABEL_19;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkForMomentumInitiation:(id)a3 triggerEvent:(id)a4
{
  v6 = a4;
  v7 = [(MacOSTrackpadHIDEventProcessor *)self getMomentumEnableEvent:a3];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [v7 dataValueForField:65540];
  if ([v8 integerValueForField:65539] < 3 || *v9 != 1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = v9[1];
  if (v11 <= 4 && ((1 << v11) & 0x16) != 0)
  {
    if (v9[2] == 1)
    {
      [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
      [(MacOSTrackpadHIDEventProcessor *)self startMomentumWithSubtype:v11 event:v6];
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)checkForMomentumCancellation:(id)a3
{
  v4 = a3;
  if (self->_momentumActive)
  {
    v5 = [(MacOSTrackpadHIDEventProcessor *)self getMomentumEnableEvent:v4];
    v6 = v5;
    if (v5 && (v7 = [v5 dataValueForField:65540], objc_msgSend(v6, "integerValueForField:", 65539) >= 3) && *v7 == 1 && !v7[2])
    {
      v8 = 0;
      v21 = v7[1];
      if (v21 <= 4 && ((1 << v21) & 0x16) != 0)
      {
        [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 conformsToEventType:17];
    v10 = [v4 conformsToEventType:2];
    v11 = [v4 conformsToEventType:3];
    if (!v8 && ((v9 | v10 | v11) & 1) != 0)
    {
      if (v9)
      {
        if (self->_momentumSubtype != 1 && [v4 integerValueForField:1114115] == self->_momentumDragButton)
        {
          [v4 doubleValueForField:1114112];
          v13 = v12;
          [v4 doubleValueForField:1114113];
          v15 = v14;
          v16 = objc_opt_new();
          v17 = v13;
          v18 = v15;
          *(v16 + 8) = 1;
          *(v16 + 16) = v17;
          *(v16 + 20) = v18;
          v19 = MTLoggingPlugin();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v24 = "";
            v25 = 2080;
            v26 = "";
            v27 = 2080;
            v28 = "[MacOSTrackpadHIDEventProcessor checkForMomentumCancellation:]";
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to decay point / drag momentum", buf, 0x20u);
          }

          v22.receiver = self;
          v22.super_class = MacOSTrackpadHIDEventProcessor;
          [(TrackpadHIDEventProcessor *)&v22 handleConsume:v16];
        }
      }

      else
      {
        [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startMomentumWithSubtype:(int)a3 event:(id)a4
{
  v6 = a4;
  if ([v6 type] == 6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v6 type] == 17)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v8 | v10 && (!v8 || [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled]))
  {
    v11 = objc_opt_new();
    v12 = v11;
    *(v11 + 8) = 0;
    *(v11 + 12) = a3;
    if (v8)
    {
      *(v11 + 24) = 0;
      *(v11 + 16) = [v8 integerValueForField:393216];
      v13 = [v8 integerValueForField:393217];
    }

    else
    {
      *(v11 + 24) = [v10 integerValueForField:1114115];
      *(v12 + 16) = [v10 integerValueForField:1114112];
      v13 = [v10 integerValueForField:1114113];
    }

    *(v12 + 20) = v13;
    self->_momentumDragButton = *(v12 + 24);
    self->_momentumSubtype = a3;
    v14 = objc_opt_new();
    objc_storeStrong(v14 + 2, v12);
    v15 = MTLoggingPlugin();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "";
      v19 = 2080;
      v20 = "";
      v21 = 2080;
      v22 = "[MacOSTrackpadHIDEventProcessor startMomentumWithSubtype:event:]";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to start momentum", buf, 0x20u);
    }

    v16.receiver = self;
    v16.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v16 handleConsume:v14];
  }
}

- (void)cancelMomentum
{
  if (self->_momentumActive)
  {
    v3 = objc_opt_new();
    v3[2] = 2;
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "";
      v8 = 2080;
      v9 = "";
      v10 = 2080;
      v11 = "[MacOSTrackpadHIDEventProcessor cancelMomentum]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to interrupt momentum", buf, 0x20u);
    }

    v5.receiver = self;
    v5.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v5 handleConsume:v3];
  }
}

- (id)debugDictionary
{
  v9.receiver = self;
  v9.super_class = MacOSTrackpadHIDEventProcessor;
  v3 = [(TrackpadHIDEventProcessor *)&v9 debugDictionary];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:self->_momentumActive];
  [v4 setObject:v5 forKeyedSubscript:@"MomentumActive"];

  v6 = [NSNumber numberWithInt:self->_momentumDragButton];
  [v4 setObject:v6 forKeyedSubscript:@"MomentumDragButton"];

  v7 = [NSNumber numberWithUnsignedInt:self->_momentumSubtype];
  [v4 setObject:v7 forKeyedSubscript:@"MomentumSubType"];

  return v4;
}

@end
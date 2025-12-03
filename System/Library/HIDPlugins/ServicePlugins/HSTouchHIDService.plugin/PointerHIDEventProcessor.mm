@interface PointerHIDEventProcessor
- (BOOL)checkForMomentumCancellation:(id)cancellation;
- (BOOL)handleMomentumInitiationForSubtype:(int)subtype event:(id)event;
- (BOOL)shouldDispatchEvent:(id)event;
- (PointerHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type;
- (id)debugDictionary;
- (id)deviceInfoEvent;
- (id)generateMomentumStartEventFrom:(id)from forSubtype:(int)subtype;
- (id)handleChildHIDEvent:(id)event previouslyGeneratedEvent:(id)generatedEvent timestamp:(unint64_t)timestamp momentumInitiationType:(int)type canceledMomentumScroll:(BOOL)scroll;
- (id)handleHIDEvent:(id)event;
- (id)momentumRequestEventFrom:(id)from;
- (id)structureHIDEventFrom:(id)from vendorEvents:(id)events timestamp:(unint64_t)timestamp;
- (id)validChildTypes;
- (int)momentumChangeFrom:(id)from startMomentum:(BOOL)momentum;
- (void)cancelMomentum;
- (void)copyPhaseFrom:(id)from to:(id)to;
- (void)handleConsume:(id)consume;
- (void)handleMomentumStateEvent:(id)event;
@end

@implementation PointerHIDEventProcessor

- (PointerHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type
{
  v8.receiver = self;
  v8.super_class = PointerHIDEventProcessor;
  v4 = [(TrackpadHIDEventProcessor *)&v8 initWithDeviceID:d deviceType:type];
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

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(PointerHIDEventProcessor *)self handleMomentumStateEvent:consumeCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PointerHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:consumeCopy];
  }
}

- (id)handleHIDEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] != 11)
  {
    v7 = MTLoggingPlugin();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v5 = v7;
      goto LABEL_54;
    }

    *buf = 136315906;
    *&buf[4] = "[Error] ";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
    *&buf[32] = 1024;
    *&buf[34] = [eventCopy type];
    v6 = "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.";
    v5 = v7;
    v8 = v7;
    v9 = 38;
    goto LABEL_11;
  }

  if ([eventCopy integerValueForField:720918] != &dword_0 + 1)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
      v6 = "[HID] [MT] %s%s%s Unexpected non-collection digitizer event. Eating it.";
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_54;
  }

  parent = [eventCopy parent];

  if (parent)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
      v6 = "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.";
LABEL_10:
      v8 = v5;
      v9 = 32;
LABEL_11:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, v6, buf, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v39 = eventCopy;
  timestamp = [v39 timestamp];
  v41 = [(PointerHIDEventProcessor *)self momentumChangeFrom:v39 startMomentum:1];
  v40 = [(PointerHIDEventProcessor *)self checkForMomentumCancellation:v39];
  v11 = objc_opt_new();
  v37 = objc_opt_new();
  v36 = objc_opt_new();
  children = [v39 children];
  v13 = [children copy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v14)
  {
    goto LABEL_43;
  }

  v15 = *v44;
  do
  {
    v16 = 0;
    do
    {
      if (*v44 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v43 + 1) + 8 * v16);
      if ([v17 type] != 11 || -[TrackpadHIDEventProcessor deviceType](self, "deviceType") != 1)
      {
        [v39 removeEvent:v17];
      }

      children2 = [v17 children];
      if (-[NSObject count](children2, "count") && [v17 type] != 11)
      {
        v26 = [v17 type] == 23;

        if (v26)
        {
          goto LABEL_25;
        }

        children2 = MTLoggingPlugin();
        if (os_log_type_enabled(children2, OS_LOG_TYPE_ERROR))
        {
          type = [v17 type];
          children3 = [v17 children];
          *buf = 136316162;
          *&buf[4] = "[Error] ";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
          *&buf[32] = 1024;
          *&buf[34] = type;
          *&buf[38] = 2112;
          *&buf[40] = children3;
          _os_log_impl(&dword_0, children2, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u %@", buf, 0x30u);
        }
      }

LABEL_25:
      v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
      v20 = [v11 objectForKey:v19];

      v21 = [(PointerHIDEventProcessor *)self handleChildHIDEvent:v17 previouslyGeneratedEvent:v20 timestamp:timestamp momentumInitiationType:v41 canceledMomentumScroll:v40];
      v22 = [v11 objectForKey:&off_112038];
      if (v22)
      {
        v23 = [v21 type] == 17;

        if (v23)
        {
          [v36 addObject:v21];
LABEL_31:

          goto LABEL_32;
        }
      }

      if ([v17 type] == 1)
      {
        v24 = [v17 copy];
        [v37 addObject:v24];
LABEL_30:

        goto LABEL_31;
      }

      if (v21)
      {
        if (v20)
        {
          v24 = MTLoggingPlugin();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            type2 = [v17 type];
            *buf = 136315906;
            *&buf[4] = "[Error] ";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
            *&buf[32] = 1024;
            *&buf[34] = type2;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Generated an additional child of event type %u. Eating it", buf, 0x26u);
          }
        }

        else
        {
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
          [v11 setObject:v21 forKeyedSubscript:v24];
        }

        goto LABEL_30;
      }

LABEL_32:

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    v14 = v29;
  }

  while (v29);
LABEL_43:

  v30 = [v11 objectForKeyedSubscript:&off_112050];
  v31 = [(PointerHIDEventProcessor *)self generateMomentumStartEventFrom:v30 forSubtype:v41];

  if (v31)
  {
    [v36 addObject:v31];
  }

  [v11 setObject:v39 forKeyedSubscript:&off_112068];
  v32 = [(PointerHIDEventProcessor *)self structureHIDEventFrom:v11 vendorEvents:v37 timestamp:timestamp];
  if (!v32)
  {
    memset(buf, 170, sizeof(buf));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", buf);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleHIDEvent:];
    }

    goto LABEL_52;
  }

  if (![(PointerHIDEventProcessor *)self shouldDispatchEvent:v32])
  {
LABEL_52:
    v10 = 0;
    goto LABEL_53;
  }

  deviceInfoEvent = [(PointerHIDEventProcessor *)self deviceInfoEvent];
  if (deviceInfoEvent)
  {
    [v32 appendEvent:deviceInfoEvent];
  }

  v10 = objc_opt_new();
  [v10 addObject:v32];
  [v10 addObjectsFromArray:v36];

LABEL_53:
  v5 = v39;
LABEL_54:

  return v10;
}

- (void)handleMomentumStateEvent:(id)event
{
  eventCopy = event;
  isMomentumActive = [eventCopy isMomentumActive];
  if (self)
  {
    self->_momentumActive = isMomentumActive;
  }

  v6.receiver = self;
  v6.super_class = PointerHIDEventProcessor;
  [(TrackpadHIDEventProcessor *)&v6 handleConsume:eventCopy];
}

- (id)handleChildHIDEvent:(id)event previouslyGeneratedEvent:(id)generatedEvent timestamp:(unint64_t)timestamp momentumInitiationType:(int)type canceledMomentumScroll:(BOOL)scroll
{
  v8 = *&type;
  eventCopy = event;
  generatedEventCopy = generatedEvent;
  children = [eventCopy children];
  if ([children count] && objc_msgSend(eventCopy, "type") != 11)
  {
    type = [eventCopy type];

    if (type != 23)
    {
      v26 = MTLoggingPlugin();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        type2 = [eventCopy type];
        children2 = [eventCopy children];
        LODWORD(v49[0]) = 136316162;
        *(v49 + 4) = "[Error] ";
        WORD2(v49[1]) = 2080;
        *(&v49[1] + 6) = "";
        HIWORD(v49[2]) = 2080;
        v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
        LOWORD(v49[4]) = 1024;
        *(&v49[4] + 2) = type2;
        HIWORD(v49[4]) = 2112;
        v49[5] = children2;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u %@", v49, 0x30u);
      }
    }
  }

  else
  {
  }

  if ([eventCopy type] == 11)
  {
    goto LABEL_5;
  }

  if ([eventCopy type] == 17)
  {
    if (![(PointerHIDEventProcessor *)self handleMomentumInitiationForSubtype:v8 event:eventCopy])
    {
      noPointing = [(TrackpadHIDEventProcessor *)self noPointing];
      v18 = generatedEventCopy ? 1 : noPointing;
      if ((v18 & 1) == 0)
      {
        [eventCopy doubleValueForField:1114112];
        v20 = v19;
        [eventCopy doubleValueForField:1114113];
        v22 = v21;
        previousButtonState = [(TrackpadHIDEventProcessor *)self previousButtonState];
        if ([(TrackpadHIDEventProcessor *)self hostClickControl])
        {
          previousButtonState = [eventCopy integerValueForField:1114115];
        }

        v24 = -[TrackpadHIDEventProcessor createPointingEventWithDeltaX:deltaY:buttonMask:timestamp:source:options:](self, "createPointingEventWithDeltaX:deltaY:buttonMask:timestamp:source:options:", previousButtonState, timestamp, @"HostAlgs-Pointer", [eventCopy options], v20, v22);
        goto LABEL_18;
      }
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if ([eventCopy type] != 2)
  {
    if ([eventCopy type] == 6)
    {
      if (![(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
      {
        goto LABEL_5;
      }

      [eventCopy doubleValueForField:393216];
      v32 = v31;
      [eventCopy doubleValueForField:393217];
      v34 = v33;
      [eventCopy doubleValueForField:393218];
      if (generatedEventCopy)
      {
        v36 = MTLoggingPlugin();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v49[0]) = 136315650;
          *(v49 + 4) = "[Debug] ";
          WORD2(v49[1]) = 2080;
          *(&v49[1] + 6) = "";
          HIWORD(v49[2]) = 2080;
          v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", v49, 0x20u);
        }

        [(TrackpadHIDEventProcessor *)self mergeScrollEvent:generatedEventCopy with:eventCopy];
        goto LABEL_5;
      }

      v24 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:v32 deltaZ:v34 options:v35];
LABEL_18:
      v15 = v24;
      goto LABEL_6;
    }

    if ([eventCopy type] == 7)
    {
      if (generatedEventCopy)
      {
        ScaleEvent = MTLoggingPlugin();
        if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        LODWORD(v49[0]) = 136315650;
        *(v49 + 4) = "[Error] ";
        WORD2(v49[1]) = 2080;
        *(&v49[1] + 6) = "";
        HIWORD(v49[2]) = 2080;
        v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
        v37 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
        goto LABEL_53;
      }

      [eventCopy doubleValueForField:458752];
      [eventCopy doubleValueForField:458753];
      [eventCopy doubleValueForField:458754];
      [eventCopy options];
      ScaleEvent = IOHIDEventCreateScaleEvent();
      if (!ScaleEvent)
      {
        memset(v49, 170, 0x400uLL);
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
        }

        goto LABEL_81;
      }

LABEL_79:
      [(PointerHIDEventProcessor *)self copyPhaseFrom:eventCopy to:ScaleEvent];
      goto LABEL_80;
    }

    if ([eventCopy type] == 5)
    {
      if (!generatedEventCopy)
      {
        [eventCopy doubleValueForField:327680];
        [eventCopy doubleValueForField:327681];
        [eventCopy doubleValueForField:327682];
        [eventCopy options];
        ScaleEvent = IOHIDEventCreateRotationEvent();
        if (!ScaleEvent)
        {
          memset(v49, 170, 0x400uLL);
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
          }

          goto LABEL_81;
        }

        goto LABEL_79;
      }

      ScaleEvent = MTLoggingPlugin();
      if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(v49[0]) = 136315650;
      *(v49 + 4) = "[Error] ";
      WORD2(v49[1]) = 2080;
      *(&v49[1] + 6) = "";
      HIWORD(v49[2]) = 2080;
      v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
      v37 = "[HID] [MT] %s%s%s Unexpected multiple rotation events. Eating the latest.";
    }

    else
    {
      if ([eventCopy type] != 4)
      {
        if ([eventCopy type] == 41 && _os_feature_enabled_impl())
        {
          if (generatedEventCopy)
          {
            ScaleEvent = MTLoggingPlugin();
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            LODWORD(v49[0]) = 136315650;
            *(v49 + 4) = "[Error] ";
            WORD2(v49[1]) = 2080;
            *(&v49[1] + 6) = "";
            HIWORD(v49[2]) = 2080;
            v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            v37 = "[HID] [MT] %s%s%s Unexpected multiple force stage events. Eating the latest.";
            goto LABEL_53;
          }
        }

        else
        {
          if ([eventCopy type] != 1)
          {
            ScaleEvent = MTLoggingPlugin();
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            type3 = [eventCopy type];
            LODWORD(v49[0]) = 136315906;
            *(v49 + 4) = "[Error] ";
            WORD2(v49[1]) = 2080;
            *(&v49[1] + 6) = "";
            HIWORD(v49[2]) = 2080;
            v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            LOWORD(v49[4]) = 1024;
            *(&v49[4] + 2) = type3;
            v37 = "[HID] [MT] %s%s%s Unexpected child event type %u. Eating it";
            v42 = ScaleEvent;
            v43 = 38;
            goto LABEL_54;
          }

          v44 = [eventCopy integerValueForField:0x10000];
          v45 = [eventCopy integerValueForField:65537];
          v46 = v45;
          if (v44 != &loc_FF00 || v45 != &dword_10 + 1 || (_os_feature_enabled_impl() & 1) != 0)
          {
            ScaleEvent = MTLoggingPlugin();
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            LODWORD(v49[0]) = 136316162;
            *(v49 + 4) = "[Error] ";
            WORD2(v49[1]) = 2080;
            *(&v49[1] + 6) = "";
            HIWORD(v49[2]) = 2080;
            v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            LOWORD(v49[4]) = 2048;
            *(&v49[4] + 2) = v44;
            WORD1(v49[5]) = 2048;
            *(&v49[5] + 4) = v46;
            v37 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
            v42 = ScaleEvent;
            v43 = 52;
            goto LABEL_54;
          }
        }

        v24 = [eventCopy copy];
        goto LABEL_18;
      }

      if (!generatedEventCopy)
      {
        [eventCopy doubleValueForField:0x40000];
        [eventCopy doubleValueForField:262145];
        [eventCopy doubleValueForField:262146];
        [eventCopy options];
        ScaleEvent = IOHIDEventCreateTranslationEvent();
        if (!ScaleEvent)
        {
          memset(v49, 170, 0x400uLL);
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
          }

          goto LABEL_81;
        }

        goto LABEL_79;
      }

      ScaleEvent = MTLoggingPlugin();
      if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(v49[0]) = 136315650;
      *(v49 + 4) = "[Error] ";
      WORD2(v49[1]) = 2080;
      *(&v49[1] + 6) = "";
      HIWORD(v49[2]) = 2080;
      v49[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
      v37 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
    }

LABEL_53:
    v42 = ScaleEvent;
    v43 = 32;
LABEL_54:
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, v37, v49, v43);
    goto LABEL_55;
  }

  if (scroll)
  {
    goto LABEL_5;
  }

  v29 = [eventCopy integerValueForField:0x20000];
  if (generatedEventCopy)
  {
    ScaleEvent = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v29 deltaY:mach_absolute_time() buttonMask:@"HostAlgs-Button" timestamp:0.0 source:0.0];
    if (!ScaleEvent)
    {
      memset(v49, 170, 0x400uLL);
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
      }

      goto LABEL_81;
    }

LABEL_80:
    v47 = ScaleEvent;
LABEL_81:
    v15 = ScaleEvent;
    goto LABEL_82;
  }

  v38 = [(TrackpadHIDEventProcessor *)self updateButtonMask:v29 source:@"HostAlgs-Button"];
  v39 = +[HIDEvent buttonEvent:buttonMask:options:](HIDEvent, "buttonEvent:buttonMask:options:", timestamp, v38, [eventCopy options]);
  ScaleEvent = v39;
  if (v39)
  {
    if ((v38 & (v38 - 1)) == 0)
    {
      v40 = __clz(__rbit32(v38));
      if (v38)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = 1;
      }

      [v39 setIntegerValue:v41 forField:131073];
      [ScaleEvent setIntegerValue:v38 != 0 forField:131076];
      v15 = ScaleEvent;
      goto LABEL_82;
    }

    memset(v49, 170, 0x400uLL);
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
    }
  }

  else
  {
    memset(v49, 170, 0x400uLL);
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v49);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
    }
  }

LABEL_55:
  v15 = 0;
LABEL_82:

LABEL_6:

  return v15;
}

- (id)structureHIDEventFrom:(id)from vendorEvents:(id)events timestamp:(unint64_t)timestamp
{
  fromCopy = from;
  eventsCopy = events;
  v10 = [fromCopy objectForKeyedSubscript:&off_112038];
  if (v10 || ([HIDEvent pointerEvent:timestamp x:[(TrackpadHIDEventProcessor *)self previousButtonState] y:0 z:0.0 buttonMask:0.0 options:0.0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [fromCopy objectForKeyedSubscript:&off_112080];
    v12 = v11;
    if (v11)
    {
      [v10 setIntegerValue:objc_msgSend(v11 forField:{"integerValueForField:", 0x20000), 1114115}];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allValues = [fromCopy allValues];
    v14 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([v17 type] != 17)
          {
            [v17 setTimestamp:timestamp];
            [v10 appendEvent:v17];
          }
        }

        v14 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v14);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = eventsCopy;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v10 appendEvent:{*(*(&v24 + 1) + 8 * j), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    v22 = v10;
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor structureHIDEventFrom:vendorEvents:timestamp:];
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)shouldDispatchEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && [eventCopy type] == 17 && (objc_msgSend(v5, "parent"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    [v5 doubleValueForField:1114112];
    v10 = v9;
    [v5 doubleValueForField:1114113];
    v12 = v10;
    LOBYTE(v7) = 1;
    if (v12 == 0.0)
    {
      v13 = v11;
      if (v13 == 0.0)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        children = [v5 children];
        v7 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          v15 = *v23;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(children);
              }

              v17 = *(*(&v22 + 1) + 8 * i);
              if ([(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:v17])
              {
                v18 = [v17 integerValueForField:720903];
                if ([(TrackpadHIDEventProcessor *)self deviceType]== 1)
                {
                  if (v18 | [v17 integerValueForField:720920] & 3)
                  {
                    goto LABEL_24;
                  }
                }

                else if ([(TrackpadHIDEventProcessor *)self deviceType]== 2 && (v18 & 0x108) != 0)
                {
LABEL_24:
                  LOBYTE(v7) = 1;
                  goto LABEL_25;
                }
              }

              else
              {
                validChildTypes = [(PointerHIDEventProcessor *)self validChildTypes];
                v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
                v21 = [validChildTypes containsObject:v20];

                if (v21)
                {
                  goto LABEL_24;
                }
              }
            }

            v7 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)deviceInfoEvent
{
  v6 = 0u;
  v7 = 0u;
  deviceID = [(TrackpadHIDEventProcessor *)self deviceID];
  LODWORD(v4) = 0;
  v2 = [HIDEvent vendorDefinedEvent:mach_absolute_time() usagePage:65280 usage:6007 version:1 data:&deviceID length:40 options:v4];

  return v2;
}

- (id)momentumRequestEventFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy conformsToEventType:1])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    children = [fromCopy children];
    v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(children);
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

        v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (int)momentumChangeFrom:(id)from startMomentum:(BOOL)momentum
{
  momentumCopy = momentum;
  v5 = [(PointerHIDEventProcessor *)self momentumRequestEventFrom:from];
  v6 = v5;
  if (v5 && (v7 = [v5 dataValueForField:65540], objc_msgSend(v6, "integerValueForField:", 65539) >= 3) && *v7 == 1 && v7[2] == momentumCopy && (v7[1] - 1) < 4u)
  {
    v8 = dword_D51F0[(v7[1] - 1)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)handleMomentumInitiationForSubtype:(int)subtype event:(id)event
{
  eventCopy = event;
  if (subtype)
  {
    [(PointerHIDEventProcessor *)self cancelMomentum];
    if ([eventCopy type] == 6)
    {
      v7 = eventCopy;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if ([eventCopy type] == 17)
    {
      v9 = eventCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v8 | v10)
    {
      if (!v8 || [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
      {
        v11 = subtype != 1 || v8 == 0;
        v12 = !v11;
        if (v11 && v10)
        {
          if (subtype == 2 || subtype == 4)
          {
LABEL_23:
            v13 = objc_opt_new();
            v14 = v13;
            v13[2] = 0.0;
            *(v13 + 3) = subtype;
            if (v8)
            {
              v13[6] = 0.0;
              [v8 doubleValueForField:393216];
              *&v15 = v15;
              v14[4] = *&v15;
              [v8 doubleValueForField:393217];
              v17 = v16;
            }

            else
            {
              *(v13 + 6) = [v10 integerValueForField:1114115];
              v14[4] = [v10 integerValueForField:1114112];
              v17 = [v10 integerValueForField:1114113];
            }

            v14[5] = v17;
            if (self)
            {
              self->_momentumDragButton = v14[6];
              self->_momentumSubtype = subtype;
            }

            v21 = objc_opt_new();
            objc_storeStrong(v21 + 2, v14);
            v22 = MTLoggingPlugin();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:]";
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to start momentum", buf, 0x20u);
            }

            v23.receiver = self;
            v23.super_class = PointerHIDEventProcessor;
            [(TrackpadHIDEventProcessor *)&v23 handleConsume:v21];

            v18 = 1;
            goto LABEL_30;
          }
        }

        else if (v12)
        {
          goto LABEL_23;
        }

        memset(buf, 170, 0x400uLL);
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", buf);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:];
        }
      }
    }

    else
    {
      v19 = MTLoggingPlugin();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[Error] ";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        *&buf[24] = "[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:]";
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Attempted to start momentum without a pointer or scroll event", buf, 0x20u);
      }
    }

    v18 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (BOOL)checkForMomentumCancellation:(id)cancellation
{
  cancellationCopy = cancellation;
  if (self && self->_momentumActive)
  {
    v5 = [(PointerHIDEventProcessor *)self momentumChangeFrom:cancellationCopy startMomentum:0];
    v6 = v5 != 0;
    if (v5)
    {
      [(PointerHIDEventProcessor *)self cancelMomentum];
    }

    v7 = [cancellationCopy conformsToEventType:17];
    v8 = [cancellationCopy conformsToEventType:2];
    v9 = [cancellationCopy conformsToEventType:3];
    if (!v5 && ((v7 | v8 | v9) & 1) != 0)
    {
      if (v7)
      {
        if (self->_momentumSubtype != 1 && [cancellationCopy integerValueForField:1114115] == self->_momentumDragButton)
        {
          [cancellationCopy doubleValueForField:1114112];
          v11 = v10;
          [cancellationCopy doubleValueForField:1114113];
          v13 = v12;
          v14 = objc_opt_new();
          v15 = v11;
          v16 = v13;
          *(v14 + 8) = 1;
          *(v14 + 16) = v15;
          *(v14 + 20) = v16;
          v17 = MTLoggingPlugin();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v21 = "";
            v22 = 2080;
            v23 = "";
            v24 = 2080;
            v25 = "[PointerHIDEventProcessor checkForMomentumCancellation:]";
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to decay point / drag momentum", buf, 0x20u);
          }

          v19.receiver = self;
          v19.super_class = PointerHIDEventProcessor;
          [(TrackpadHIDEventProcessor *)&v19 handleConsume:v14];
        }
      }

      else
      {
        [(PointerHIDEventProcessor *)self cancelMomentum];
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancelMomentum
{
  if (self && self->_momentumActive)
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
      v11 = "[PointerHIDEventProcessor cancelMomentum]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to interrupt momentum", buf, 0x20u);
    }

    v5.receiver = self;
    v5.super_class = PointerHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v5 handleConsume:v3];
  }
}

- (id)generateMomentumStartEventFrom:(id)from forSubtype:(int)subtype
{
  v4 = *&subtype;
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy && [fromCopy type] == 6 && -[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:](self, "handleMomentumInitiationForSubtype:event:", v4, v7))
  {
    v8 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:0.0 deltaZ:0.0 options:0.0];
    if (v8)
    {
      if ([(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& (!self || !self->_momentumActive))
      {
        IOHIDEventSetScrollMomentum();
      }

      v9 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)copyPhaseFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
}

- (id)validChildTypes
{
  if ([PointerHIDEventProcessor validChildTypes]::once != -1)
  {
    [PointerHIDEventProcessor validChildTypes];
  }

  v3 = [PointerHIDEventProcessor validChildTypes]::validChildTypes;

  return v3;
}

void __43__PointerHIDEventProcessor_validChildTypes__block_invoke(id a1)
{
  v1 = [PointerHIDEventProcessor validChildTypes]::validChildTypes;
  [PointerHIDEventProcessor validChildTypes]::validChildTypes = &off_112AD8;
}

- (id)debugDictionary
{
  v12.receiver = self;
  v12.super_class = PointerHIDEventProcessor;
  debugDictionary = [(TrackpadHIDEventProcessor *)&v12 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  if (self)
  {
    momentumActive = self->_momentumActive;
  }

  else
  {
    momentumActive = 0;
  }

  v6 = [NSNumber numberWithBool:momentumActive];
  [v4 setObject:v6 forKeyedSubscript:@"MomentumActive"];

  if (self)
  {
    momentumDragButton = self->_momentumDragButton;
  }

  else
  {
    momentumDragButton = 0;
  }

  v8 = [NSNumber numberWithUnsignedInt:momentumDragButton];
  [v4 setObject:v8 forKeyedSubscript:@"MomentumDragButton"];

  if (self)
  {
    momentumSubtype = self->_momentumSubtype;
  }

  else
  {
    momentumSubtype = 0;
  }

  v10 = [NSNumber numberWithUnsignedInt:momentumSubtype];
  [v4 setObject:v10 forKeyedSubscript:@"MomentumSubType"];

  return v4;
}

- (void)handleHIDEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)structureHIDEventFrom:vendorEvents:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleMomentumInitiationForSubtype:event:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end
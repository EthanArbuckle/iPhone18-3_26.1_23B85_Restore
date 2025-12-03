@interface EmbeddedTrackpadHIDEventProcessor
- (BOOL)shouldDispatchEvent:(id)event;
- (id)handleHIDEvent:(id)event;
- (void)copyPhaseFrom:(id)from to:(id)to;
@end

@implementation EmbeddedTrackpadHIDEventProcessor

- (id)handleHIDEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  if ([eventCopy type] != 11)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      *&buf[32] = 1024;
      *&buf[34] = [eventCopy type];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if ([eventCopy integerValueForField:720918] != &dword_0 + 1)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected digitizer event. Eating it.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  parent = [eventCopy parent];

  if (parent)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.", buf, 0x20u);
    }

LABEL_12:

    v7 = v4;
    goto LABEL_13;
  }

  v71 = objc_opt_new();
  v74 = [HIDEvent pointerEvent:mach_absolute_time() x:[(TrackpadHIDEventProcessor *)self previousButtonState] y:0 z:0.0 buttonMask:0.0 options:0.0];
  if (v74)
  {
    v75 = eventCopy;
    children = [v75 children];
    v10 = [children copy];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
    if (v11)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v72 = 0;
      v13 = 0;
      v73 = 0;
      v14 = *v83;
      *&v12 = 136316162;
      v67 = v12;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v83 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v82 + 1) + 8 * v15);
          if ([v16 type] != 11)
          {
            if ([v16 type] == 17)
            {
              if (![(TrackpadHIDEventProcessor *)self noPointing])
              {
                [v16 doubleValueForField:1114112];
                v18 = v17;
                [v16 doubleValueForField:1114113];
                if (v73)
                {
                  v20 = MTLoggingPlugin();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "[Error] ";
                    *&buf[12] = 2080;
                    *&buf[14] = "";
                    *&buf[22] = 2080;
                    *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected multiple pointer events. Eating it.", buf, 0x20u);
                  }

                  v73 = 1;
                  goto LABEL_88;
                }

                v28 = v19;
                v29 = v18;
                [v74 setDoubleValue:1114112 forField:v29];
                v30 = v28;
                [v74 setDoubleValue:1114113 forField:v30];
                v73 = 1;
              }

LABEL_89:
              children2 = [v16 children];
              v56 = [children2 count] == 0;

              if (!v56)
              {
                v57 = MTLoggingPlugin();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  type = [v16 type];
                  *buf = 136315906;
                  *&buf[4] = "[Error] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  *&buf[32] = 1024;
                  *&buf[34] = type;
                  _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u. Eating them", buf, 0x26u);
                }
              }

              [v75 removeEvent:v16];
              goto LABEL_94;
            }

            if ([v16 type] == 2)
            {
              v21 = [v16 integerValueForField:0x20000];
              v22 = v21;
              if (v13)
              {
                if ([(TrackpadHIDEventProcessor *)self previousButtonState]== v21)
                {
                  memset(buf, 170, 0x400uLL);
                  v23 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *v87 = 136315906;
                    v88 = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                    v89 = 2080;
                    v90 = v23;
                    v91 = 2048;
                    v92 = 118;
                    v93 = 2080;
                    v94 = "buttonMask != self.previousButtonState";
                    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v87, 0x2Au);
                  }
                }

                v20 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v22 deltaY:mach_absolute_time() buttonMask:@"Host-Algs" timestamp:0.0 source:0.0];
                if (!v20)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  goto LABEL_141;
                }

                [v71 addObject:v20];
LABEL_88:
              }

              else
              {
                [v74 setIntegerValue:v21 forField:1114115];
                [(TrackpadHIDEventProcessor *)self logButtonState:v22 fromSource:@"Host-Algs"];
                [(TrackpadHIDEventProcessor *)self setPreviousButtonState:v22];
                v31 = +[HIDEvent buttonEvent:buttonMask:options:](HIDEvent, "buttonEvent:buttonMask:options:", mach_absolute_time(), v22, [v16 options]);
                v32 = v31;
                if (!v31)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v32 = 0;
                  goto LABEL_142;
                }

                if ((v22 & (v22 - 1)) != 0)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  goto LABEL_142;
                }

                v33 = __clz(__rbit32(v22));
                if (v22)
                {
                  v34 = v33 + 1;
                }

                else
                {
                  v34 = 1;
                }

                [v31 setIntegerValue:v34 forField:131073];
                [v32 setIntegerValue:v22 != 0 forField:131076];
                [v74 appendEvent:v32];
                v13 = v32;
              }

              goto LABEL_89;
            }

            if ([v16 type] == 6)
            {
              if (v72)
              {
                v24 = MTLoggingPlugin();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "[Debug] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", buf, 0x20u);
                }

                [(TrackpadHIDEventProcessor *)self mergeScrollEvent:v72 with:v16];
              }

              else
              {
                [v16 doubleValueForField:393216];
                v36 = v35;
                [v16 doubleValueForField:393217];
                v38 = v37;
                [v16 doubleValueForField:393218];
                v40 = v39;
                options = [v16 options];
                v42 = v36;
                v43 = v40;
                v44 = v43;
                v45 = v38;
                v46 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:options deltaY:v42 deltaZ:v45 options:v44];
                if (!v46)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v72 = 0;
                  goto LABEL_141;
                }

                [v74 appendEvent:v46];
                v72 = v46;
              }

              goto LABEL_89;
            }

            if ([v16 type] == 7)
            {
              if (!v70)
              {
                [v16 doubleValueForField:458752];
                [v16 doubleValueForField:458753];
                [v16 doubleValueForField:458754];
                mach_absolute_time();
                [v16 options];
                ScaleEvent = IOHIDEventCreateScaleEvent();
                if (!ScaleEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v70 = 0;
                  goto LABEL_141;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v16 to:ScaleEvent];
                [v74 appendEvent:ScaleEvent];
                v70 = ScaleEvent;
                goto LABEL_89;
              }

              v20 = MTLoggingPlugin();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v25 = v20;
              v26 = OS_LOG_TYPE_ERROR;
              v27 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
LABEL_86:
              v54 = 32;
LABEL_87:
              _os_log_impl(&dword_0, v25, v26, v27, buf, v54);
              goto LABEL_88;
            }

            if ([v16 type] == 5)
            {
              if (!v69)
              {
                [v16 doubleValueForField:327680];
                [v16 doubleValueForField:327681];
                [v16 doubleValueForField:327682];
                mach_absolute_time();
                [v16 options];
                RotationEvent = IOHIDEventCreateRotationEvent();
                if (!RotationEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v69 = 0;
                  goto LABEL_141;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v16 to:RotationEvent];
                [v74 appendEvent:RotationEvent];
                v69 = RotationEvent;
                goto LABEL_89;
              }

              v20 = MTLoggingPlugin();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v25 = v20;
              v26 = OS_LOG_TYPE_ERROR;
              v27 = "[HID] [MT] %s%s%s Unexpected multiple rotate events. Eating the latest.";
              goto LABEL_86;
            }

            if ([v16 type] == 4)
            {
              if (!v68)
              {
                [v16 doubleValueForField:0x40000];
                [v16 doubleValueForField:262145];
                [v16 doubleValueForField:262146];
                mach_absolute_time();
                [v16 options];
                TranslationEvent = IOHIDEventCreateTranslationEvent();
                if (!TranslationEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v68 = 0;
LABEL_141:
                  v32 = v13;
LABEL_142:

                  v7 = 0;
                  goto LABEL_143;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v16 to:TranslationEvent];
                [v74 appendEvent:TranslationEvent];
                v68 = TranslationEvent;
                goto LABEL_89;
              }

              v20 = MTLoggingPlugin();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v25 = v20;
              v26 = OS_LOG_TYPE_ERROR;
              v27 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
              goto LABEL_86;
            }

            if ([v16 type] == 41 && _os_feature_enabled_impl())
            {
LABEL_66:
              v20 = [v16 copy];
              [v74 appendEvent:v20];
              goto LABEL_88;
            }

            if ([v16 type] != 1)
            {
              if ([v16 type] == 32)
              {
                v20 = MTLoggingPlugin();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_88;
                }

                *buf = 136315650;
                *&buf[4] = "[Debug] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                v25 = v20;
                v26 = OS_LOG_TYPE_DEBUG;
                v27 = "[HID] [MT] %s%s%s Force event. Ignoring.";
                goto LABEL_86;
              }

              if ([v16 type] == 3)
              {
                v20 = MTLoggingPlugin();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                IntegerValue = IOHIDEventGetIntegerValue();
                *buf = 136315906;
                *&buf[4] = "[Error] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                *&buf[32] = 2048;
                *&buf[34] = IntegerValue;
                v25 = v20;
                v26 = OS_LOG_TYPE_ERROR;
                v27 = "[HID] [MT] %s%s%s Unexpected keyboard child event with usage %lu. Eating it";
              }

              else
              {
                if ([v16 type] != 24)
                {
                  v20 = MTLoggingPlugin();
                  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_88;
                  }

                  type2 = [v16 type];
                  *buf = 136315906;
                  *&buf[4] = "[Error] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  *&buf[32] = 1024;
                  *&buf[34] = type2;
                  v25 = v20;
                  v26 = OS_LOG_TYPE_ERROR;
                  v27 = "[HID] [MT] %s%s%s Unexpected child event type: %u. Eating it";
                  v54 = 38;
                  goto LABEL_87;
                }

                v20 = MTLoggingPlugin();
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                v59 = IOHIDEventGetIntegerValue();
                *buf = 136315906;
                *&buf[4] = "[Error] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                *&buf[32] = 2048;
                *&buf[34] = v59;
                v25 = v20;
                v26 = OS_LOG_TYPE_ERROR;
                v27 = "[HID] [MT] %s%s%s Unexpected hotkey child event with value %lu. Eating it";
              }

              v54 = 42;
              goto LABEL_87;
            }

            v49 = [v16 integerValueForField:0x10000];
            v50 = [v16 integerValueForField:65537];
            v51 = v50;
            if (v49 == &loc_FF00 && v50 == &dword_10 + 1)
            {
              if ((_os_feature_enabled_impl() & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            else if (v49 == &loc_FF00 && v50 == &dword_0 + 1)
            {
              v20 = MTLoggingPlugin();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Debug] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v25 = v20;
              v26 = OS_LOG_TYPE_DEBUG;
              v27 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
              goto LABEL_86;
            }

            v20 = MTLoggingPlugin();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }

            *buf = v67;
            *&buf[4] = "[Error] ";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
            *&buf[32] = 2048;
            *&buf[34] = v49;
            *&buf[42] = 2048;
            *&buf[44] = v51;
            v25 = v20;
            v26 = OS_LOG_TYPE_ERROR;
            v27 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
            v54 = 52;
            goto LABEL_87;
          }

LABEL_94:
          v15 = v15 + 1;
        }

        while (v11 != v15);
        v61 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
        v11 = v61;
        if (!v61)
        {
          goto LABEL_110;
        }
      }
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v72 = 0;
    v13 = 0;
LABEL_110:

    [v74 appendEvent:v75];
    if ([(EmbeddedTrackpadHIDEventProcessor *)self shouldDispatchEvent:v74])
    {
      [v4 addObject:v74];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v63 = v71;
      v64 = [v63 countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v64)
      {
        v65 = *v79;
        do
        {
          for (i = 0; i != v64; i = i + 1)
          {
            if (*v79 != v65)
            {
              objc_enumerationMutation(v63);
            }

            if (*(*(&v78 + 1) + 8 * i))
            {
              [v4 addObject:?];
            }
          }

          v64 = [v63 countByEnumeratingWithState:&v78 objects:v86 count:16];
        }

        while (v64);
      }
    }

    v7 = [v4 copy];
    v32 = v13;
LABEL_143:

    v62 = v75;
  }

  else
  {
    v62 = MTLoggingPlugin();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Failed to create pointer event. Bailing.", buf, 0x20u);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v72 = 0;
    v32 = 0;
    v7 = 0;
  }

LABEL_13:

  return v7;
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
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        children = [v5 children];
        v7 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          v15 = *v22;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(children);
              }

              v17 = *(*(&v21 + 1) + 8 * i);
              if ([(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:v17])
              {
                v18 = [v17 integerValueForField:720903];
                if (v18 | [v17 integerValueForField:720920] & 3)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
                v20 = [&off_112B20 containsObject:v19];

                if (v20)
                {
LABEL_20:
                  LOBYTE(v7) = 1;
                  goto LABEL_21;
                }
              }
            }

            v7 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)copyPhaseFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
}

- (void)handleHIDEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHIDEvent:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end
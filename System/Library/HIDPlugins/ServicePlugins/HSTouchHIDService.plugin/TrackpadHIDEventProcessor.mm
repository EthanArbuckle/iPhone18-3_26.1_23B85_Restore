@interface TrackpadHIDEventProcessor
+ (unsigned)nextScrollPhase:(unsigned __int8)phase anyScroll:(BOOL)scroll;
- (BOOL)isDigitizerCollectionHIDEvent:(id)event;
- (NSDictionary)debugDictionary;
- (TrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type;
- (id)createPointingEventWithDeltaX:(double)x deltaY:(double)y buttonMask:(unsigned int)mask timestamp:(unint64_t)timestamp source:(id)source;
- (id)createPointingEventWithDeltaX:(double)x deltaY:(double)y buttonMask:(unsigned int)mask timestamp:(unint64_t)timestamp source:(id)source options:(unsigned int)options;
- (id)createScrollEventWithDeltaX:(double)x deltaY:(double)y deltaZ:(double)z options:(unsigned int)options;
- (id)handleHIDEvent:(id)event;
- (unsigned)updateButtonMask:(unsigned int)mask source:(id)source;
- (void)_dispatchPointerButtonUpEvent;
- (void)dealloc;
- (void)dispatch:(id)dispatch;
- (void)dispatchPointingEventWithDeltaX:(int)x deltaY:(int)y buttonMask:(unsigned int)mask source:(id)source;
- (void)handleConsume:(id)consume;
- (void)handleContactFrame:(id)frame;
- (void)handleGetDebugEvent:(id)event;
- (void)handleHIDEvents:(id)events;
- (void)handlePointerFrame:(id)frame;
- (void)handlePointerSettings:(id)settings;
- (void)logButtonState:(unsigned int)state fromSource:(id)source;
- (void)mergeScrollEvent:(id)event with:(id)with;
- (void)setHostClickControl:(BOOL)control;
- (void)setParserEnabled:(BOOL)enabled;
- (void)updateScrollPhaseFor:(id)for anyScroll:(BOOL)scroll;
@end

@implementation TrackpadHIDEventProcessor

+ (unsigned)nextScrollPhase:(unsigned __int8)phase anyScroll:(BOOL)scroll
{
  if (phase > 5u)
  {
    return 0;
  }

  else
  {
    return gNextScrollPhaseForPhase[2 * phase + scroll];
  }
}

- (void)setParserEnabled:(BOOL)enabled
{
  if ([(TrackpadHIDEventProcessor *)self parserEnabled]!= enabled)
  {
    self->_parserEnabled = enabled;
    if (![(TrackpadHIDEventProcessor *)self parserEnabled])
    {
      if ([(TrackpadHIDEventProcessor *)self previousButtonState])
      {
        v5 = MTLoggingPlugin();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = 136315650;
          v7 = "[Debug] ";
          v8 = 2080;
          v9 = "";
          v10 = 2080;
          v11 = "[TrackpadHIDEventProcessor setParserEnabled:]";
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Trackpad has been disabled with button down. Dispatching button up event", &v6, 0x20u);
        }

        [(TrackpadHIDEventProcessor *)self _dispatchPointerButtonUpEvent];
      }
    }
  }
}

- (void)setHostClickControl:(BOOL)control
{
  if ([(TrackpadHIDEventProcessor *)self hostClickControl]!= control)
  {
    self->_hostClickControl = control;
    if ([(TrackpadHIDEventProcessor *)self hostClickControl]&& [(TrackpadHIDEventProcessor *)self deviceButtonState])
    {
      v5 = MTLoggingPlugin();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315650;
        v7 = "[Error] ";
        v8 = 2080;
        v9 = "";
        v10 = 2080;
        v11 = "[TrackpadHIDEventProcessor setHostClickControl:]";
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Host click control was enabled during a FW click", &v6, 0x20u);
      }

      [(TrackpadHIDEventProcessor *)self _dispatchPointerButtonUpEvent];
    }

    else if (![(TrackpadHIDEventProcessor *)self hostClickControl]&& [(TrackpadHIDEventProcessor *)self previousButtonState])
    {

      [(TrackpadHIDEventProcessor *)self _dispatchPointerButtonUpEvent];
    }
  }
}

- (TrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type
{
  v13.receiver = self;
  v13.super_class = TrackpadHIDEventProcessor;
  v6 = [(HSStage *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_new();
    hidStats = v6->_hidStats;
    v6->_hidStats = v7;

    v6->_parserEnabled = 1;
    v9 = [[HSTCircularBuffer alloc] initWithMaxItems:25 includeTimestamp:1];
    buttonHistory = v6->_buttonHistory;
    v6->_buttonHistory = v9;

    v6->_deviceID = d;
    v6->_deviceType = type;
    v6->_noPointing = MTPreferencesGetAppBooleanValue(@"NoPointing", @"com.apple.MultitouchSupport", 0);
    v6->_hostClickControl = 0;
    v6->_deviceButtonState = 0;
    v6->_previousButtonState = 0;
    v6->_gestureScrollsEnabled = 1;
    v6->_scrollMomentumEnabled = 0;
    v6->_stdScrollPhase = 0;
    v11 = v6;
  }

  return v6;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(TrackpadActuatorStage *)v4 dealloc];
  }

  v5.receiver = self;
  v5.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v5 dealloc];
}

- (void)dispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  v5 = MTLoggingPlugin();
  if (os_signpost_enabled(v5))
  {
    signpost_begin_time = self->_signpost_begin_time;
    *buf = 134349314;
    v9 = signpost_begin_time;
    v10 = 2080;
    ClassName = object_getClassName(dispatchCopy);
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadHIDEventProcessor", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:dispatchCopy];
  v7.receiver = self;
  v7.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v7 handleConsume:dispatchCopy];
  self->_signpost_begin_time = mach_continuous_time();
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  self->_signpost_begin_time = mach_continuous_time();
  v5 = consumeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(TrackpadHIDEventProcessor *)self handleHIDEvents:v5];
  }

  else
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(TrackpadHIDEventProcessor *)self handlePointerSettings:v7];
    }

    else
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [(TrackpadHIDEventProcessor *)self handleContactFrame:v9];
      }

      else
      {
        v11 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          [(TrackpadHIDEventProcessor *)self handlePointerFrame:v11];
        }

        else
        {
          v13 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v11);

          if (v13)
          {
            [(TrackpadHIDEventProcessor *)self handleGetDebugEvent:v11];
          }

          else
          {
            v14.receiver = self;
            v14.super_class = TrackpadHIDEventProcessor;
            [(HSStage *)&v14 handleConsume:v11];
          }
        }
      }
    }
  }
}

- (void)handleHIDEvents:(id)events
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  eventsCopy = events;
  v4 = *(eventsCopy + 1);
  for (i = *(eventsCopy + 2); v4 != i; ++v4)
  {
    v6 = *v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v23 = v7;
        if ([v7 type] == 1)
        {
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](&v20, &v23);
        }

        else
        {
          v8 = [(TrackpadHIDEventProcessor *)self handleHIDEvent:v7];
          v9 = v8;
          if (v8)
          {
            v15 = 0u;
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v10 = v8;
            v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
            if (v11)
            {
              v12 = *v16;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v16 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v19 = 0xAAAAAAAAAAAAAAAALL;
                  v19 = *(*(&v15 + 1) + 8 * j);
                  std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](&v20, &v19);
                }

                v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
              }

              while (v11);
            }
          }
        }
      }
    }
  }

  if (eventsCopy + 8 != &v20)
  {
    std::vector<HIDEvent * {__strong}>::__assign_with_size[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*>((eventsCopy + 8), v20, v21, v21 - v20);
  }

  [(TrackpadHIDEventProcessor *)self dispatch:eventsCopy];
  v23 = &v20;
  std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v23);
}

- (id)handleHIDEvent:(id)event
{
  eventCopy = event;
  if ([(TrackpadHIDEventProcessor *)self shouldDispatchEvent:eventCopy])
  {
    v7 = eventCopy;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handlePointerSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy[1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  self->_scrollMomentumEnabled = [v5 scrollMomentumEnabled];
  if (v6)
  {
    gestureScrollingEnabled = [v6 gestureScrollingEnabled];
  }

  else
  {
    gestureScrollingEnabled = 1;
  }

  self->_gestureScrollsEnabled = gestureScrollingEnabled;
  v8 = MTLoggingPlugin();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v15 = "[Debug] ";
    v16 = 2080;
    v17 = "";
    v18 = 2080;
    v19 = "[TrackpadHIDEventProcessor handlePointerSettings:]";
    v20 = 1024;
    scrollMomentumEnabled = [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled];
    v22 = 1024;
    gestureScrollsEnabled = [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Momentum [enabled:%u] Scroll [enabled:%u]", buf, 0x2Cu);
  }

  enable = [v5 enable];
  v10 = enable;
  if (self->_parserEnabled == enable)
  {
    v11 = 1;
  }

  else
  {
    v11 = enable;
  }

  if ((v11 & 1) == 0 && [(TrackpadHIDEventProcessor *)self previousButtonState])
  {
    v12 = MTLoggingPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "[Debug] ";
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = "[TrackpadHIDEventProcessor handlePointerSettings:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Trackpad has been disabled with button down. Dispatching button up event", buf, 0x20u);
    }

    [(TrackpadHIDEventProcessor *)self _dispatchPointerButtonUpEvent];
  }

  [(TrackpadHIDEventProcessor *)self setParserEnabled:v10];
  v13.receiver = self;
  v13.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v13 handleConsume:settingsCopy];
}

- (void)handleContactFrame:(id)frame
{
  frameCopy = frame;
  [(TrackpadHIDEventProcessor *)self setHostClickControl:*(frameCopy + 11) & 1];
  if (![(TrackpadHIDEventProcessor *)self hostClickControl])
  {
    v4 = *(frameCopy + 124);
    if ((v4 & 0x100000000) != 0 && [(TrackpadHIDEventProcessor *)self deviceButtonState]!= v4)
    {
      [(TrackpadHIDEventProcessor *)self setDeviceButtonState:v4];
      [(TrackpadHIDEventProcessor *)self dispatchPointingEventWithDeltaX:0 deltaY:0 buttonMask:[(TrackpadHIDEventProcessor *)self deviceButtonState] source:@"Device-Contact"];
    }
  }
}

- (void)handlePointerFrame:(id)frame
{
  frameCopy = frame;
  if ([(TrackpadHIDEventProcessor *)self parserEnabled]&& ![(TrackpadHIDEventProcessor *)self hostClickControl])
  {
    [(TrackpadHIDEventProcessor *)self setDeviceButtonState:frameCopy[8]];
    [(TrackpadHIDEventProcessor *)self dispatchPointingEventWithDeltaX:frameCopy[9] deltaY:frameCopy[10] buttonMask:[(TrackpadHIDEventProcessor *)self deviceButtonState] source:@"Device-Pointer"];
  }
}

- (void)handleGetDebugEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[TrackpadHIDEventProcessor handleGetDebugEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"TrackpadHIDEventProcessor.mm" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  eventCopy[16] = 1;
  v5 = *(eventCopy + 3);
  debugDictionary = [(TrackpadHIDEventProcessor *)self debugDictionary];
  [v5 addObject:debugDictionary];

  v9.receiver = self;
  v9.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v9 handleConsume:eventCopy];
}

- (BOOL)isDigitizerCollectionHIDEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  v5 = eventCopy && [eventCopy type] == 11 && objc_msgSend(v4, "integerValueForField:", 720918) == &dword_0 + 1;

  return v5;
}

- (unsigned)updateButtonMask:(unsigned int)mask source:(id)source
{
  previousButtonState = *&mask;
  sourceCopy = source;
  if ([(TrackpadHIDEventProcessor *)self previousButtonState]== previousButtonState)
  {
    LODWORD(previousButtonState) = [(TrackpadHIDEventProcessor *)self previousButtonState];
  }

  else
  {
    if ((previousButtonState == 0) != ([(TrackpadHIDEventProcessor *)self previousButtonState]!= 0))
    {
      previousButtonState = [(TrackpadHIDEventProcessor *)self previousButtonState];
    }

    if (previousButtonState != [(TrackpadHIDEventProcessor *)self previousButtonState])
    {
      [(TrackpadHIDEventProcessor *)self logButtonState:previousButtonState fromSource:sourceCopy];
    }

    [(TrackpadHIDEventProcessor *)self setPreviousButtonState:previousButtonState];
  }

  return previousButtonState;
}

- (id)createPointingEventWithDeltaX:(double)x deltaY:(double)y buttonMask:(unsigned int)mask timestamp:(unint64_t)timestamp source:(id)source options:(unsigned int)options
{
  v9 = *&mask;
  sourceCopy = source;
  if (x == 0.0 && y == 0.0 && (v14 = [(TrackpadHIDEventProcessor *)self previousButtonState], !options) && v14 == v9)
  {
    RelativePointerEvent = 0;
  }

  else
  {
    [(TrackpadHIDEventProcessor *)self previousButtonState];
    [(TrackpadHIDEventProcessor *)self updateButtonMask:v9 source:sourceCopy];
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  }

  return RelativePointerEvent;
}

- (id)createPointingEventWithDeltaX:(double)x deltaY:(double)y buttonMask:(unsigned int)mask timestamp:(unint64_t)timestamp source:(id)source
{
  v7 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:*&mask deltaY:timestamp buttonMask:source timestamp:0 source:x options:y];

  return v7;
}

- (void)dispatchPointingEventWithDeltaX:(int)x deltaY:(int)y buttonMask:(unsigned int)mask source:(id)source
{
  v6 = *&mask;
  sourceCopy = source;
  v11 = objc_opt_new();
  v12 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v6 deltaY:mach_absolute_time() buttonMask:sourceCopy timestamp:x source:y];
  if (v12)
  {
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v11 + 1, &v12);
    [(TrackpadHIDEventProcessor *)self dispatch:v11];
  }
}

- (id)createScrollEventWithDeltaX:(double)x deltaY:(double)y deltaZ:(double)z options:(unsigned int)options
{
  v6 = *&options;
  if ([(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
  {
    v11 = [HIDEvent scrollEvent:mach_absolute_time() x:v6 y:x z:y options:z];
    v12 = y != 0.0 || x != 0.0;
    v13 = z != 0.0 || v12;
    [(TrackpadHIDEventProcessor *)self updateScrollPhaseFor:v11 anyScroll:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateScrollPhaseFor:(id)for anyScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  forCopy = for;
  if ([forCopy type] == 6)
  {
    [(TrackpadHIDEventProcessor *)self setStdScrollPhase:[TrackpadHIDEventProcessor nextScrollPhase:[(TrackpadHIDEventProcessor *)self stdScrollPhase] anyScroll:scrollCopy]];
    if ([(TrackpadHIDEventProcessor *)self stdScrollPhase])
    {
      IOHIDEventSetPhase();
    }
  }
}

- (void)mergeScrollEvent:(id)event with:(id)with
{
  eventCopy = event;
  withCopy = with;
  if ([eventCopy type] == 6 && objc_msgSend(withCopy, "type") == 6)
  {
    [withCopy doubleValueForField:393216];
    v8 = v7;
    [withCopy doubleValueForField:393217];
    v10 = v9;
    [withCopy doubleValueForField:393218];
    v12 = v11;
    [eventCopy doubleValueForField:393216];
    v13 = v8;
    [eventCopy setDoubleValue:393216 forField:v14 + v13];
    [eventCopy doubleValueForField:393217];
    *&v10 = v10;
    [eventCopy setDoubleValue:393217 forField:v15 + *&v10];
    [eventCopy doubleValueForField:393218];
    v16 = v12;
    [eventCopy setDoubleValue:393218 forField:v17 + v16];
    v18 = *&v10 != 0.0 || v13 != 0.0;
    v19 = v16 != 0.0 || v18;
    [(TrackpadHIDEventProcessor *)self updateScrollPhaseFor:eventCopy anyScroll:v19];
  }
}

- (void)_dispatchPointerButtonUpEvent
{
  [(TrackpadHIDEventProcessor *)self setDeviceButtonState:0];
  v3 = objc_opt_new();
  v4 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:0 deltaY:mach_absolute_time() buttonMask:@"Host-Cleanup" timestamp:0.0 source:0.0];
  if (v4)
  {
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v3 + 1, &v4);
  }

  [(TrackpadHIDEventProcessor *)self dispatch:v3];
}

- (void)logButtonState:(unsigned int)state fromSource:(id)source
{
  v4 = *&state;
  sourceCopy = source;
  v7 = MTLoggingPlugin();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    deviceID = self->_deviceID;
    *buf = 136316418;
    v15 = "";
    v16 = 2080;
    v17 = "";
    v18 = 2080;
    v19 = "[TrackpadHIDEventProcessor logButtonState:fromSource:]";
    v20 = 2048;
    v21 = deviceID;
    v22 = 1024;
    v23 = v4;
    v24 = 2114;
    v25 = sourceCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [0x%llX] Button event(mask=%d) was dispatched from %{public}@", buf, 0x3Au);
  }

  buttonHistory = self->_buttonHistory;
  sourceCopy = [NSNumber numberWithUnsignedInt:v4, @"Source", @"ButtonState", sourceCopy];
  v13[1] = sourceCopy;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:&v12 count:2];
  [(HSTCircularBuffer *)buttonHistory appendItem:v11];
}

- (NSDictionary)debugDictionary
{
  v17[0] = @"Stage";
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v18[0] = v16;
  v17[1] = @"DeviceType";
  v15 = [NSNumber numberWithUnsignedChar:[(TrackpadHIDEventProcessor *)self deviceType]];
  v18[1] = v15;
  v17[2] = @"NoPointing";
  v4 = [NSNumber numberWithBool:[(TrackpadHIDEventProcessor *)self noPointing]];
  v18[2] = v4;
  v17[3] = @"GestureScrollsEnabled";
  v5 = [NSNumber numberWithBool:[(TrackpadHIDEventProcessor *)self gestureScrollsEnabled]];
  v18[3] = v5;
  v17[4] = @"ScrollMomentumEnabled";
  v6 = [NSNumber numberWithBool:[(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]];
  v18[4] = v6;
  v17[5] = @"HostClickControl";
  v7 = [NSNumber numberWithBool:[(TrackpadHIDEventProcessor *)self hostClickControl]];
  v18[5] = v7;
  v17[6] = @"PreviousButtonState";
  v8 = [NSNumber numberWithUnsignedInt:[(TrackpadHIDEventProcessor *)self previousButtonState]];
  v18[6] = v8;
  v17[7] = @"DeviceButtonState";
  v9 = [NSNumber numberWithUnsignedInt:[(TrackpadHIDEventProcessor *)self deviceButtonState]];
  v18[7] = v9;
  v17[8] = @"ScrollEventPhase";
  v10 = [NSNumber numberWithUnsignedChar:[(TrackpadHIDEventProcessor *)self stdScrollPhase]];
  v18[8] = v10;
  v17[9] = @"GenerationStats";
  stats = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v18[9] = stats;
  v17[10] = @"ButtonHistory";
  items = [(HSTCircularBuffer *)self->_buttonHistory items];
  v18[10] = items;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:11];

  return v13;
}

@end
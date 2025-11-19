@interface TrackpadHIDEventProcessor
+ (unsigned)nextScrollPhase:(unsigned __int8)a3 anyScroll:(BOOL)a4;
- (BOOL)isDigitizerCollectionHIDEvent:(id)a3;
- (NSDictionary)debugDictionary;
- (TrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)a3 deviceType:(unsigned __int8)a4;
- (id)createPointingEventWithDeltaX:(double)a3 deltaY:(double)a4 buttonMask:(unsigned int)a5 timestamp:(unint64_t)a6 source:(id)a7;
- (id)createPointingEventWithDeltaX:(double)a3 deltaY:(double)a4 buttonMask:(unsigned int)a5 timestamp:(unint64_t)a6 source:(id)a7 options:(unsigned int)a8;
- (id)createScrollEventWithDeltaX:(double)a3 deltaY:(double)a4 deltaZ:(double)a5 options:(unsigned int)a6;
- (id)handleHIDEvent:(id)a3;
- (unsigned)updateButtonMask:(unsigned int)a3 source:(id)a4;
- (void)_dispatchPointerButtonUpEvent;
- (void)dealloc;
- (void)dispatch:(id)a3;
- (void)dispatchPointingEventWithDeltaX:(int)a3 deltaY:(int)a4 buttonMask:(unsigned int)a5 source:(id)a6;
- (void)handleConsume:(id)a3;
- (void)handleContactFrame:(id)a3;
- (void)handleGetDebugEvent:(id)a3;
- (void)handleHIDEvents:(id)a3;
- (void)handlePointerFrame:(id)a3;
- (void)handlePointerSettings:(id)a3;
- (void)logButtonState:(unsigned int)a3 fromSource:(id)a4;
- (void)mergeScrollEvent:(id)a3 with:(id)a4;
- (void)setHostClickControl:(BOOL)a3;
- (void)setParserEnabled:(BOOL)a3;
- (void)updateScrollPhaseFor:(id)a3 anyScroll:(BOOL)a4;
@end

@implementation TrackpadHIDEventProcessor

+ (unsigned)nextScrollPhase:(unsigned __int8)a3 anyScroll:(BOOL)a4
{
  if (a3 > 5u)
  {
    return 0;
  }

  else
  {
    return gNextScrollPhaseForPhase[2 * a3 + a4];
  }
}

- (void)setParserEnabled:(BOOL)a3
{
  if ([(TrackpadHIDEventProcessor *)self parserEnabled]!= a3)
  {
    self->_parserEnabled = a3;
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

- (void)setHostClickControl:(BOOL)a3
{
  if ([(TrackpadHIDEventProcessor *)self hostClickControl]!= a3)
  {
    self->_hostClickControl = a3;
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

- (TrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)a3 deviceType:(unsigned __int8)a4
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

    v6->_deviceID = a3;
    v6->_deviceType = a4;
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

- (void)dispatch:(id)a3
{
  v4 = a3;
  v5 = MTLoggingPlugin();
  if (os_signpost_enabled(v5))
  {
    signpost_begin_time = self->_signpost_begin_time;
    *buf = 134349314;
    v9 = signpost_begin_time;
    v10 = 2080;
    ClassName = object_getClassName(v4);
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadHIDEventProcessor", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  [(HSTHIDEventStatistics *)self->_hidStats handleHIDEvents:v4];
  v7.receiver = self;
  v7.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v7 handleConsume:v4];
  self->_signpost_begin_time = mach_continuous_time();
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  self->_signpost_begin_time = mach_continuous_time();
  v5 = v4;
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

- (void)handleHIDEvents:(id)a3
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v14 = a3;
  v4 = *(v14 + 1);
  for (i = *(v14 + 2); v4 != i; ++v4)
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

  if (v14 + 8 != &v20)
  {
    std::vector<HIDEvent * {__strong}>::__assign_with_size[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*>((v14 + 8), v20, v21, v21 - v20);
  }

  [(TrackpadHIDEventProcessor *)self dispatch:v14];
  v23 = &v20;
  std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v23);
}

- (id)handleHIDEvent:(id)a3
{
  v4 = a3;
  if ([(TrackpadHIDEventProcessor *)self shouldDispatchEvent:v4])
  {
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handlePointerSettings:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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
    v7 = [v6 gestureScrollingEnabled];
  }

  else
  {
    v7 = 1;
  }

  self->_gestureScrollsEnabled = v7;
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
    v21 = [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled];
    v22 = 1024;
    v23 = [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Momentum [enabled:%u] Scroll [enabled:%u]", buf, 0x2Cu);
  }

  v9 = [v5 enable];
  v10 = v9;
  if (self->_parserEnabled == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
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
  [(HSStage *)&v13 handleConsume:v4];
}

- (void)handleContactFrame:(id)a3
{
  v5 = a3;
  [(TrackpadHIDEventProcessor *)self setHostClickControl:*(v5 + 11) & 1];
  if (![(TrackpadHIDEventProcessor *)self hostClickControl])
  {
    v4 = *(v5 + 124);
    if ((v4 & 0x100000000) != 0 && [(TrackpadHIDEventProcessor *)self deviceButtonState]!= v4)
    {
      [(TrackpadHIDEventProcessor *)self setDeviceButtonState:v4];
      [(TrackpadHIDEventProcessor *)self dispatchPointingEventWithDeltaX:0 deltaY:0 buttonMask:[(TrackpadHIDEventProcessor *)self deviceButtonState] source:@"Device-Contact"];
    }
  }
}

- (void)handlePointerFrame:(id)a3
{
  v4 = a3;
  if ([(TrackpadHIDEventProcessor *)self parserEnabled]&& ![(TrackpadHIDEventProcessor *)self hostClickControl])
  {
    [(TrackpadHIDEventProcessor *)self setDeviceButtonState:v4[8]];
    [(TrackpadHIDEventProcessor *)self dispatchPointingEventWithDeltaX:v4[9] deltaY:v4[10] buttonMask:[(TrackpadHIDEventProcessor *)self deviceButtonState] source:@"Device-Pointer"];
  }
}

- (void)handleGetDebugEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[TrackpadHIDEventProcessor handleGetDebugEvent:]"];
    [v7 handleFailureInFunction:v8 file:@"TrackpadHIDEventProcessor.mm" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v4[16] = 1;
  v5 = *(v4 + 3);
  v6 = [(TrackpadHIDEventProcessor *)self debugDictionary];
  [v5 addObject:v6];

  v9.receiver = self;
  v9.super_class = TrackpadHIDEventProcessor;
  [(HSStage *)&v9 handleConsume:v4];
}

- (BOOL)isDigitizerCollectionHIDEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 type] == 11 && objc_msgSend(v4, "integerValueForField:", 720918) == &dword_0 + 1;

  return v5;
}

- (unsigned)updateButtonMask:(unsigned int)a3 source:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([(TrackpadHIDEventProcessor *)self previousButtonState]== v4)
  {
    LODWORD(v4) = [(TrackpadHIDEventProcessor *)self previousButtonState];
  }

  else
  {
    if ((v4 == 0) != ([(TrackpadHIDEventProcessor *)self previousButtonState]!= 0))
    {
      v4 = [(TrackpadHIDEventProcessor *)self previousButtonState];
    }

    if (v4 != [(TrackpadHIDEventProcessor *)self previousButtonState])
    {
      [(TrackpadHIDEventProcessor *)self logButtonState:v4 fromSource:v6];
    }

    [(TrackpadHIDEventProcessor *)self setPreviousButtonState:v4];
  }

  return v4;
}

- (id)createPointingEventWithDeltaX:(double)a3 deltaY:(double)a4 buttonMask:(unsigned int)a5 timestamp:(unint64_t)a6 source:(id)a7 options:(unsigned int)a8
{
  v9 = *&a5;
  v13 = a7;
  if (a3 == 0.0 && a4 == 0.0 && (v14 = [(TrackpadHIDEventProcessor *)self previousButtonState], !a8) && v14 == v9)
  {
    RelativePointerEvent = 0;
  }

  else
  {
    [(TrackpadHIDEventProcessor *)self previousButtonState];
    [(TrackpadHIDEventProcessor *)self updateButtonMask:v9 source:v13];
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  }

  return RelativePointerEvent;
}

- (id)createPointingEventWithDeltaX:(double)a3 deltaY:(double)a4 buttonMask:(unsigned int)a5 timestamp:(unint64_t)a6 source:(id)a7
{
  v7 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:*&a5 deltaY:a6 buttonMask:a7 timestamp:0 source:a3 options:a4];

  return v7;
}

- (void)dispatchPointingEventWithDeltaX:(int)a3 deltaY:(int)a4 buttonMask:(unsigned int)a5 source:(id)a6
{
  v6 = *&a5;
  v10 = a6;
  v11 = objc_opt_new();
  v12 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v6 deltaY:mach_absolute_time() buttonMask:v10 timestamp:a3 source:a4];
  if (v12)
  {
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v11 + 1, &v12);
    [(TrackpadHIDEventProcessor *)self dispatch:v11];
  }
}

- (id)createScrollEventWithDeltaX:(double)a3 deltaY:(double)a4 deltaZ:(double)a5 options:(unsigned int)a6
{
  v6 = *&a6;
  if ([(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
  {
    v11 = [HIDEvent scrollEvent:mach_absolute_time() x:v6 y:a3 z:a4 options:a5];
    v12 = a4 != 0.0 || a3 != 0.0;
    v13 = a5 != 0.0 || v12;
    [(TrackpadHIDEventProcessor *)self updateScrollPhaseFor:v11 anyScroll:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateScrollPhaseFor:(id)a3 anyScroll:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 type] == 6)
  {
    [(TrackpadHIDEventProcessor *)self setStdScrollPhase:[TrackpadHIDEventProcessor nextScrollPhase:[(TrackpadHIDEventProcessor *)self stdScrollPhase] anyScroll:v4]];
    if ([(TrackpadHIDEventProcessor *)self stdScrollPhase])
    {
      IOHIDEventSetPhase();
    }
  }
}

- (void)mergeScrollEvent:(id)a3 with:(id)a4
{
  v20 = a3;
  v6 = a4;
  if ([v20 type] == 6 && objc_msgSend(v6, "type") == 6)
  {
    [v6 doubleValueForField:393216];
    v8 = v7;
    [v6 doubleValueForField:393217];
    v10 = v9;
    [v6 doubleValueForField:393218];
    v12 = v11;
    [v20 doubleValueForField:393216];
    v13 = v8;
    [v20 setDoubleValue:393216 forField:v14 + v13];
    [v20 doubleValueForField:393217];
    *&v10 = v10;
    [v20 setDoubleValue:393217 forField:v15 + *&v10];
    [v20 doubleValueForField:393218];
    v16 = v12;
    [v20 setDoubleValue:393218 forField:v17 + v16];
    v18 = *&v10 != 0.0 || v13 != 0.0;
    v19 = v16 != 0.0 || v18;
    [(TrackpadHIDEventProcessor *)self updateScrollPhaseFor:v20 anyScroll:v19];
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

- (void)logButtonState:(unsigned int)a3 fromSource:(id)a4
{
  v4 = *&a3;
  v6 = a4;
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
    v25 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [0x%llX] Button event(mask=%d) was dispatched from %{public}@", buf, 0x3Au);
  }

  buttonHistory = self->_buttonHistory;
  v10 = [NSNumber numberWithUnsignedInt:v4, @"Source", @"ButtonState", v6];
  v13[1] = v10;
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
  v11 = [(HSTHIDEventStatistics *)self->_hidStats stats];
  v18[9] = v11;
  v17[10] = @"ButtonHistory";
  v12 = [(HSTCircularBuffer *)self->_buttonHistory items];
  v18[10] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:11];

  return v13;
}

@end
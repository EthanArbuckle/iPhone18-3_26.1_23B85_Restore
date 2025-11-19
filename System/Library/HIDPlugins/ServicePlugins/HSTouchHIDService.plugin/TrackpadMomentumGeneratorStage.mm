@interface TrackpadMomentumGeneratorStage
- (TrackpadMomentumGeneratorStage)initWithQueue:(id)a3;
- (id)createMomentumPointingEventWithDeltas:(const void *)a3;
- (id)createScrollMomentumEventWithDeltas:(const void *)a3;
- (void)_handleGetDebugEvent:(id)a3;
- (void)cancelMomentumTimerWithInterrupted:(BOOL)a3;
- (void)dealloc;
- (void)decayMomentumPointDragWithMouseDelta:(const void *)a3;
- (void)dispatch:(id)a3;
- (void)handleConsume:(id)a3;
- (void)handleGetPropertyEvent:(id)a3;
- (void)handleHIDEvents:(id)a3;
- (void)handleMomentumRequestEvent:(id)a3;
- (void)handleMomentumStateEvent:(id)a3;
- (void)handleSetPropertyEvent:(id)a3;
- (void)handleTimerEvent:(id)a3;
- (void)momentumTimerCallback:(void *)a3;
- (void)setMomentumState:(int)a3;
- (void)setScrollMomentumDispatchRate:(float)a3;
- (void)setScrollMomentumEvent:(id)a3 interrupted:(BOOL)a4;
- (void)startMomentumTimerWithMomentumRequest:(id)a3;
@end

@implementation TrackpadMomentumGeneratorStage

- (TrackpadMomentumGeneratorStage)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TrackpadMomentumGeneratorStage;
  v6 = [(HSStage *)&v13 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_queue, a3), v7->_buttonState = 0, v8 = objc_alloc_init(MomentumCurve), momentumCurve = v7->_momentumCurve, v7->_momentumCurve = v8, momentumCurve, v7->_momentumBits = 0, momentumTimer = v7->_momentumTimer, v7->_momentumTimer = 0, momentumTimer, v7->_queue) && v7->_momentumCurve)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
  v5.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v5 dealloc];
}

- (void)dispatch:(id)a3
{
  v4 = a3;
  v5 = MTLoggingPlugin();
  if (os_signpost_enabled(v5))
  {
    *buf = 134349314;
    v8 = [(TrackpadMomentumGeneratorStage *)self signpostBeginTime];
    v9 = 2080;
    ClassName = object_getClassName(v4);
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadMomentumGeneratorStage", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v6 handleConsume:v4];
  [(TrackpadMomentumGeneratorStage *)self setSignpostBeginTime:mach_continuous_time()];
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  [(TrackpadMomentumGeneratorStage *)self setSignpostBeginTime:mach_continuous_time()];
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
    [(TrackpadMomentumGeneratorStage *)self handleMomentumRequestEvent:v5];
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
      [(TrackpadMomentumGeneratorStage *)self handleMomentumStateEvent:v7];
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
        [(TrackpadMomentumGeneratorStage *)self handleTimerEvent:v9];
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
          [(TrackpadMomentumGeneratorStage *)self handleHIDEvents:v11];
        }

        else
        {
          v13 = HSUtil::DynamicCast<HSTSetPropertyEvent>(v11);

          if (v13)
          {
            [(TrackpadMomentumGeneratorStage *)self handleSetPropertyEvent:v11];
          }

          else
          {
            v14 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v11);

            if (v14)
            {
              [(TrackpadMomentumGeneratorStage *)self handleGetPropertyEvent:v11];
            }

            else
            {
              v15 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v11);

              if (v15)
              {
                [(TrackpadMomentumGeneratorStage *)self _handleGetDebugEvent:v11];
              }

              else
              {
                v16.receiver = self;
                v16.super_class = TrackpadMomentumGeneratorStage;
                [(HSStage *)&v16 handleConsume:v11];
              }
            }
          }
        }
      }
    }
  }
}

- (void)handleMomentumRequestEvent:(id)a3
{
  v4 = a3;
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v9 = "";
    v10 = 2080;
    v11 = "";
    v12 = 2080;
    v13 = "[TrackpadMomentumGeneratorStage handleMomentumRequestEvent:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum request event received: %@", buf, 0x2Au);
  }

  v6 = v4[2];
  switch(v6)
  {
    case 2:
      [(TrackpadMomentumGeneratorStage *)self cancelMomentumTimerWithInterrupted:1];
      break;
    case 1:
      [(TrackpadMomentumGeneratorStage *)self decayMomentumPointDragWithMouseDelta:v4 + 4];
      break;
    case 0:
      [(TrackpadMomentumGeneratorStage *)self startMomentumTimerWithMomentumRequest:v4];
      break;
  }

  v7.receiver = self;
  v7.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v7 handleConsume:v4];
}

- (void)handleMomentumStateEvent:(id)a3
{
  v4 = a3;
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "[TrackpadMomentumGeneratorStage handleMomentumStateEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum state event received: %@", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v6 handleConsume:v4];
}

- (void)handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 39) < 0 && v4[3] == &dword_18 + 2)
  {
    v6 = v4[2];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(v6 + 12);
    if (v7 == 0x6F4D6C6C6F726353 && v8 == 0x69446D75746E656DLL && v9 == 0x6152686374617073 && v10 == 25972)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v5[5];
        [v14 floatValue];
        [(TrackpadMomentumGeneratorStage *)self setScrollMomentumDispatchRate:?];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v15 handleConsume:v5];
}

- (void)handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 39) < 0 && v4[3] == 26)
  {
    v6 = v4[2];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(v6 + 12);
    if (v7 == 0x6F4D6C6C6F726353 && v8 == 0x69446D75746E656DLL && v9 == 0x6152686374617073 && v10 == 25972)
    {
      [(TrackpadMomentumGeneratorStage *)self scrollMomentumDispatchRate];
      v14 = [NSNumber numberWithFloat:?];
      v15 = v5[5];
      v5[5] = v14;
    }
  }

  v16.receiver = self;
  v16.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v16 handleConsume:v5];
}

- (void)handleTimerEvent:(id)a3
{
  v4 = a3;
  if (![v4[1] isEqualToString:@"MomentumGesture"])
  {
LABEL_6:
    v9.receiver = self;
    v9.super_class = TrackpadMomentumGeneratorStage;
    [(HSStage *)&v9 handleConsume:v4];
    goto LABEL_7;
  }

  v5 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];

  if (v5)
  {
    v6 = objc_opt_new();
    [(TrackpadMomentumGeneratorStage *)self momentumTimerCallback:v6 + 8];
    [(TrackpadMomentumGeneratorStage *)self dispatch:v6];
    v7 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    v8 = [v7 atEndOfCurve];

    if (v8)
    {
      [(TrackpadMomentumGeneratorStage *)self cancelMomentumTimerWithInterrupted:0];
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)handleHIDEvents:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_12;
  }

  v5 = v4[1];
  v6 = v4[2];
  if (v5 == v6)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v7 = *v5;
    if (!v7)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = v7;
    if ([v8 type] == 17)
    {
      break;
    }

LABEL_7:
    if (++v5 == v6)
    {
      goto LABEL_12;
    }
  }

  v9 = [v8 integerValueForField:1114115];
  if (self)
  {
    self->_buttonState = v9;
  }

LABEL_12:
  v10.receiver = self;
  v10.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v10 handleConsume:v4];
}

- (void)_handleGetDebugEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[TrackpadMomentumGeneratorStage _handleGetDebugEvent:]"];
    [v10 handleFailureInFunction:v11 file:@"TrackpadMomentumGeneratorStage.mm" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v13[0] = @"Stage";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14[0] = v6;
  v13[1] = @"ScrollMomentumDispatchRate";
  [(TrackpadMomentumGeneratorStage *)self scrollMomentumDispatchRate];
  v7 = [NSNumber numberWithFloat:?];
  v14[1] = v7;
  v13[2] = @"MomentumBits";
  v8 = [NSNumber numberWithUnsignedChar:[(TrackpadMomentumGeneratorStage *)self momentumBits]];
  v14[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  *(v4 + 16) = 1;
  [*(v4 + 3) addObject:v9];
  v12.receiver = self;
  v12.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v12 handleConsume:v4];
}

- (void)startMomentumTimerWithMomentumRequest:(id)a3
{
  v4 = a3;
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [(TrackpadMomentumGeneratorStage *)self scrollMomentumDispatchRate];
  [v5 generateCurvesWithMomentumState:v4 scrollMomentumDispatchRate:?];

  v6 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  v7 = [v6 atEndOfCurve];

  if (v7)
  {
    [(TrackpadMomentumGeneratorStage *)self setMomentumState:1];
  }

  else
  {
    v8 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    if (v8)
    {
      v9 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
      v10 = dispatch_source_testcancel(v9);

      if (!v10)
      {
        v11 = MTLoggingPlugin();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v26 = "[Error] ";
          v27 = 2080;
          v28 = "";
          v29 = 2080;
          v30 = "[TrackpadMomentumGeneratorStage startMomentumTimerWithMomentumRequest:]";
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Tried to start new momentum timer without ending the previous one", buf, 0x20u);
        }

        v12 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
        dispatch_source_cancel(v12);
      }
    }

    v13 = [(TrackpadMomentumGeneratorStage *)self queue];
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    [(TrackpadMomentumGeneratorStage *)self setMomentumTimer:v14];

    v15 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    v16 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [v16 currentInterval];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    v19 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [v19 currentInterval];
    dispatch_source_set_timer(v15, v18, (v20 * 1000000000.0), 0);

    objc_initWeak(buf, self);
    v21 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __72__TrackpadMomentumGeneratorStage_startMomentumTimerWithMomentumRequest___block_invoke;
    handler[3] = &unk_1091A0;
    objc_copyWeak(&v24, buf);
    dispatch_source_set_event_handler(v21, handler);

    [(TrackpadMomentumGeneratorStage *)self setMomentumState:0];
    v22 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    dispatch_resume(v22);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __72__TrackpadMomentumGeneratorStage_startMomentumTimerWithMomentumRequest___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(v2 + 8);
  obj = v2;
  *(v2 + 8) = @"MomentumGesture";

  v4 = objc_opt_new();
  objc_storeStrong(v4 + 2, obj);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispatch:v4];
}

- (void)momentumTimerCallback:(void *)a3
{
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  v6 = [v5 getCurrentMomentumDeltasAndStep];

  v7 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [v7 nextInterval];
  v9 = v8;
  v10 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [v10 currentInterval];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    v14 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [v14 nextInterval];
    v16 = dispatch_walltime(0, (v15 * 1000000000.0));
    v17 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [v17 nextInterval];
    dispatch_source_set_timer(v13, v16, (v18 * 1000000000.0), 0);
  }

  if (HIDWORD(v6) || v6)
  {
    v22 = 0;
    v19 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    v20 = [v19 subtype];

    v21 = v6;
    if (v20 == 1)
    {
      [(TrackpadMomentumGeneratorStage *)self createScrollMomentumEventWithDeltas:&v21];
    }

    else
    {
      [(TrackpadMomentumGeneratorStage *)self createMomentumPointingEventWithDeltas:&v21];
    }
    v22 = ;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](a3, &v22);
  }
}

- (void)decayMomentumPointDragWithMouseDelta:(const void *)a3
{
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  v6 = [v5 getCurrentMomentumDeltas];
  v7 = v6;
  v8 = HIDWORD(v6);

  v9 = hypotf(v7, v8);
  v10 = v7 + *a3 * 0.25;
  v11 = v8 + *(a3 + 1) * 0.25;
  v12 = hypotf(v10, v11);
  if (v9 > 0.0 && v12 > v9)
  {
    v13 = v9 / v12;
    v10 = v13 * v10;
    v11 = v13 * v11;
  }

  v14 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  *v15 = v10;
  *&v15[1] = v11;
  [v14 regenerateCurvesWithInitialDelta:v15];
}

- (void)cancelMomentumTimerWithInterrupted:(BOOL)a3
{
  v3 = a3;
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
  if (v5)
  {
    v6 = v5;
    v7 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    v8 = dispatch_source_testcancel(v7);

    if (!v8)
    {
      v9 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
      dispatch_source_cancel(v9);

      [(TrackpadMomentumGeneratorStage *)self setMomentumTimer:0];
      v10 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
      v11 = [v10 subtype];

      if (v11 == 1)
      {
        v12 = objc_opt_new();
        v13 = 0;
        v14 = [(TrackpadMomentumGeneratorStage *)self createScrollMomentumEventWithDeltas:&v13];
        [(TrackpadMomentumGeneratorStage *)self setScrollMomentumEvent:v14 interrupted:v3];
        std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v12 + 1, &v14);
        [(TrackpadMomentumGeneratorStage *)self dispatch:v12];
      }
    }
  }

  [(TrackpadMomentumGeneratorStage *)self setMomentumState:1];
}

- (id)createScrollMomentumEventWithDeltas:(const void *)a3
{
  v4 = *a3;
  v5 = HIDWORD(*a3);
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    v8 = 4 * (([(TrackpadMomentumGeneratorStage *)self momentumBits]& 3) != 0);
  }

  else if (![(TrackpadMomentumGeneratorStage *)self momentumBits]|| ([(TrackpadMomentumGeneratorStage *)self momentumBits]& 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = ([(TrackpadMomentumGeneratorStage *)self momentumBits]& 3) != 0;
  }

  [(TrackpadMomentumGeneratorStage *)self setMomentumBits:v8];
  [(TrackpadMomentumGeneratorStage *)self momentumBits];
  IOHIDEventSetScrollMomentum();
  v9 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [v9 scrollMomentumDispatchRate];
  v11 = v10;

  LODWORD(v12) = v11;
  v13 = [NSNumber numberWithFloat:v12];
  _IOHIDEventSetAttachment();

  if (_os_feature_enabled_impl())
  {
    v14 = ScrollEvent;
    mach_absolute_time();
    ScrollEvent = IOHIDEventCreateRelativePointerEvent();

    [ScrollEvent appendEvent:v14];
  }

  return ScrollEvent;
}

- (void)setScrollMomentumEvent:(id)a3 interrupted:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 && (IOHIDEventGetScrollMomentum() & 4) != 0)
  {
    IOHIDEventSetScrollMomentum();
  }
}

- (id)createMomentumPointingEventWithDeltas:(const void *)a3
{
  mach_absolute_time();
  v4 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [v4 dragButtons];
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [v5 dragButtons];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();

  return RelativePointerEvent;
}

- (void)setScrollMomentumDispatchRate:(float)a3
{
  v5 = 300.0;
  if (a3 <= 300.0)
  {
    v5 = a3;
  }

  if (v5 < 60.0)
  {
    v5 = 60.0;
  }

  self->_scrollMomentumDispatchRate = v5;
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    scrollMomentumDispatchRate = self->_scrollMomentumDispatchRate;
    v8 = 136316162;
    v9 = "";
    v10 = 2080;
    v11 = "";
    v12 = 2080;
    v13 = "[TrackpadMomentumGeneratorStage setScrollMomentumDispatchRate:]";
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = scrollMomentumDispatchRate;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum scroll dispatch rate set - requested value %f -> set value %f", &v8, 0x34u);
  }
}

- (void)setMomentumState:(int)a3
{
  obj = objc_opt_new();
  obj[2] = a3;
  v5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  obj[3] = [v5 subtype];

  v6 = objc_opt_new();
  objc_storeStrong(v6 + 2, obj);
  [(TrackpadMomentumGeneratorStage *)self dispatch:v6];
}

@end
@interface TrackpadMomentumGeneratorStage
- (TrackpadMomentumGeneratorStage)initWithQueue:(id)queue;
- (id)createMomentumPointingEventWithDeltas:(const void *)deltas;
- (id)createScrollMomentumEventWithDeltas:(const void *)deltas;
- (void)_handleGetDebugEvent:(id)event;
- (void)cancelMomentumTimerWithInterrupted:(BOOL)interrupted;
- (void)dealloc;
- (void)decayMomentumPointDragWithMouseDelta:(const void *)delta;
- (void)dispatch:(id)dispatch;
- (void)handleConsume:(id)consume;
- (void)handleGetPropertyEvent:(id)event;
- (void)handleHIDEvents:(id)events;
- (void)handleMomentumRequestEvent:(id)event;
- (void)handleMomentumStateEvent:(id)event;
- (void)handleSetPropertyEvent:(id)event;
- (void)handleTimerEvent:(id)event;
- (void)momentumTimerCallback:(void *)callback;
- (void)setMomentumState:(int)state;
- (void)setScrollMomentumDispatchRate:(float)rate;
- (void)setScrollMomentumEvent:(id)event interrupted:(BOOL)interrupted;
- (void)startMomentumTimerWithMomentumRequest:(id)request;
@end

@implementation TrackpadMomentumGeneratorStage

- (TrackpadMomentumGeneratorStage)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = TrackpadMomentumGeneratorStage;
  v6 = [(HSStage *)&v13 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_queue, queue), v7->_buttonState = 0, v8 = objc_alloc_init(MomentumCurve), momentumCurve = v7->_momentumCurve, v7->_momentumCurve = v8, momentumCurve, v7->_momentumBits = 0, momentumTimer = v7->_momentumTimer, v7->_momentumTimer = 0, momentumTimer, v7->_queue) && v7->_momentumCurve)
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

- (void)dispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  v5 = MTLoggingPlugin();
  if (os_signpost_enabled(v5))
  {
    *buf = 134349314;
    signpostBeginTime = [(TrackpadMomentumGeneratorStage *)self signpostBeginTime];
    v9 = 2080;
    ClassName = object_getClassName(dispatchCopy);
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadMomentumGeneratorStage", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v6 handleConsume:dispatchCopy];
  [(TrackpadMomentumGeneratorStage *)self setSignpostBeginTime:mach_continuous_time()];
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  [(TrackpadMomentumGeneratorStage *)self setSignpostBeginTime:mach_continuous_time()];
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

- (void)handleMomentumRequestEvent:(id)event
{
  eventCopy = event;
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
    v15 = eventCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum request event received: %@", buf, 0x2Au);
  }

  v6 = eventCopy[2];
  switch(v6)
  {
    case 2:
      [(TrackpadMomentumGeneratorStage *)self cancelMomentumTimerWithInterrupted:1];
      break;
    case 1:
      [(TrackpadMomentumGeneratorStage *)self decayMomentumPointDragWithMouseDelta:eventCopy + 4];
      break;
    case 0:
      [(TrackpadMomentumGeneratorStage *)self startMomentumTimerWithMomentumRequest:eventCopy];
      break;
  }

  v7.receiver = self;
  v7.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v7 handleConsume:eventCopy];
}

- (void)handleMomentumStateEvent:(id)event
{
  eventCopy = event;
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
    v14 = eventCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum state event received: %@", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v6 handleConsume:eventCopy];
}

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == &dword_18 + 2)
  {
    v6 = eventCopy[2];
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

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == 26)
  {
    v6 = eventCopy[2];
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

- (void)handleTimerEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy[1] isEqualToString:@"MomentumGesture"])
  {
LABEL_6:
    v9.receiver = self;
    v9.super_class = TrackpadMomentumGeneratorStage;
    [(HSStage *)&v9 handleConsume:eventCopy];
    goto LABEL_7;
  }

  momentumTimer = [(TrackpadMomentumGeneratorStage *)self momentumTimer];

  if (momentumTimer)
  {
    v6 = objc_opt_new();
    [(TrackpadMomentumGeneratorStage *)self momentumTimerCallback:v6 + 8];
    [(TrackpadMomentumGeneratorStage *)self dispatch:v6];
    momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    atEndOfCurve = [momentumCurve atEndOfCurve];

    if (atEndOfCurve)
    {
      [(TrackpadMomentumGeneratorStage *)self cancelMomentumTimerWithInterrupted:0];
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)handleHIDEvents:(id)events
{
  eventsCopy = events;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_12;
  }

  v5 = eventsCopy[1];
  v6 = eventsCopy[2];
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
  [(HSStage *)&v10 handleConsume:eventsCopy];
}

- (void)_handleGetDebugEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
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

  *(eventCopy + 16) = 1;
  [*(eventCopy + 3) addObject:v9];
  v12.receiver = self;
  v12.super_class = TrackpadMomentumGeneratorStage;
  [(HSStage *)&v12 handleConsume:eventCopy];
}

- (void)startMomentumTimerWithMomentumRequest:(id)request
{
  requestCopy = request;
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [(TrackpadMomentumGeneratorStage *)self scrollMomentumDispatchRate];
  [momentumCurve generateCurvesWithMomentumState:requestCopy scrollMomentumDispatchRate:?];

  momentumCurve2 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  atEndOfCurve = [momentumCurve2 atEndOfCurve];

  if (atEndOfCurve)
  {
    [(TrackpadMomentumGeneratorStage *)self setMomentumState:1];
  }

  else
  {
    momentumTimer = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    if (momentumTimer)
    {
      momentumTimer2 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
      v10 = dispatch_source_testcancel(momentumTimer2);

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

        momentumTimer3 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
        dispatch_source_cancel(momentumTimer3);
      }
    }

    queue = [(TrackpadMomentumGeneratorStage *)self queue];
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(TrackpadMomentumGeneratorStage *)self setMomentumTimer:v14];

    momentumTimer4 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    momentumCurve3 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [momentumCurve3 currentInterval];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    momentumCurve4 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [momentumCurve4 currentInterval];
    dispatch_source_set_timer(momentumTimer4, v18, (v20 * 1000000000.0), 0);

    objc_initWeak(buf, self);
    momentumTimer5 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __72__TrackpadMomentumGeneratorStage_startMomentumTimerWithMomentumRequest___block_invoke;
    handler[3] = &unk_1091A0;
    objc_copyWeak(&v24, buf);
    dispatch_source_set_event_handler(momentumTimer5, handler);

    [(TrackpadMomentumGeneratorStage *)self setMomentumState:0];
    momentumTimer6 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    dispatch_resume(momentumTimer6);

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

- (void)momentumTimerCallback:(void *)callback
{
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  getCurrentMomentumDeltasAndStep = [momentumCurve getCurrentMomentumDeltasAndStep];

  momentumCurve2 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [momentumCurve2 nextInterval];
  v9 = v8;
  momentumCurve3 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [momentumCurve3 currentInterval];
  v12 = v11;

  if (v9 != v12)
  {
    momentumTimer = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    momentumCurve4 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [momentumCurve4 nextInterval];
    v16 = dispatch_walltime(0, (v15 * 1000000000.0));
    momentumCurve5 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    [momentumCurve5 nextInterval];
    dispatch_source_set_timer(momentumTimer, v16, (v18 * 1000000000.0), 0);
  }

  if (HIDWORD(getCurrentMomentumDeltasAndStep) || getCurrentMomentumDeltasAndStep)
  {
    v22 = 0;
    momentumCurve6 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
    subtype = [momentumCurve6 subtype];

    v21 = getCurrentMomentumDeltasAndStep;
    if (subtype == 1)
    {
      [(TrackpadMomentumGeneratorStage *)self createScrollMomentumEventWithDeltas:&v21];
    }

    else
    {
      [(TrackpadMomentumGeneratorStage *)self createMomentumPointingEventWithDeltas:&v21];
    }
    v22 = ;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](callback, &v22);
  }
}

- (void)decayMomentumPointDragWithMouseDelta:(const void *)delta
{
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  getCurrentMomentumDeltas = [momentumCurve getCurrentMomentumDeltas];
  v7 = getCurrentMomentumDeltas;
  v8 = HIDWORD(getCurrentMomentumDeltas);

  v9 = hypotf(v7, v8);
  v10 = v7 + *delta * 0.25;
  v11 = v8 + *(delta + 1) * 0.25;
  v12 = hypotf(v10, v11);
  if (v9 > 0.0 && v12 > v9)
  {
    v13 = v9 / v12;
    v10 = v13 * v10;
    v11 = v13 * v11;
  }

  momentumCurve2 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  *v15 = v10;
  *&v15[1] = v11;
  [momentumCurve2 regenerateCurvesWithInitialDelta:v15];
}

- (void)cancelMomentumTimerWithInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  momentumTimer = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
  if (momentumTimer)
  {
    v6 = momentumTimer;
    momentumTimer2 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
    v8 = dispatch_source_testcancel(momentumTimer2);

    if (!v8)
    {
      momentumTimer3 = [(TrackpadMomentumGeneratorStage *)self momentumTimer];
      dispatch_source_cancel(momentumTimer3);

      [(TrackpadMomentumGeneratorStage *)self setMomentumTimer:0];
      momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
      subtype = [momentumCurve subtype];

      if (subtype == 1)
      {
        v12 = objc_opt_new();
        v13 = 0;
        v14 = [(TrackpadMomentumGeneratorStage *)self createScrollMomentumEventWithDeltas:&v13];
        [(TrackpadMomentumGeneratorStage *)self setScrollMomentumEvent:v14 interrupted:interruptedCopy];
        std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v12 + 1, &v14);
        [(TrackpadMomentumGeneratorStage *)self dispatch:v12];
      }
    }
  }

  [(TrackpadMomentumGeneratorStage *)self setMomentumState:1];
}

- (id)createScrollMomentumEventWithDeltas:(const void *)deltas
{
  v4 = *deltas;
  v5 = HIDWORD(*deltas);
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
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [momentumCurve scrollMomentumDispatchRate];
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

- (void)setScrollMomentumEvent:(id)event interrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  eventCopy = event;
  if (interruptedCopy && (IOHIDEventGetScrollMomentum() & 4) != 0)
  {
    IOHIDEventSetScrollMomentum();
  }
}

- (id)createMomentumPointingEventWithDeltas:(const void *)deltas
{
  mach_absolute_time();
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [momentumCurve dragButtons];
  momentumCurve2 = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  [momentumCurve2 dragButtons];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();

  return RelativePointerEvent;
}

- (void)setScrollMomentumDispatchRate:(float)rate
{
  rateCopy = 300.0;
  if (rate <= 300.0)
  {
    rateCopy = rate;
  }

  if (rateCopy < 60.0)
  {
    rateCopy = 60.0;
  }

  self->_scrollMomentumDispatchRate = rateCopy;
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
    rateCopy2 = rate;
    v16 = 2048;
    v17 = scrollMomentumDispatchRate;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum scroll dispatch rate set - requested value %f -> set value %f", &v8, 0x34u);
  }
}

- (void)setMomentumState:(int)state
{
  obj = objc_opt_new();
  obj[2] = state;
  momentumCurve = [(TrackpadMomentumGeneratorStage *)self momentumCurve];
  obj[3] = [momentumCurve subtype];

  v6 = objc_opt_new();
  objc_storeStrong(v6 + 2, obj);
  [(TrackpadMomentumGeneratorStage *)self dispatch:v6];
}

@end
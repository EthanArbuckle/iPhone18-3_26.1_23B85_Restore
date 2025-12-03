@interface AXMTLookAtPointTrackerObserver
- (AXMTLookAtPointTrackerObserver)init;
- (AXMTLookAtPointTrackerObserverDelegate)delegate;
- (CGPoint)_lookAtPoint;
- (void)_initializationTimerFired:(id)fired;
- (void)_stateUpdated;
- (void)_updateError:(id)error;
- (void)_updateExpressions:(id)expressions;
- (void)_updateLookAtPoint:(CGPoint)point;
- (void)lookAtPointTracker:(id)tracker didFailToTrackFaceWithError:(id)error;
- (void)lookAtPointTracker:(id)tracker expressionEnded:(unint64_t)ended;
- (void)lookAtPointTracker:(id)tracker expressionStarted:(unint64_t)started;
- (void)lookAtPointTracker:(id)tracker trackedOnScreenPoint:(CGPoint)point;
- (void)lookAtPointTracker:(id)tracker trackedOnScreenPoint:(CGPoint)point error:(id)error;
- (void)lookAtPointTrackerFoundFace:(id)face;
- (void)lookAtPointTrackerLostFace:(id)face error:(id)error;
- (void)lookAtPointTrackerWasInterrupted:(id)interrupted;
@end

@implementation AXMTLookAtPointTrackerObserver

- (AXMTLookAtPointTrackerObserver)init
{
  v6.receiver = self;
  v6.super_class = AXMTLookAtPointTrackerObserver;
  v2 = [(AXMTLookAtPointTrackerObserver *)&v6 init];
  if (v2)
  {
    v3 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:11 userInfo:0];
    [(AXMTLookAtPointTrackerObserver *)v2 set_error:v3];

    [(AXMTLookAtPointTrackerObserver *)v2 set_lookAtPoint:AXSSMotionTrackingInvalidPoint[0], AXSSMotionTrackingInvalidPoint[1]];
    v4 = +[NSMutableSet set];
    [(AXMTLookAtPointTrackerObserver *)v2 set_expressions:v4];

    [(AXMTLookAtPointTrackerObserver *)v2 _stateUpdated];
  }

  return v2;
}

- (void)lookAtPointTracker:(id)tracker trackedOnScreenPoint:(CGPoint)point
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000171D4;
  block[3] = &unk_1000489E8;
  block[4] = self;
  pointCopy = point;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)lookAtPointTracker:(id)tracker trackedOnScreenPoint:(CGPoint)point error:(id)error
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000172C0;
  v6[3] = &unk_100048F28;
  pointCopy = point;
  v6[4] = self;
  errorCopy = error;
  v5 = errorCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)lookAtPointTracker:(id)tracker expressionStarted:(unint64_t)started
{
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    *buf = 134218242;
    startedCopy = started;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AXMTLookAtPointTrackerObserver: expressionStarted %lu %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001746C;
  v8[3] = &unk_1000489C0;
  v8[4] = self;
  v8[5] = started;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTracker:(id)tracker expressionEnded:(unint64_t)ended
{
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    *buf = 134218242;
    endedCopy = ended;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AXMTLookAtPointTrackerObserver: expressionEnded %lu %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017648;
  v8[3] = &unk_1000489C0;
  v8[4] = self;
  v8[5] = ended;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTrackerFoundFace:(id)face
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100018258();
  }
}

- (void)lookAtPointTrackerLostFace:(id)face error:(id)error
{
  errorCopy = error;
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100018298();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017814;
  v8[3] = &unk_100048948;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTracker:(id)tracker didFailToTrackFaceWithError:(id)error
{
  errorCopy = error;
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001830C();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000179CC;
  v8[3] = &unk_100048948;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTrackerWasInterrupted:(id)interrupted
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100018380();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017AB8;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_stateUpdated
{
  v16 = objc_alloc_init(AXSSMotionTrackingState);
  [(AXMTLookAtPointTrackerObserver *)self _lookAtPoint];
  [v16 setLookAtPoint:?];
  _expressions = [(AXMTLookAtPointTrackerObserver *)self _expressions];
  v4 = [_expressions copy];
  [v16 setExpressions:v4];

  _error = [(AXMTLookAtPointTrackerObserver *)self _error];
  [v16 setError:_error];

  [(AXMTLookAtPointTrackerObserver *)self setState:v16];
  delegate = [(AXMTLookAtPointTrackerObserver *)self delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AXMTLookAtPointTrackerObserver *)self delegate];
    [delegate2 lookAtPointTrackerObserver:self updatedState:v16];
  }

  state = [(AXMTLookAtPointTrackerObserver *)self state];
  error = [state error];
  domain = [error domain];
  if (![domain isEqualToString:AXSSMotionTrackingErrorDomain])
  {
    goto LABEL_8;
  }

  state2 = [(AXMTLookAtPointTrackerObserver *)self state];
  error2 = [state2 error];
  if ([error2 code] != 11)
  {

LABEL_8:
    goto LABEL_9;
  }

  _initializationTimer = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];

  if (!_initializationTimer)
  {
    v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_initializationTimerFired:" selector:0 userInfo:0 repeats:7.0];
    [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:v14];

    goto LABEL_10;
  }

LABEL_9:
  _initializationTimer2 = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];
  [_initializationTimer2 invalidate];

  [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:0];
LABEL_10:
}

- (void)_initializationTimerFired:(id)fired
{
  state = [(AXMTLookAtPointTrackerObserver *)self state];
  error = [state error];
  domain = [error domain];
  v7 = AXSSMotionTrackingErrorDomain;
  if ([domain isEqualToString:AXSSMotionTrackingErrorDomain])
  {
    state2 = [(AXMTLookAtPointTrackerObserver *)self state];
    error2 = [state2 error];
    code = [error2 code];

    if (code != 11)
    {
      goto LABEL_6;
    }

    state = [[NSError alloc] initWithDomain:v7 code:12 userInfo:0];
    [(AXMTLookAtPointTrackerObserver *)self _updateError:state];
    [(AXMTLookAtPointTrackerObserver *)self _stateUpdated];
  }

  else
  {
  }

LABEL_6:
  _initializationTimer = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];
  [_initializationTimer invalidate];

  [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:0];
}

- (void)_updateError:(id)error
{
  errorCopy = error;
  _error = [(AXMTLookAtPointTrackerObserver *)self _error];
  v5 = [errorCopy isEqual:_error];

  if ((v5 & 1) == 0)
  {
    v6 = errorCopy;
    if (errorCopy)
    {
      [(AXMTLookAtPointTrackerObserver *)self set_lookAtPoint:AXSSMotionTrackingInvalidPoint[0], AXSSMotionTrackingInvalidPoint[1]];
      _expressions = [(AXMTLookAtPointTrackerObserver *)self _expressions];
      [_expressions removeAllObjects];

      v6 = errorCopy;
    }

    [(AXMTLookAtPointTrackerObserver *)self set_error:v6];
  }
}

- (void)_updateExpressions:(id)expressions
{
  expressionsCopy = expressions;
  _expressions = [(AXMTLookAtPointTrackerObserver *)self _expressions];
  v5 = [expressionsCopy isEqual:_expressions];

  if ((v5 & 1) == 0)
  {
    _expressions2 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
    [_expressions2 removeAllObjects];

    _expressions3 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
    allObjects = [expressionsCopy allObjects];
    [_expressions3 addObjectsFromArray:allObjects];

    if ([expressionsCopy count])
    {
      [(AXMTLookAtPointTrackerObserver *)self set_error:0];
    }
  }
}

- (void)_updateLookAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXMTLookAtPointTrackerObserver *)self _lookAtPoint];
  v9.x = x;
  v9.y = y;
  if (!NSEqualPoints(v7, v9))
  {
    [(AXMTLookAtPointTrackerObserver *)self set_lookAtPoint:x, y];
    [(AXMTLookAtPointTrackerObserver *)self _lookAtPoint];
    v10.x = AXSSMotionTrackingInvalidPoint[0];
    v10.y = AXSSMotionTrackingInvalidPoint[1];
    if (!NSEqualPoints(v8, v10))
    {

      [(AXMTLookAtPointTrackerObserver *)self set_error:0];
    }
  }
}

- (AXMTLookAtPointTrackerObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_lookAtPoint
{
  x = self->__lookAtPoint.x;
  y = self->__lookAtPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
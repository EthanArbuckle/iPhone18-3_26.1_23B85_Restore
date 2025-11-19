@interface AXMTLookAtPointTrackerObserver
- (AXMTLookAtPointTrackerObserver)init;
- (AXMTLookAtPointTrackerObserverDelegate)delegate;
- (CGPoint)_lookAtPoint;
- (void)_initializationTimerFired:(id)a3;
- (void)_stateUpdated;
- (void)_updateError:(id)a3;
- (void)_updateExpressions:(id)a3;
- (void)_updateLookAtPoint:(CGPoint)a3;
- (void)lookAtPointTracker:(id)a3 didFailToTrackFaceWithError:(id)a4;
- (void)lookAtPointTracker:(id)a3 expressionEnded:(unint64_t)a4;
- (void)lookAtPointTracker:(id)a3 expressionStarted:(unint64_t)a4;
- (void)lookAtPointTracker:(id)a3 trackedOnScreenPoint:(CGPoint)a4;
- (void)lookAtPointTracker:(id)a3 trackedOnScreenPoint:(CGPoint)a4 error:(id)a5;
- (void)lookAtPointTrackerFoundFace:(id)a3;
- (void)lookAtPointTrackerLostFace:(id)a3 error:(id)a4;
- (void)lookAtPointTrackerWasInterrupted:(id)a3;
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

- (void)lookAtPointTracker:(id)a3 trackedOnScreenPoint:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000171D4;
  block[3] = &unk_1000489E8;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)lookAtPointTracker:(id)a3 trackedOnScreenPoint:(CGPoint)a4 error:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000172C0;
  v6[3] = &unk_100048F28;
  v8 = a4;
  v6[4] = self;
  v7 = a5;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)lookAtPointTracker:(id)a3 expressionStarted:(unint64_t)a4
{
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    *buf = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AXMTLookAtPointTrackerObserver: expressionStarted %lu %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001746C;
  v8[3] = &unk_1000489C0;
  v8[4] = self;
  v8[5] = a4;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTracker:(id)a3 expressionEnded:(unint64_t)a4
{
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    *buf = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AXMTLookAtPointTrackerObserver: expressionEnded %lu %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017648;
  v8[3] = &unk_1000489C0;
  v8[4] = self;
  v8[5] = a4;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTrackerFoundFace:(id)a3
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100018258();
  }
}

- (void)lookAtPointTrackerLostFace:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100018298();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017814;
  v8[3] = &unk_100048948;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTracker:(id)a3 didFailToTrackFaceWithError:(id)a4
{
  v5 = a4;
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
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)lookAtPointTrackerWasInterrupted:(id)a3
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
  v3 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
  v4 = [v3 copy];
  [v16 setExpressions:v4];

  v5 = [(AXMTLookAtPointTrackerObserver *)self _error];
  [v16 setError:v5];

  [(AXMTLookAtPointTrackerObserver *)self setState:v16];
  v6 = [(AXMTLookAtPointTrackerObserver *)self delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(AXMTLookAtPointTrackerObserver *)self delegate];
    [v7 lookAtPointTrackerObserver:self updatedState:v16];
  }

  v8 = [(AXMTLookAtPointTrackerObserver *)self state];
  v9 = [v8 error];
  v10 = [v9 domain];
  if (![v10 isEqualToString:AXSSMotionTrackingErrorDomain])
  {
    goto LABEL_8;
  }

  v11 = [(AXMTLookAtPointTrackerObserver *)self state];
  v12 = [v11 error];
  if ([v12 code] != 11)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];

  if (!v13)
  {
    v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_initializationTimerFired:" selector:0 userInfo:0 repeats:7.0];
    [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:v14];

    goto LABEL_10;
  }

LABEL_9:
  v15 = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];
  [v15 invalidate];

  [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:0];
LABEL_10:
}

- (void)_initializationTimerFired:(id)a3
{
  v4 = [(AXMTLookAtPointTrackerObserver *)self state];
  v5 = [v4 error];
  v6 = [v5 domain];
  v7 = AXSSMotionTrackingErrorDomain;
  if ([v6 isEqualToString:AXSSMotionTrackingErrorDomain])
  {
    v8 = [(AXMTLookAtPointTrackerObserver *)self state];
    v9 = [v8 error];
    v10 = [v9 code];

    if (v10 != 11)
    {
      goto LABEL_6;
    }

    v4 = [[NSError alloc] initWithDomain:v7 code:12 userInfo:0];
    [(AXMTLookAtPointTrackerObserver *)self _updateError:v4];
    [(AXMTLookAtPointTrackerObserver *)self _stateUpdated];
  }

  else
  {
  }

LABEL_6:
  v11 = [(AXMTLookAtPointTrackerObserver *)self _initializationTimer];
  [v11 invalidate];

  [(AXMTLookAtPointTrackerObserver *)self set_initializationTimer:0];
}

- (void)_updateError:(id)a3
{
  v8 = a3;
  v4 = [(AXMTLookAtPointTrackerObserver *)self _error];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = v8;
    if (v8)
    {
      [(AXMTLookAtPointTrackerObserver *)self set_lookAtPoint:AXSSMotionTrackingInvalidPoint[0], AXSSMotionTrackingInvalidPoint[1]];
      v7 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
      [v7 removeAllObjects];

      v6 = v8;
    }

    [(AXMTLookAtPointTrackerObserver *)self set_error:v6];
  }
}

- (void)_updateExpressions:(id)a3
{
  v9 = a3;
  v4 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
  v5 = [v9 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
    [v6 removeAllObjects];

    v7 = [(AXMTLookAtPointTrackerObserver *)self _expressions];
    v8 = [v9 allObjects];
    [v7 addObjectsFromArray:v8];

    if ([v9 count])
    {
      [(AXMTLookAtPointTrackerObserver *)self set_error:0];
    }
  }
}

- (void)_updateLookAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
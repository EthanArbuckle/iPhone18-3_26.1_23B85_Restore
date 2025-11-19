@interface APSWakeMetricTracker
- (APSWakeMetricTracker)initWithOnConnectedInterval:(double)a3 onDisconnectedInterval:(double)a4 metricSubmissionBlock:(id)a5;
- (void)_clearState;
- (void)_fireMetricIfNeeded;
- (void)_timerFired:(id)a3;
- (void)noteDidConnect;
- (void)noteReceivedStoredMessage;
- (void)noteSystemDidFullWakeWhileConnected:(BOOL)a3;
@end

@implementation APSWakeMetricTracker

- (void)_fireMetricIfNeeded
{
  if (self->_state != 1)
  {
    return;
  }

  v4 = [(APSWakeMetricTracker *)self metricSubmissionBlock];
  startedConnected = self->_startedConnected;
  didConnect = self->_didConnect;
  if (didConnect)
  {
    v7 = [NSNumber numberWithDouble:self->_connectedTime - self->_startTime];
    if (self->_didConnect)
    {
      v8 = [NSNumber numberWithDouble:self->_lastSignificantTime - self->_startTime];
      (v4)[2](v4, 0, startedConnected, didConnect, v7, v8);

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  (v4)[2](v4, 0, startedConnected, didConnect, v7, 0);
  if (didConnect)
  {
    goto LABEL_8;
  }

LABEL_9:

  [(APSWakeMetricTracker *)self _clearState];
}

- (APSWakeMetricTracker)initWithOnConnectedInterval:(double)a3 onDisconnectedInterval:(double)a4 metricSubmissionBlock:(id)a5
{
  v9 = a5;
  if (!v9)
  {
    sub_100109BD0(a2, self);
  }

  v15.receiver = self;
  v15.super_class = APSWakeMetricTracker;
  v10 = [(APSWakeMetricTracker *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_onConnectedInterval = a3;
    v10->_onDisconnectedInterval = a4;
    v12 = objc_retainBlock(v9);
    metricSubmissionBlock = v11->_metricSubmissionBlock;
    v11->_metricSubmissionBlock = v12;
  }

  return v11;
}

- (void)noteSystemDidFullWakeWhileConnected:(BOOL)a3
{
  v3 = a3;
  if (self->_state)
  {
    [(APSWakeMetricTracker *)self _clearState];
  }

  self->_state = 1;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTime = v5;
  self->_lastSignificantTime = v5;
  if (v3)
  {
    v6 = v5;
    onConnectedInterval = self->_onConnectedInterval;
    *&self->_startedConnected = 257;
  }

  else
  {
    onConnectedInterval = self->_onDisconnectedInterval;
    v6 = 1.79769313e308;
  }

  self->_connectedTime = v6;
  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timerFired:" selector:0 userInfo:0 repeats:onConnectedInterval];
  metricSubmitTimer = self->_metricSubmitTimer;
  self->_metricSubmitTimer = v8;

  _objc_release_x1();
}

- (void)noteDidConnect
{
  if (self->_state == 1)
  {
    if (self->_didConnect)
    {
      if (self->_startedConnected && self->_tentativeConnectedTime < 2.22044605e-16 && !self->_hasReceivedStoredMessage)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        self->_tentativeConnectedTime = v3;
      }
    }

    else
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_connectedTime = v4;
      self->_didConnect = 1;
    }
  }
}

- (void)noteReceivedStoredMessage
{
  if (self->_state == 1)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastSignificantTime = v3;
    tentativeConnectedTime = self->_tentativeConnectedTime;
    if (tentativeConnectedTime > 2.22044605e-16)
    {
      self->_connectedTime = tentativeConnectedTime;
    }

    self->_tentativeConnectedTime = 0.0;
    self->_hasReceivedStoredMessage = 1;
  }
}

- (void)_timerFired:(id)a3
{
  metricSubmitTimer = self->_metricSubmitTimer;
  self->_metricSubmitTimer = 0;

  [(APSWakeMetricTracker *)self _fireMetricIfNeeded];
}

- (void)_clearState
{
  [(NSTimer *)self->_metricSubmitTimer invalidate];
  metricSubmitTimer = self->_metricSubmitTimer;
  self->_metricSubmitTimer = 0;

  self->_lastSignificantTime = 0.0;
  *&self->_startedConnected = 0;
  self->_startTime = 0.0;
  self->_connectedTime = 0.0;
  self->_state = 0;
}

@end
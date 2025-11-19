@interface VOTTVGestureRepeater
- (SCRCThread)targetThread;
- (VOTTVGestureRepeater)initWithThread:(id)a3;
- (VOTTVGestureRepeaterDelegate)delegate;
- (int64_t)_currentGestureRepeaterEvent;
- (int64_t)_repeatStateForEvent:(id)a3;
- (void)_handleRepeaterTimerDidFire:(id)a3;
- (void)dealloc;
- (void)updateWithEvent:(id)a3;
@end

@implementation VOTTVGestureRepeater

- (VOTTVGestureRepeater)initWithThread:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VOTTVGestureRepeater;
  v5 = [(VOTTVGestureRepeater *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(VOTTVGestureRepeater *)v5 setTargetThread:v4];
    v6->_currentRepeatState = 4;
    v7 = objc_allocWithZone(SCRCTargetSelectorTimer);
    v8 = [(VOTTVGestureRepeater *)v6 targetThread];
    v9 = [v7 initWithTarget:v6 selector:"_handleRepeaterTimerDidFire:" thread:v8];

    [(VOTTVGestureRepeater *)v6 setRepeaterTimer:v9];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100057D10;
    v15[3] = &unk_1001C7710;
    v12 = v6;
    v16 = v12;
    v13 = [v10 addObserverForName:@"VOTEventFactoryDidReceiveSelectButtonUpEvent" object:0 queue:v11 usingBlock:v15];
    [(VOTTVGestureRepeater *)v12 setSelectButtonReceivedNotificationObserverToken:v13];
  }

  return v6;
}

- (void)dealloc
{
  [(VOTTVGestureRepeater *)self setDelegate:0];
  [(VOTTVGestureRepeater *)self setTargetThread:0];
  v3 = [(VOTTVGestureRepeater *)self repeaterTimer];
  [v3 invalidate];

  [(VOTTVGestureRepeater *)self setRepeaterTimer:0];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(VOTTVGestureRepeater *)self selectButtonReceivedNotificationObserverToken];
  [v4 removeObserver:v5];

  [(VOTTVGestureRepeater *)self setSelectButtonReceivedNotificationObserverToken:0];
  v6.receiver = self;
  v6.super_class = VOTTVGestureRepeater;
  [(VOTTVGestureRepeater *)&v6 dealloc];
}

- (void)updateWithEvent:(id)a3
{
  v17 = a3;
  v4 = [v17 command];
  v5 = [v4 isEqualToString:kVOTEventCommandIdle];

  if (v5)
  {
    v6 = [(VOTTVGestureRepeater *)self repeaterTimer];
    [v6 cancel];

    *&self->_currentRepeatState = xmmword_10017E2E0;
    self->_isSendingFirstRepeatEvent = 1;
LABEL_7:
    v11 = v17;
    goto LABEL_8;
  }

  v7 = [v17 command];
  v8 = [v7 isEqualToString:kVOTEventCommandTracking];

  if (!v8)
  {
    _AXLogWithFacility();
    goto LABEL_7;
  }

  v9 = [(VOTTVGestureRepeater *)self _repeatStateForEvent:v17];
  if (v9 == 5)
  {
    v10 = [(VOTTVGestureRepeater *)self repeaterTimer];
    [v10 cancel];

    *&self->_currentRepeatState = xmmword_10017E2D0;
    goto LABEL_7;
  }

  v12 = v9;
  v13 = v9 > 3;
  v11 = v17;
  if (!v13)
  {
    currentRepeatState = self->_currentRepeatState;
    if (currentRepeatState == 4)
    {
      self->_currentRepeatState = v12;
    }

    else if (currentRepeatState != v12)
    {
      v15 = [(VOTTVGestureRepeater *)self repeaterTimer];
      [v15 cancel];

      self->_currentRepeatState = v12;
      self->_currentRepeatCount = 0;
      v16 = [(VOTTVGestureRepeater *)self repeaterTimer];
      [v16 dispatchAfterDelay:0.5];

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_handleRepeaterTimerDidFire:(id)a3
{
  if (self->_isSendingFirstRepeatEvent)
  {
    v4 = [(VOTTVGestureRepeater *)self delegate];
    [v4 gestureRepeaterWillSendFirstRepeaterEvent:self];

    self->_isSendingFirstRepeatEvent = 0;
  }

  v5 = [(VOTTVGestureRepeater *)self delegate];
  [v5 gestureRepeater:self repeaterEventDidFire:{-[VOTTVGestureRepeater _currentGestureRepeaterEvent](self, "_currentGestureRepeaterEvent")}];

  v6 = [(VOTTVGestureRepeater *)self repeaterTimer];
  [(VOTTVGestureRepeater *)self _delayForCurrentRepeatCount];
  [v6 dispatchAfterDelay:?];

  ++self->_currentRepeatCount;
}

- (int64_t)_currentGestureRepeaterEvent
{
  v2 = self->_currentRepeatState - 1;
  if (v2 > 4)
  {
    return 1;
  }

  else
  {
    return qword_10017E2F0[v2];
  }
}

- (int64_t)_repeatStateForEvent:(id)a3
{
  v3 = a3;
  [v3 touchRawLocation];
  if (sqrt((v5 + -0.5) * (v5 + -0.5) + (v4 + -0.5) * (v4 + -0.5)) >= 0.34)
  {
    v7 = [v3 tvTouchPadRegion];
    if (v7 >= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 5;
  }

  return v6;
}

- (VOTTVGestureRepeaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCRCThread)targetThread
{
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);

  return WeakRetained;
}

@end
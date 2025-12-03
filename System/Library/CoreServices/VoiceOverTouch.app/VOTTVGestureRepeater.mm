@interface VOTTVGestureRepeater
- (SCRCThread)targetThread;
- (VOTTVGestureRepeater)initWithThread:(id)thread;
- (VOTTVGestureRepeaterDelegate)delegate;
- (int64_t)_currentGestureRepeaterEvent;
- (int64_t)_repeatStateForEvent:(id)event;
- (void)_handleRepeaterTimerDidFire:(id)fire;
- (void)dealloc;
- (void)updateWithEvent:(id)event;
@end

@implementation VOTTVGestureRepeater

- (VOTTVGestureRepeater)initWithThread:(id)thread
{
  threadCopy = thread;
  v17.receiver = self;
  v17.super_class = VOTTVGestureRepeater;
  v5 = [(VOTTVGestureRepeater *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(VOTTVGestureRepeater *)v5 setTargetThread:threadCopy];
    v6->_currentRepeatState = 4;
    v7 = objc_allocWithZone(SCRCTargetSelectorTimer);
    targetThread = [(VOTTVGestureRepeater *)v6 targetThread];
    v9 = [v7 initWithTarget:v6 selector:"_handleRepeaterTimerDidFire:" thread:targetThread];

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
  repeaterTimer = [(VOTTVGestureRepeater *)self repeaterTimer];
  [repeaterTimer invalidate];

  [(VOTTVGestureRepeater *)self setRepeaterTimer:0];
  v4 = +[NSNotificationCenter defaultCenter];
  selectButtonReceivedNotificationObserverToken = [(VOTTVGestureRepeater *)self selectButtonReceivedNotificationObserverToken];
  [v4 removeObserver:selectButtonReceivedNotificationObserverToken];

  [(VOTTVGestureRepeater *)self setSelectButtonReceivedNotificationObserverToken:0];
  v6.receiver = self;
  v6.super_class = VOTTVGestureRepeater;
  [(VOTTVGestureRepeater *)&v6 dealloc];
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  v5 = [command isEqualToString:kVOTEventCommandIdle];

  if (v5)
  {
    repeaterTimer = [(VOTTVGestureRepeater *)self repeaterTimer];
    [repeaterTimer cancel];

    *&self->_currentRepeatState = xmmword_10017E2E0;
    self->_isSendingFirstRepeatEvent = 1;
LABEL_7:
    v11 = eventCopy;
    goto LABEL_8;
  }

  command2 = [eventCopy command];
  v8 = [command2 isEqualToString:kVOTEventCommandTracking];

  if (!v8)
  {
    _AXLogWithFacility();
    goto LABEL_7;
  }

  v9 = [(VOTTVGestureRepeater *)self _repeatStateForEvent:eventCopy];
  if (v9 == 5)
  {
    repeaterTimer2 = [(VOTTVGestureRepeater *)self repeaterTimer];
    [repeaterTimer2 cancel];

    *&self->_currentRepeatState = xmmword_10017E2D0;
    goto LABEL_7;
  }

  v12 = v9;
  v13 = v9 > 3;
  v11 = eventCopy;
  if (!v13)
  {
    currentRepeatState = self->_currentRepeatState;
    if (currentRepeatState == 4)
    {
      self->_currentRepeatState = v12;
    }

    else if (currentRepeatState != v12)
    {
      repeaterTimer3 = [(VOTTVGestureRepeater *)self repeaterTimer];
      [repeaterTimer3 cancel];

      self->_currentRepeatState = v12;
      self->_currentRepeatCount = 0;
      repeaterTimer4 = [(VOTTVGestureRepeater *)self repeaterTimer];
      [repeaterTimer4 dispatchAfterDelay:0.5];

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_handleRepeaterTimerDidFire:(id)fire
{
  if (self->_isSendingFirstRepeatEvent)
  {
    delegate = [(VOTTVGestureRepeater *)self delegate];
    [delegate gestureRepeaterWillSendFirstRepeaterEvent:self];

    self->_isSendingFirstRepeatEvent = 0;
  }

  delegate2 = [(VOTTVGestureRepeater *)self delegate];
  [delegate2 gestureRepeater:self repeaterEventDidFire:{-[VOTTVGestureRepeater _currentGestureRepeaterEvent](self, "_currentGestureRepeaterEvent")}];

  repeaterTimer = [(VOTTVGestureRepeater *)self repeaterTimer];
  [(VOTTVGestureRepeater *)self _delayForCurrentRepeatCount];
  [repeaterTimer dispatchAfterDelay:?];

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

- (int64_t)_repeatStateForEvent:(id)event
{
  eventCopy = event;
  [eventCopy touchRawLocation];
  if (sqrt((v5 + -0.5) * (v5 + -0.5) + (v4 + -0.5) * (v4 + -0.5)) >= 0.34)
  {
    tvTouchPadRegion = [eventCopy tvTouchPadRegion];
    if (tvTouchPadRegion >= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = tvTouchPadRegion;
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
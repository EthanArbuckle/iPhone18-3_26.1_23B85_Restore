@interface AXTouchAccommodationsEventProcessor
- (AXTouchAccommodationsEventProcessorDelegate)delegate;
- (BOOL)_bypassForSwipeGestureDueToEvent:(id)a3;
- (BOOL)_handleEvent:(id)a3;
- (BOOL)_handleTimerEvents;
- (BOOL)_shouldAllowBypassForSwipeGestures;
- (BOOL)_shouldPassAlongWithoutHandlingEvent:(id)a3;
- (double)_distanceBetweenPath:(id)a3 otherPath:(id)a4;
- (double)_minimumDistanceForSwipeGestureBypass;
- (id)_pathAtInitialTouchForPathIndex:(unint64_t)a3;
- (id)_pathAtPreviousPointForPathIndex:(unint64_t)a3;
- (void)_clearEventsToReplayForSwipeGestureBypass;
- (void)_endHoldDurationAndAllowTapAssistance:(BOOL)a3;
- (void)_handleEventAfterTimerEnd;
- (void)_handleHoldDurationAfterTimerBegan;
- (void)_handleTapActivationAfterTimerBegan;
- (void)_handleTapActivationMethodActivateOnRelease;
- (void)_handleTapActivationMethodActivateOnTouch;
- (void)_initiateHoldDurationTimer;
- (void)_initiateIgnoreRepeatTimer;
- (void)_initiateTapTimeoutTimer;
- (void)_notifyUserEventOccurred;
- (void)_processTimerEventsFromCurrentState;
- (void)_sendFakeEvent:(id)a3 forTheFirstTime:(BOOL)a4;
- (void)_sendFakeEventAfterTimerEnded:(id)a3;
- (void)_setTimerState:(int64_t)a3;
- (void)_trackUpdateStatusForEvent:(id)a3;
- (void)_updateTouchAccommodationsBasedOnTapActivation;
- (void)dealloc;
- (void)disableSleepTimer:(BOOL)a3;
@end

@implementation AXTouchAccommodationsEventProcessor

- (void)dealloc
{
  [(AXDispatchTimer *)self->_tapTimeoutTimer cancel];
  [(AXDispatchTimer *)self->_holdDurationTimer cancel];
  [(AXDispatchTimer *)self->_ignoreRepeatTimer cancel];
  [(BSInvalidatable *)self->_sleepTimerDisabledAssertion invalidate];
  v3.receiver = self;
  v3.super_class = AXTouchAccommodationsEventProcessor;
  [(AXTouchAccommodationsEventProcessor *)&v3 dealloc];
}

- (void)_setTimerState:(int64_t)a3
{
  state = self->_state;
  if (state == a3)
  {
    if (a3 != 2)
    {
      return;
    }

    self->_state = 2;
    [(AXTouchAccommodationsEventProcessor *)self _initiateTapTimeoutTimer];
    v6 = [(AXTouchAccommodationsEventProcessor *)self delegate];
    v7 = [(AXTouchAccommodationsEventProcessor *)self event];
    v8 = [v7 handInfo];
    v9 = [v8 paths];
    [v6 eventProcessor:self didResetTouchAccommodationsProgressAtPathInfos:v9];
    goto LABEL_4;
  }

  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        if (state == 4)
        {
          if (a3 != 3)
          {
            if (a3)
            {
              return;
            }

            self->_state = 0;
            goto LABEL_50;
          }

          goto LABEL_37;
        }

LABEL_33:
        if (a3)
        {
          return;
        }

        goto LABEL_50;
      }

      if (a3)
      {
        return;
      }

      goto LABEL_26;
    }

    v10 = [(AXTouchAccommodationsEventProcessor *)self delegate];
    [v10 didStopTimersInEventProcessor:self];

    if (!a3)
    {
LABEL_26:
      self->_state = 0;
      [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:0];
      goto LABEL_50;
    }

    if (a3 == 3)
    {
      self->_state = 3;
      goto LABEL_45;
    }

    if (a3 != 4)
    {
      return;
    }

    self->_state = 4;
    [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:0];
    goto LABEL_41;
  }

  if (state)
  {
    if (state != 1)
    {
      goto LABEL_33;
    }

    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 != 2)
        {
          return;
        }

        self->_state = 2;
        [(AXTouchAccommodationsEventProcessor *)self _initiateTapTimeoutTimer];
        [(AXTouchAccommodationsEventProcessor *)self _updateTouchAccommodationsBasedOnTapActivation];
        goto LABEL_5;
      }

      self->_state = 0;
      [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:0];
      v16 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      [v16 didStopTimersInEventProcessor:self];

      goto LABEL_50;
    }

    if (a3 == 3)
    {
      v17 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      [v17 didStopTimersInEventProcessor:self];

      self->_state = 0;
      return;
    }

    if (a3 != 4)
    {
      return;
    }

    self->_state = 4;
    [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:0];
    v15 = [(AXTouchAccommodationsEventProcessor *)self delegate];
    [v15 didStopTimersInEventProcessor:self];

LABEL_41:

    [(AXTouchAccommodationsEventProcessor *)self _handleEventAfterTimerEnd];
    return;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      self->_state = 2;
      [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:1];
      [(AXTouchAccommodationsEventProcessor *)self _initiateTapTimeoutTimer];
      v6 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      v7 = [(AXTouchAccommodationsEventProcessor *)self event];
      v8 = [v7 handInfo];
      v9 = [v8 paths];
      [v6 eventProcessor:self didUpdateTouchAccommodationsAtPathInfos:v9];
LABEL_4:

LABEL_5:

      [(AXTouchAccommodationsEventProcessor *)self _handleTapActivationAfterTimerBegan];
      return;
    }

    if (a3 != 3)
    {
      return;
    }

LABEL_37:
    self->_state = 3;
    [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:1];
LABEL_45:

    [(AXTouchAccommodationsEventProcessor *)self _initiateIgnoreRepeatTimer];
    return;
  }

  if (!a3)
  {
LABEL_50:

    [(AXTouchAccommodationsEventProcessor *)self _clearEventsToReplayForSwipeGestureBypass];
    return;
  }

  if (a3 == 1)
  {
    self->_state = 1;
    [(AXTouchAccommodationsEventProcessor *)self disableSleepTimer:1];
    [(AXTouchAccommodationsEventProcessor *)self _initiateHoldDurationTimer];
    v11 = [(AXTouchAccommodationsEventProcessor *)self delegate];
    v12 = [(AXTouchAccommodationsEventProcessor *)self event];
    v13 = [v12 handInfo];
    v14 = [v13 paths];
    [v11 eventProcessor:self didUpdateTouchAccommodationsAtPathInfos:v14];

    [(AXTouchAccommodationsEventProcessor *)self _handleHoldDurationAfterTimerBegan];
  }
}

- (void)_initiateHoldDurationTimer
{
  [(AXTouchAccommodationsEventProcessor *)self setShouldSendFakeTouchDownIfNeeded:1];
  [(AXDispatchTimer *)self->_holdDurationTimer cancel];
  objc_initWeak(&location, self);
  holdDurationTimer = self->_holdDurationTimer;
  v4 = +[AXSettings sharedInstance];
  [v4 touchAccommodationsHoldDuration];
  v6 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4FD0;
  v7[3] = &unk_105F8;
  objc_copyWeak(&v8, &location);
  [(AXDispatchTimer *)holdDurationTimer afterDelay:v7 processBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_initiateTapTimeoutTimer
{
  [(AXTouchAccommodationsEventProcessor *)self setShouldSendFakeTouchDownIfNeeded:1];
  [(AXDispatchTimer *)self->_tapTimeoutTimer cancel];
  objc_initWeak(&location, self);
  tapTimeoutTimer = self->_tapTimeoutTimer;
  v4 = +[AXSettings sharedInstance];
  [v4 touchAccommodationsTapActivationTimeout];
  v6 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5128;
  v7[3] = &unk_105F8;
  objc_copyWeak(&v8, &location);
  [(AXDispatchTimer *)tapTimeoutTimer afterDelay:v7 processBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_initiateIgnoreRepeatTimer
{
  [(AXDispatchTimer *)self->_ignoreRepeatTimer cancel];
  objc_initWeak(&location, self);
  ignoreRepeatTimer = self->_ignoreRepeatTimer;
  v4 = +[AXSettings sharedInstance];
  [v4 touchAccommodationsIgnoreRepeatDuration];
  v6 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5278;
  v7[3] = &unk_105F8;
  objc_copyWeak(&v8, &location);
  [(AXDispatchTimer *)ignoreRepeatTimer afterDelay:v7 processBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_handleEventAfterTimerEnd
{
  v3 = [(AXTouchAccommodationsEventProcessor *)self event];
  v4 = [v3 handInfo];
  v5 = -[AXTouchAccommodationsEventProcessor _isLiftEvent:](self, "_isLiftEvent:", [v4 eventType]);

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 touchAccommodationsIgnoreRepeatEnabled];

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    [(AXTouchAccommodationsEventProcessor *)self _setTimerState:v8];
    v9 = [(AXTouchAccommodationsEventProcessor *)self event];
    [AXTouchAccommodationsEventProcessor _sendFakeEvent:"_sendFakeEvent:forTheFirstTime:" forTheFirstTime:?];
  }

  else
  {
    v9 = [(AXTouchAccommodationsEventProcessor *)self event];
    [(AXTouchAccommodationsEventProcessor *)self _sendFakeEventAfterTimerEnded:?];
  }
}

- (void)_processTimerEventsFromCurrentState
{
  state = self->_state;
  switch(state)
  {
    case 1:
      [(AXTouchAccommodationsEventProcessor *)self _handleHoldDurationAfterTimerBegan];
      break;
    case 2:
      [(AXTouchAccommodationsEventProcessor *)self _handleTapActivationAfterTimerBegan];
      break;
    case 4:
      [(AXTouchAccommodationsEventProcessor *)self _handleEventAfterTimerEnd];
      break;
  }
}

- (BOOL)_handleTimerEvents
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 touchAccommodationsHoldDurationEnabled])
  {
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 touchAccommodationsTapActivationMethod];

    if (!v5)
    {
      return 0;
    }
  }

  hidDispatchQueue = self->_hidDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_54C0;
  block[3] = &unk_10420;
  block[4] = self;
  dispatch_async(hidDispatchQueue, block);
  return 1;
}

- (void)_sendFakeEventAfterTimerEnded:(id)a3
{
  v5 = a3;
  v4 = [(AXTouchAccommodationsEventProcessor *)self shouldSendFakeTouchDownIfNeeded];
  if (v4)
  {
    [(AXTouchAccommodationsEventProcessor *)self setShouldSendFakeTouchDownIfNeeded:0];
  }

  [(AXTouchAccommodationsEventProcessor *)self _sendFakeEvent:v5 forTheFirstTime:v4];
}

- (void)_trackUpdateStatusForEvent:(id)a3
{
  v10 = a3;
  if ([v10 willBeUpdated])
  {
    v4 = [v10 generationCount];
    p_generationsLock = &self->_generationsLock;
    os_unfair_lock_lock(&self->_generationsLock);
    sentGenerationsAnticipatingUpdate = self->_sentGenerationsAnticipatingUpdate;
    v7 = [NSNumber numberWithLong:v4];
    [(NSMutableSet *)sentGenerationsAnticipatingUpdate addObject:v7];
  }

  else
  {
    if (![v10 isUpdate])
    {
      goto LABEL_6;
    }

    v8 = [v10 generationCount];
    p_generationsLock = &self->_generationsLock;
    os_unfair_lock_lock(&self->_generationsLock);
    v9 = self->_sentGenerationsAnticipatingUpdate;
    v7 = [NSNumber numberWithLong:v8];
    [(NSMutableSet *)v9 removeObject:v7];
  }

  os_unfair_lock_unlock(p_generationsLock);
LABEL_6:
}

- (void)_sendFakeEvent:(id)a3 forTheFirstTime:(BOOL)a4
{
  v6 = a3;
  [(AXTouchAccommodationsEventProcessor *)self _willSendEvent:v6];
  hidDispatchQueue = self->_hidDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_57D8;
  block[3] = &unk_10620;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(hidDispatchQueue, block);
}

- (void)_handleTapActivationMethodActivateOnTouch
{
  v3 = [(AXTouchAccommodationsEventProcessor *)self initialTouchEvent];
  [(AXTouchAccommodationsEventProcessor *)self _willSendEvent:v3];

  hidDispatchQueue = self->_hidDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_596C;
  block[3] = &unk_10420;
  block[4] = self;
  dispatch_async(hidDispatchQueue, block);
}

- (void)_handleTapActivationMethodActivateOnRelease
{
  v3 = [(AXTouchAccommodationsEventProcessor *)self finalTouchEvent];
  [(AXTouchAccommodationsEventProcessor *)self _willSendEvent:v3];

  hidDispatchQueue = self->_hidDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5B08;
  block[3] = &unk_10420;
  block[4] = self;
  dispatch_async(hidDispatchQueue, block);
}

- (id)_pathAtPreviousPointForPathIndex:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_pointOfReferencePaths;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 pathIndex] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_handleTapActivationAfterTimerBegan
{
  v3 = [(AXTouchAccommodationsEventProcessor *)self event];
  v4 = [v3 handInfo];
  v5 = -[AXTouchAccommodationsEventProcessor _isLiftEvent:](self, "_isLiftEvent:", [v4 eventType]);

  if (v5)
  {
    [(AXTouchAccommodationsEventProcessor *)self _setTimerState:0];
    [(AXDispatchTimer *)self->_tapTimeoutTimer cancel];
    v6 = +[AXSettings sharedInstance];
    if ([v6 touchAccommodationsTapActivationMethod] == &dword_0 + 1)
    {
      [(AXTouchAccommodationsEventProcessor *)self _handleTapActivationMethodActivateOnTouch];
    }

    else if ([v6 touchAccommodationsTapActivationMethod] == &dword_0 + 2)
    {
      v7 = [(AXTouchAccommodationsEventProcessor *)self event];
      v8 = [v7 copy];
      finalTouchEvent = self->_finalTouchEvent;
      self->_finalTouchEvent = v8;

      [(AXTouchAccommodationsEventProcessor *)self _handleTapActivationMethodActivateOnRelease];
    }
  }

  v10 = [(AXTouchAccommodationsEventProcessor *)self event];
  v11 = [v10 handInfo];
  v12 = [v11 eventType];

  if (v12 == 2)
  {
    v13 = +[AXSettings sharedInstance];
    v14 = [v13 touchAccommodationsTapActivationMethod];

    if (v14 == &dword_0 + 2)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [(AXTouchAccommodationsEventProcessor *)self event];
      v16 = [v15 handInfo];
      v17 = [v16 paths];

      v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v29 + 1) + 8 * i);
            v23 = -[AXTouchAccommodationsEventProcessor _pathAtPreviousPointForPathIndex:](self, "_pathAtPreviousPointForPathIndex:", [v22 pathIndex]);
            [(AXTouchAccommodationsEventProcessor *)self _distanceBetweenPath:v22 otherPath:v23];
            if (v24 > 40.0)
            {
              v25 = [(AXTouchAccommodationsEventProcessor *)self event];
              v26 = [v25 handInfo];
              v27 = [v26 paths];
              pointOfReferencePaths = self->_pointOfReferencePaths;
              self->_pointOfReferencePaths = v27;

              [(AXTouchAccommodationsEventProcessor *)self _setTimerState:2];
              goto LABEL_19;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }
  }
}

- (void)_updateTouchAccommodationsBasedOnTapActivation
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 touchAccommodationsTapActivationMethod];

  if (v4 != &dword_0 + 1)
  {
    v8 = [(AXTouchAccommodationsEventProcessor *)self delegate];
    v5 = [(AXTouchAccommodationsEventProcessor *)self event];
    v6 = [v5 handInfo];
    v7 = [v6 paths];
    [v8 eventProcessor:self didUpdateTouchAccommodationsAtPathInfos:v7];
  }
}

- (void)_handleHoldDurationAfterTimerBegan
{
  v3 = [(AXTouchAccommodationsEventProcessor *)self event];
  v4 = [v3 handInfo];
  v5 = -[AXTouchAccommodationsEventProcessor _isLiftEvent:](self, "_isLiftEvent:", [v4 eventType]);

  if (!v5)
  {
    return;
  }

  [(AXDispatchTimer *)self->_holdDurationTimer cancel];
  Current = CFAbsoluteTimeGetCurrent();
  v7 = Current;
  holdDurationCancelCount = self->_holdDurationCancelCount;
  if (!holdDurationCancelCount)
  {
    self->_firstHoldDurationCancelTime = Current;
    v11 = 1;
LABEL_9:
    self->_holdDurationCancelCount = v11;
    goto LABEL_10;
  }

  v9 = holdDurationCancelCount + 1;
  self->_holdDurationCancelCount = v9;
  if (v9 >= 0xA)
  {
    if (Current - self->_firstHoldDurationCancelTime <= 3.0)
    {
      v10 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      [v10 panickedHoldDurationInEventProcessor:self];
    }

    v11 = 0;
    goto LABEL_9;
  }

LABEL_10:
  if (v7 - self->_firstHoldDurationCancelTime > 3.0)
  {
    self->_holdDurationCancelCount = 0;
  }

  [(AXTouchAccommodationsEventProcessor *)self _setTimerState:0];
}

- (void)_endHoldDurationAndAllowTapAssistance:(BOOL)a3
{
  v3 = a3;
  [(AXDispatchTimer *)self->_holdDurationTimer cancel];
  state = self->_state;
  v6 = AXLogTouchAccommodations();
  v7 = v6;
  if (state == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_79F0(v7);
    }

    v8 = +[AXSettings sharedInstance];
    v9 = [v8 touchAccommodationsTapActivationMethod];

    if (v9 && v3)
    {
      v10 = self;
      v11 = 2;
    }

    else
    {
      [(AXTouchAccommodationsEventProcessor *)self _clearEventsToReplayForSwipeGestureBypass];
      v10 = self;
      v11 = 4;
    }

    [(AXTouchAccommodationsEventProcessor *)v10 _setTimerState:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_7974(&self->_state, v7);
    }
  }
}

- (BOOL)_shouldPassAlongWithoutHandlingEvent:(id)a3
{
  v4 = a3;
  if ([v4 isUpdate])
  {
    os_unfair_lock_lock(&self->_generationsLock);
    sentGenerationsAnticipatingUpdate = self->_sentGenerationsAnticipatingUpdate;
    v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 generationCount]);
    v7 = [(NSMutableSet *)sentGenerationsAnticipatingUpdate containsObject:v6];

    os_unfair_lock_unlock(&self->_generationsLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldAllowBypassForSwipeGestures
{
  if ((self->_state - 1) > 1)
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsAllowsSwipeGesturesToBypass];

  return v3;
}

- (id)_pathAtInitialTouchForPathIndex:(unint64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(AXTouchAccommodationsEventProcessor *)self initialTouchEvent];
  v5 = [v4 handInfo];
  v6 = [v5 paths];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 pathIndex] == a3)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (double)_minimumDistanceForSwipeGestureBypass
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsSwipeGestureMinimumDistance];
  v4 = v3;

  return v4;
}

- (BOOL)_bypassForSwipeGestureDueToEvent:(id)a3
{
  v4 = a3;
  if (![(AXTouchAccommodationsEventProcessor *)self _shouldAllowBypassForSwipeGestures])
  {
    _AXAssert();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 handInfo];
  v6 = [v5 paths];

  v7 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v7)
  {
    v9 = *v36;
    *&v8 = 138477827;
    v29 = v8;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v35 + 1) + 8 * v10);
      v12 = -[AXTouchAccommodationsEventProcessor _pathAtInitialTouchForPathIndex:](self, "_pathAtInitialTouchForPathIndex:", [v11 pathIndex]);
      if (v12)
      {
        [(AXTouchAccommodationsEventProcessor *)self _distanceBetweenPath:v11 otherPath:v12];
        v14 = v13;
        [(AXTouchAccommodationsEventProcessor *)self _minimumDistanceForSwipeGestureBypass];
        if (v14 >= v15)
        {
          v17 = AXLogTouchAccommodations();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_7A90();
          }

          v19 = AXLogTouchAccommodations();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            sub_7B08();
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v41 = 0x3032000000;
          v42 = sub_6A18;
          v43 = sub_6A28;
          v44 = 0;
          eventsToReplayLock = self->_eventsToReplayLock;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_6A30;
          block[3] = &unk_10648;
          block[4] = self;
          block[5] = &buf;
          dispatch_sync(eventsToReplayLock, block);
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v21 = *(*(&buf + 1) + 40);
          v22 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v22)
          {
            v23 = *v31;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v31 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v30 + 1) + 8 * i);
                [(AXTouchAccommodationsEventProcessor *)self _willSendEvent:v25];
                [(AXTouchAccommodationsEventProcessor *)self _sendHIDEventUnconditionally:v25 shouldUseOriginalTime:1];
              }

              v22 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v22);
          }

          [(AXTouchAccommodationsEventProcessor *)self setShouldSendFakeTouchDownIfNeeded:0];
          state = self->_state;
          if (state != 2)
          {
            if (state == 1)
            {
              [(AXTouchAccommodationsEventProcessor *)self _endHoldDurationAndAllowTapAssistance:0];
LABEL_34:
              _Block_object_dispose(&buf, 8);

              v27 = 1;
              goto LABEL_35;
            }

            _AXAssert();
          }

          [(AXTouchAccommodationsEventProcessor *)self _setTimerState:4];
          goto LABEL_34;
        }
      }

      else
      {
        v16 = AXLogTouchAccommodations();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = v29;
          *(&buf + 4) = v11;
          _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "Path with no initial touch path: %{private}@", &buf, 0xCu);
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v27 = 0;
LABEL_35:

  return v27;
}

- (void)_clearEventsToReplayForSwipeGestureBypass
{
  v3 = AXLogTouchAccommodations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_7B48();
  }

  eventsToReplayLock = self->_eventsToReplayLock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6B30;
  block[3] = &unk_10420;
  block[4] = self;
  dispatch_sync(eventsToReplayLock, block);
}

- (BOOL)_handleEvent:(id)a3
{
  v4 = a3;
  [(AXTouchAccommodationsEventProcessor *)self _notifyUserEventOccurred];
  v5 = +[AXSettings sharedInstance];
  v6 = [v4 handInfo];
  v7 = [v6 eventType];

  v8 = [v4 senderID];
  updateSetMaintenanceTimer = self->_updateSetMaintenanceTimer;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_7140;
  v48[3] = &unk_10420;
  v48[4] = self;
  [(AXDispatchTimer *)updateSetMaintenanceTimer afterDelay:v48 processBlock:30.0];
  if ([v5 touchAccommodationsUsageConfirmed] && (v8 + 0x7FFFFFF7E8CE6C8FLL >= 9 || ((0x12Bu >> (v8 - 113)) & 1) == 0) && !_AXSVoiceOverTouchEnabled())
  {
    v12 = [v4 copy];
    hidDispatchQueue = self->_hidDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_71DC;
    block[3] = &unk_10530;
    block[4] = self;
    v14 = v12;
    v47 = v14;
    dispatch_async(hidDispatchQueue, block);
    if ([(AXTouchAccommodationsEventProcessor *)self _shouldPassAlongWithoutHandlingEvent:v4])
    {
LABEL_8:
      [(AXTouchAccommodationsEventProcessor *)self _trackUpdateStatusForEvent:v4, v27, v28, v29, v30, v31];
      v10 = 0;
LABEL_37:

      goto LABEL_6;
    }

    if ([v4 isUpdate])
    {
LABEL_36:
      v10 = 1;
      goto LABEL_37;
    }

    if ([v5 touchAccommodationsHoldDurationEnabled] && self->_state == 1)
    {
      v15 = self->_hidDispatchQueue;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_71E4;
      v45[3] = &unk_10420;
      v45[4] = self;
      dispatch_async(v15, v45);
    }

    if ([v5 touchAccommodationsTapActivationMethod] && self->_state == 2)
    {
      v16 = self->_hidDispatchQueue;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_71EC;
      v44[3] = &unk_10420;
      v44[4] = self;
      dispatch_async(v16, v44);
    }

    if (v7 != 1)
    {
      if (self->_touchEventAfterIgnoreRepeatTimerBegan)
      {
        v18 = 1;
      }

      else
      {
        v18 = [(AXTouchAccommodationsEventProcessor *)self _handleTimerEvents];
      }

      if (![(AXTouchAccommodationsEventProcessor *)self _isLiftEvent:v7])
      {
LABEL_35:
        v26 = self->_hidDispatchQueue;
        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_7374;
        v30 = &unk_10670;
        v31 = self;
        v32 = v4;
        v33 = v14;
        dispatch_async(v26, &v27);

        if ((v18 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_36;
      }

      v19 = self->_hidDispatchQueue;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_72EC;
      v34[3] = &unk_10698;
      v35 = v5;
      v36 = self;
      v37 = v7;
      dispatch_async(v19, v34);
      v20 = v35;
LABEL_34:

      goto LABEL_35;
    }

    state = self->_state;
    if (state)
    {
      if (state == 3)
      {
        v18 = 1;
        self->_touchEventAfterIgnoreRepeatTimerBegan = 1;
        goto LABEL_35;
      }

      if (self->_touchEventAfterIgnoreRepeatTimerBegan)
      {
        v18 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      self->_touchEventAfterIgnoreRepeatTimerBegan = 0;
    }

    v21 = self->_hidDispatchQueue;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_71F4;
    v42[3] = &unk_10530;
    v42[4] = self;
    v43 = v14;
    dispatch_async(v21, v42);
    if ([v5 touchAccommodationsHoldDurationEnabled])
    {
      v22 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      [v22 willStartTimersInEventProcessor:self];

      v23 = self->_hidDispatchQueue;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_7248;
      v41[3] = &unk_10420;
      v41[4] = self;
      dispatch_async(v23, v41);
    }

    else
    {
      if (![v5 touchAccommodationsTapActivationMethod])
      {
        v18 = 0;
        goto LABEL_33;
      }

      v24 = [(AXTouchAccommodationsEventProcessor *)self delegate];
      [v24 willStartTimersInEventProcessor:self];

      v25 = self->_hidDispatchQueue;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_7254;
      v38[3] = &unk_10670;
      v38[4] = self;
      v39 = v5;
      v40 = v4;
      dispatch_async(v25, v38);
    }

    v18 = 1;
LABEL_33:
    v20 = v43;
    goto LABEL_34;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)disableSleepTimer:(BOOL)a3
{
  sleepTimerDisabledAssertion = self->_sleepTimerDisabledAssertion;
  if (a3)
  {
    if (sleepTimerDisabledAssertion)
    {
      return;
    }

    v8 = +[AXUserEventTimer sharedInstance];
    v5 = [v8 acquireAssertionToDisableIdleTimerWithReason:@"TouchAccommodations"];
    v6 = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = v5;

    v7 = v8;
  }

  else
  {
    if (!sleepTimerDisabledAssertion)
    {
      return;
    }

    [(BSInvalidatable *)sleepTimerDisabledAssertion invalidate];
    v7 = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = 0;
  }
}

- (void)_notifyUserEventOccurred
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_760C;
  block[3] = &unk_10420;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)_distanceBetweenPath:(id)a3 otherPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  AXDeviceGetMainScreenBounds();
  v8 = v7;
  v10 = v9;
  [v6 pathLocation];
  v12 = v11;
  v14 = v13;

  [v5 pathLocation];
  v16 = v15;
  v18 = v17;

  v19.n128_f64[0] = v12 * v8;
  v20.n128_f64[0] = v14 * v10;
  v21.n128_f64[0] = v8 * v16;
  v22.n128_f64[0] = v10 * v18;
  _AX_CGPointGetDistanceToPoint(v19, v20, v21, v22);
  return result;
}

- (AXTouchAccommodationsEventProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
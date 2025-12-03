@interface CAMHalfPressContactRecognizer
- (BOOL)_isValidDoubleHalfPressWithAction:(id)action;
- (CAMHalfPressContactRecognizer)init;
- (CAMHalfPressContactRecognizerDelegate)delegate;
- (double)_doubleHalfPressMaximumDelay;
- (double)_maxPositionDeltaBetweenHalfPresses;
- (double)_minimumHalfPressDelayAfterDoubleHalfPress;
- (void)contactUpdatedWithAction:(id)action;
- (void)reset;
@end

@implementation CAMHalfPressContactRecognizer

- (CAMHalfPressContactRecognizer)init
{
  v18.receiver = self;
  v18.super_class = CAMHalfPressContactRecognizer;
  v2 = [(CAMHalfPressContactRecognizer *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.sensingAlgsDoubleHalfPressEnabled", @"com.apple.camera", 0);
    v3->__sensingAlgsDoubleHalfPressEnabled = AppIntegerValue != 0;
    if (AppIntegerValue)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v5 = qword_1000605C0;
      v27 = qword_1000605C0;
      if (!qword_1000605C0)
      {
        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100005578;
        v22 = &unk_1000553E0;
        v23 = &v24;
        sub_100005578(&v19);
        v5 = v25[3];
      }

      v6 = v5;
      _Block_object_dispose(&v24, 8);
      v7 = objc_alloc_init(v5);
      doubleHalfPressValidator = v3->__doubleHalfPressValidator;
      v3->__doubleHalfPressValidator = v7;

      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v9 = qword_1000605D0;
      v27 = qword_1000605D0;
      if (!qword_1000605D0)
      {
        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100005740;
        v22 = &unk_1000553E0;
        v23 = &v24;
        sub_100005740(&v19);
        v9 = v25[3];
      }

      v10 = v9;
      _Block_object_dispose(&v24, 8);
      v11 = objc_alloc_init(v9);
      touchEvent = v3->__touchEvent;
      v3->__touchEvent = v11;

      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v13 = qword_1000605D8;
      v27 = qword_1000605D8;
      if (!qword_1000605D8)
      {
        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100005798;
        v22 = &unk_1000553E0;
        v23 = &v24;
        sub_100005798(&v19);
        v13 = v25[3];
      }

      v14 = v13;
      _Block_object_dispose(&v24, 8);
      v15 = objc_alloc_init(v13);
      forceEvent = v3->__forceEvent;
      v3->__forceEvent = v15;
    }
  }

  return v3;
}

- (void)reset
{
  [(CAMHalfPressContactRecognizer *)self _setLastHalfPressTimestamp:0.0];
  [(CAMHalfPressContactRecognizer *)self _setAccumulatedPositionDeltaSinceLastHalfPress:0.0];
  [(CAMHalfPressContactRecognizer *)self _setLastHalfPressWasDouble:0];
  [(CAMHalfPressContactRecognizer *)self _setIgnoringCurrentHalfPress:0];
  if ([(CAMHalfPressContactRecognizer *)self _sensingAlgsDoubleHalfPressEnabled])
  {
    _doubleHalfPressValidator = [(CAMHalfPressContactRecognizer *)self _doubleHalfPressValidator];
    [_doubleHalfPressValidator reset];
  }
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  if ([(CAMHalfPressContactRecognizer *)self enabled])
  {
    _contact = [actionCopy _contact];
    [(CAMHalfPressContactRecognizer *)self _lastHalfPressTimestamp];
    if (v5 != 0.0)
    {
      [_contact positionDelta];
      CEKExpandNormalizedContactPoint();
      v7 = fabs(v6);
      [(CAMHalfPressContactRecognizer *)self _accumulatedPositionDeltaSinceLastHalfPress];
      [(CAMHalfPressContactRecognizer *)self _setAccumulatedPositionDeltaSinceLastHalfPress:v8 + v7];
    }

    _stagePhase = [actionCopy _stagePhase];
    if (_stagePhase < 3)
    {
      v10 = 1u >> (_stagePhase & 7);
    }

    else
    {
      v10 = 0;
    }

    _stage = [actionCopy _stage];
    _numberOfStages = [actionCopy _numberOfStages];
    isTouching = [_contact isTouching];
    if (_numberOfStages > 1)
    {
      v15 = actionCopy;
      if (_stage <= 3)
      {
        if (_stage == 3)
        {
          v14 = 3;
        }

        else
        {
          if (_stage == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = isTouching;
          }

          if (_stage <= 1)
          {
            v14 = v16;
          }

          else
          {
            v14 = 2;
          }
        }
      }

      else
      {
        v14 = 4;
      }
    }

    else
    {
      v14 = 4 * (_stage > 0);
      v15 = actionCopy;
    }

    if (v14 == 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v14 != 4)
    {
      v10 = 0;
    }

    [v15 _timestamp];
    v19 = v18;
    v20 = [(CAMHalfPressContactRecognizer *)self _isValidDoubleHalfPressWithAction:actionCopy];
    if (v10 == 1)
    {
      goto LABEL_25;
    }

    v22 = (_stagePhase < 3) & (4u >> (_stagePhase & 7));
    if (v14 != 2)
    {
      v22 = 0;
    }

    if (v22 != 1)
    {
      if (v17)
      {
        [(CAMHalfPressContactRecognizer *)self _lastHalfPressTimestamp];
        v25 = v24;
        if (![(CAMHalfPressContactRecognizer *)self _lastHalfPressWasDouble]|| ([(CAMHalfPressContactRecognizer *)self _minimumHalfPressDelayAfterDoubleHalfPress], v19 - v25 >= v26))
        {
          delegate = [(CAMHalfPressContactRecognizer *)self delegate];
          [delegate halfPressContactRecognizerSingleHalfPressDidBegin:self];
          goto LABEL_26;
        }

LABEL_25:
        [(CAMHalfPressContactRecognizer *)self reset];
        [(CAMHalfPressContactRecognizer *)self _setIgnoringCurrentHalfPress:1];
        delegate = [(CAMHalfPressContactRecognizer *)self delegate];
        [delegate halfPressContactRecognizerSingleHalfPressDidCancel:self];
LABEL_26:

LABEL_44:
        goto LABEL_45;
      }

      if (_stagePhase < 3)
      {
        goto LABEL_44;
      }

      delegate2 = [(CAMHalfPressContactRecognizer *)self delegate];
      [delegate2 halfPressContactRecognizerSingleHalfPressDidCancel:self];
      goto LABEL_42;
    }

    v23 = v20;
    if ([(CAMHalfPressContactRecognizer *)self _ignoringCurrentHalfPress])
    {
      [(CAMHalfPressContactRecognizer *)self _setIgnoringCurrentHalfPress:0];
LABEL_43:
      [(CAMHalfPressContactRecognizer *)self _setAccumulatedPositionDeltaSinceLastHalfPress:0.0];
      goto LABEL_44;
    }

    [(CAMHalfPressContactRecognizer *)self _lastHalfPressTimestamp];
    if (v27 == 0.0 || [(CAMHalfPressContactRecognizer *)self _lastHalfPressWasDouble])
    {
      [(CAMHalfPressContactRecognizer *)self _setLastHalfPressTimestamp:v19];
      [(CAMHalfPressContactRecognizer *)self _setLastHalfPressWasDouble:0];
    }

    else
    {
      [(CAMHalfPressContactRecognizer *)self _setLastHalfPressTimestamp:v19];
      if (v23)
      {
        [(CAMHalfPressContactRecognizer *)self _setLastHalfPressWasDouble:1];
        delegate2 = [(CAMHalfPressContactRecognizer *)self delegate];
        [delegate2 halfPressContactRecognizerDoubleHalfPressDidEnd:self];
        goto LABEL_42;
      }
    }

    delegate2 = [(CAMHalfPressContactRecognizer *)self delegate];
    [delegate2 halfPressContactRecognizerSingleHalfPressDidEnd:self];
LABEL_42:

    goto LABEL_43;
  }

LABEL_45:

  _objc_release_x1();
}

- (BOOL)_isValidDoubleHalfPressWithAction:(id)action
{
  actionCopy = action;
  _sensingAlgsDoubleHalfPressEnabled = [(CAMHalfPressContactRecognizer *)self _sensingAlgsDoubleHalfPressEnabled];
  [actionCopy _timestamp];
  v7 = v6;
  if (_sensingAlgsDoubleHalfPressEnabled)
  {
    v8 = v6 * 1000000.0;
    _contact = [actionCopy _contact];
    _stagePhase = [actionCopy _stagePhase];
    if (_stagePhase >= 3)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0x400020001uLL >> (16 * _stagePhase);
    }

    _touchEvent = [(CAMHalfPressContactRecognizer *)self _touchEvent];
    [_touchEvent setEventMask:{objc_msgSend(_contact, "touchPositionHints")}];
    [_touchEvent setIsTouching:{objc_msgSend(_contact, "isTouching")}];
    [_contact positionDelta];
    *&v13 = v13;
    [_touchEvent setLiftoffVelocity:v13];
    [_contact touchMajorRadius];
    *&v14 = v14;
    [_touchEvent setMajorRadius:v14];
    [_touchEvent setPhase:v11 & 0xF];
    [_contact positionDelta];
    *&v16 = v15;
    [_touchEvent setPositionDeltaY:v16];
    [_contact position];
    *&v18 = v17;
    [_touchEvent setPositionY:v18];
    [_touchEvent setTimestamp:v8];
    _forceEvent = [(CAMHalfPressContactRecognizer *)self _forceEvent];
    [actionCopy _normalizedForce];
    *&v20 = v20;
    [_forceEvent setForceProgress:v20];
    [_forceEvent setForceStage:{objc_msgSend(actionCopy, "_stage")}];
    [_forceEvent setForceStageTransition:{objc_msgSend(actionCopy, "_stagePhase")}];
    [_forceEvent setPhase:v11 & 0xF];
    [actionCopy _nextStageNormalizedForceThreshold];
    *&v21 = v21;
    [_forceEvent setNextThreshold:v21];
    [actionCopy _pressedStageNormalizedForceThreshold];
    *&v22 = v22;
    [_forceEvent setPressedThreshold:v22];
    [actionCopy _releaseStageNormalizedForceThreshold];
    *&v23 = v23;
    [_forceEvent setReleasedThreshold:v23];
    [_forceEvent setTimestamp:v8];
    v34 = 0;
    _doubleHalfPressValidator = [(CAMHalfPressContactRecognizer *)self _doubleHalfPressValidator];
    [_doubleHalfPressValidator update:_touchEvent forceStageEvent:_forceEvent isDoubleHalfPress:&v34];

    v25 = v34;
  }

  else
  {
    [(CAMHalfPressContactRecognizer *)self _lastHalfPressTimestamp];
    v27 = v7 - v26;
    [(CAMHalfPressContactRecognizer *)self _doubleHalfPressMaximumDelay];
    v29 = v27 <= v28;
    [(CAMHalfPressContactRecognizer *)self _accumulatedPositionDeltaSinceLastHalfPress];
    v31 = v30;
    [(CAMHalfPressContactRecognizer *)self _maxPositionDeltaBetweenHalfPresses];
    v25 = v31 < v32 && v29;
  }

  return v25;
}

- (double)_doubleHalfPressMaximumDelay
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.menuToggleMaxIntervalMilliseconds", @"com.apple.camera", 0);
  result = AppIntegerValue / 1000.0;
  if (AppIntegerValue <= 0)
  {
    return 0.5;
  }

  return result;
}

- (double)_minimumHalfPressDelayAfterDoubleHalfPress
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.debounceIntervalAfterDoubleHalfPressInMS", @"com.apple.camera", &keyExistsAndHasValidFormat);
  result = AppIntegerValue / 1000.0;
  if (AppIntegerValue <= 0)
  {
    return 0.2;
  }

  return result;
}

- (double)_maxPositionDeltaBetweenHalfPresses
{
  v2 = CFPreferencesCopyAppValue(@"systemOverlay.maxAllowedDoubleHalfPressDelta", @"com.apple.camera");
  v3 = 2.0;
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 doubleValue];
    *&v4 = v4;
    v3 = *&v4;
  }

  return v3;
}

- (CAMHalfPressContactRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
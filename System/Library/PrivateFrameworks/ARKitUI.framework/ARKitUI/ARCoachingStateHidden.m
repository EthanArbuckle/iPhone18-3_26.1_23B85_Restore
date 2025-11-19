@interface ARCoachingStateHidden
- (id)doAction:(int64_t)a3;
- (void)enter;
- (void)exit;
@end

@implementation ARCoachingStateHidden

- (void)enter
{
  v3 = [(ARCoachingState *)self view];
  v4 = [v3 wasEverActivated];

  v5 = [(ARCoachingState *)self view];
  [v5 setHidden:1];

  v6 = [(ARCoachingState *)self view];
  [v6 teardown];

  if (v4)
  {
    v7 = [(ARCoachingState *)self view];
    v8 = [v7 delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(ARCoachingState *)self view];
      v11 = [v10 delegate];
      v12 = [(ARCoachingState *)self view];
      [v11 coachingOverlayViewDidDeactivate:v12];
    }
  }

  self->_autoActivateTime = -1.0;
  self->_minimumWaitComplete = 0;
}

- (void)exit
{
  v3 = [(ARCoachingState *)self view];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(ARCoachingState *)self view];
    v6 = [v8 delegate];
    v7 = [(ARCoachingState *)self view];
    [v6 coachingOverlayViewWillActivate:v7];
  }
}

- (id)doAction:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 != 4)
      {
        goto LABEL_21;
      }

      v5 = [(ARCoachingState *)self view];
      v6 = [v5 checkActivationHeuristics];

      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = [(ARCoachingState *)self view];
      v8 = [v7 session];
      v9 = [v8 currentFrame];
      [v9 timestamp];
      v11 = v10;

      autoActivateTime = self->_autoActivateTime;
      if (autoActivateTime < 0.0)
      {
        v13 = [(ARCoachingState *)self view];
        self->_autoActivateTime = v11 + ARCoachingMinimumActivationDelay([v13 goal]);
LABEL_11:

LABEL_15:
        v4 = 0;
        goto LABEL_21;
      }

      if (v11 < autoActivateTime)
      {
        goto LABEL_15;
      }

      if (!self->_minimumWaitComplete)
      {
        self->_minimumWaitComplete = 1;
        v13 = [(ARCoachingState *)self view];
        v20 = [v13 goal];
        v21 = [(ARCoachingState *)self view];
        self->_autoActivateTime = v11 + ARCoachingAdditionalActivationDelay(v20, [v21 isRelocalizing]);

        goto LABEL_11;
      }

      v15 = [(ARCoachingState *)self view];
      v16 = [v15 isRelocalizing];

      if (v16)
      {
        goto LABEL_18;
      }
    }

    v14 = ARCoachingStateActivated;
    goto LABEL_20;
  }

  switch(a3)
  {
    case 5:
LABEL_18:
      v14 = ARCoachingStateRelocalizing;
      goto LABEL_20;
    case 7:
      v14 = ARCoachingStateSessionFailed;
LABEL_20:
      v17 = [v14 alloc];
      v18 = [(ARCoachingState *)self view];
      v4 = [v17 initWithView:v18];

      break;
    case 8:
LABEL_12:
      v4 = 0;
      self->_autoActivateTime = -1.0;
      break;
  }

LABEL_21:

  return v4;
}

@end
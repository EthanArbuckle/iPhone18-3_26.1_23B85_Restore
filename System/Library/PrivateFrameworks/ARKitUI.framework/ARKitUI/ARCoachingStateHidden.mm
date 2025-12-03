@interface ARCoachingStateHidden
- (id)doAction:(int64_t)action;
- (void)enter;
- (void)exit;
@end

@implementation ARCoachingStateHidden

- (void)enter
{
  view = [(ARCoachingState *)self view];
  wasEverActivated = [view wasEverActivated];

  view2 = [(ARCoachingState *)self view];
  [view2 setHidden:1];

  view3 = [(ARCoachingState *)self view];
  [view3 teardown];

  if (wasEverActivated)
  {
    view4 = [(ARCoachingState *)self view];
    delegate = [view4 delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      view5 = [(ARCoachingState *)self view];
      delegate2 = [view5 delegate];
      view6 = [(ARCoachingState *)self view];
      [delegate2 coachingOverlayViewDidDeactivate:view6];
    }
  }

  self->_autoActivateTime = -1.0;
  self->_minimumWaitComplete = 0;
}

- (void)exit
{
  view = [(ARCoachingState *)self view];
  delegate = [view delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ARCoachingState *)self view];
    delegate2 = [view2 delegate];
    view3 = [(ARCoachingState *)self view];
    [delegate2 coachingOverlayViewWillActivate:view3];
  }
}

- (id)doAction:(int64_t)action
{
  v4 = 0;
  if (action <= 4)
  {
    if (action != 1)
    {
      if (action != 4)
      {
        goto LABEL_21;
      }

      view = [(ARCoachingState *)self view];
      checkActivationHeuristics = [view checkActivationHeuristics];

      if (!checkActivationHeuristics)
      {
        goto LABEL_12;
      }

      view2 = [(ARCoachingState *)self view];
      session = [view2 session];
      currentFrame = [session currentFrame];
      [currentFrame timestamp];
      v11 = v10;

      autoActivateTime = self->_autoActivateTime;
      if (autoActivateTime < 0.0)
      {
        view3 = [(ARCoachingState *)self view];
        self->_autoActivateTime = v11 + ARCoachingMinimumActivationDelay([view3 goal]);
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
        view3 = [(ARCoachingState *)self view];
        goal = [view3 goal];
        view4 = [(ARCoachingState *)self view];
        self->_autoActivateTime = v11 + ARCoachingAdditionalActivationDelay(goal, [view4 isRelocalizing]);

        goto LABEL_11;
      }

      view5 = [(ARCoachingState *)self view];
      isRelocalizing = [view5 isRelocalizing];

      if (isRelocalizing)
      {
        goto LABEL_18;
      }
    }

    v14 = ARCoachingStateActivated;
    goto LABEL_20;
  }

  switch(action)
  {
    case 5:
LABEL_18:
      v14 = ARCoachingStateRelocalizing;
      goto LABEL_20;
    case 7:
      v14 = ARCoachingStateSessionFailed;
LABEL_20:
      v17 = [v14 alloc];
      view6 = [(ARCoachingState *)self view];
      v4 = [v17 initWithView:view6];

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
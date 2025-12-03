@interface ARCoachingStateActivated
- (id)doAction:(int64_t)action;
- (void)enter;
@end

@implementation ARCoachingStateActivated

- (void)enter
{
  view = [(ARCoachingState *)self view];
  [view startup];

  view2 = [(ARCoachingState *)self view];
  [view2 fadeInWithButton:0];

  view3 = [(ARCoachingState *)self view];
  [view3 setHidden:0];
}

- (id)doAction:(int64_t)action
{
  v4 = 0;
  if (action > 3)
  {
    if (action > 5)
    {
      if (action == 6)
      {
        nextState = self->_nextState;
        if (!nextState)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

      if (action != 7)
      {
        goto LABEL_23;
      }

      v6 = ARCoachingStateSessionFailed;
    }

    else
    {
      if (action == 4)
      {
        if (self->_nextState)
        {
          goto LABEL_22;
        }

        view = [(ARCoachingState *)self view];
        checkDeactivationHeuristics = [view checkDeactivationHeuristics];

        if (checkDeactivationHeuristics)
        {
          v12 = ARCoachingStateDeactivating;
        }

        else
        {
          view2 = [(ARCoachingState *)self view];
          isRelocalizing = [view2 isRelocalizing];

          if (!isRelocalizing)
          {
            goto LABEL_22;
          }

          v12 = ARCoachingStateRelocalizing;
        }

        v22 = [v12 alloc];
        view3 = [(ARCoachingState *)self view];
        v23 = [v22 initWithView:view3];
        v24 = self->_nextState;
        self->_nextState = v23;

LABEL_21:
        goto LABEL_22;
      }

      v6 = ARCoachingStateRelocalizing;
    }

LABEL_20:
    v13 = [v6 alloc];
    view3 = [(ARCoachingState *)self view];
    v15 = [v13 initWithView:view3];
    v16 = self->_nextState;
    self->_nextState = v15;

    goto LABEL_21;
  }

  if (action <= 1)
  {
    if (!action)
    {
      v8 = [ARCoachingStateHidden alloc];
      view4 = [(ARCoachingState *)self view];
      v4 = [(ARCoachingState *)v8 initWithView:view4];

      goto LABEL_23;
    }

    if (action != 1)
    {
      goto LABEL_23;
    }

    v5 = self->_nextState;
    self->_nextState = 0;

    goto LABEL_22;
  }

  if (action == 2)
  {
    v6 = ARCoachingStateDeactivating;
    goto LABEL_20;
  }

  view5 = [(ARCoachingState *)self view];
  if ([view5 isUIAnimating])
  {

LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v19 = self->_nextState;

  if (!v19)
  {
    goto LABEL_22;
  }

  nextState = self->_nextState;
LABEL_30:
  v4 = nextState;
LABEL_23:

  return v4;
}

@end
@interface ARCoachingStateDeactivating
- (id)doAction:(int64_t)action;
- (void)enter;
@end

@implementation ARCoachingStateDeactivating

- (void)enter
{
  view = [(ARCoachingState *)self view];
  delegate = [view delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ARCoachingState *)self view];
    delegate2 = [view2 delegate];
    view3 = [(ARCoachingState *)self view];
    [delegate2 coachingOverlayViewWillDeactivate:view3];
  }

  view4 = [(ARCoachingState *)self view];
  [view4 fadeOut];

  v10 = [ARCoachingStateHidden alloc];
  view5 = [(ARCoachingState *)self view];
  v11 = [(ARCoachingState *)v10 initWithView:view5];
  nextState = self->_nextState;
  self->_nextState = v11;
}

- (id)doAction:(int64_t)action
{
  v4 = 0;
  if (action <= 2)
  {
    switch(action)
    {
      case 0:
        v6 = [ARCoachingStateHidden alloc];
        view = [(ARCoachingState *)self view];
        v4 = [(ARCoachingState *)v6 initWithView:view];

        goto LABEL_21;
      case 1:
        v5 = ARCoachingStateActivated;
        break;
      case 2:
        v5 = ARCoachingStateHidden;
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (action > 5)
  {
    if (action != 6)
    {
      if (action != 7)
      {
        goto LABEL_21;
      }

      v5 = ARCoachingStateSessionFailed;
      goto LABEL_19;
    }

    nextState = self->_nextState;
    if (!nextState)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (action != 3)
    {
      if (action != 5)
      {
        goto LABEL_21;
      }

      v5 = ARCoachingStateRelocalizing;
LABEL_19:
      v10 = [v5 alloc];
      view2 = [(ARCoachingState *)self view];
      v12 = [v10 initWithView:view2];
      v13 = self->_nextState;
      self->_nextState = v12;

      goto LABEL_20;
    }

    view3 = [(ARCoachingState *)self view];
    if ([view3 isUIAnimating])
    {

LABEL_20:
      v4 = 0;
      goto LABEL_21;
    }

    v15 = self->_nextState;

    if (!v15)
    {
      goto LABEL_20;
    }

    nextState = self->_nextState;
  }

  v4 = nextState;
LABEL_21:

  return v4;
}

@end
@interface ARCoachingStateDeactivating
- (id)doAction:(int64_t)a3;
- (void)enter;
@end

@implementation ARCoachingStateDeactivating

- (void)enter
{
  v3 = [(ARCoachingState *)self view];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ARCoachingState *)self view];
    v7 = [v6 delegate];
    v8 = [(ARCoachingState *)self view];
    [v7 coachingOverlayViewWillDeactivate:v8];
  }

  v9 = [(ARCoachingState *)self view];
  [v9 fadeOut];

  v10 = [ARCoachingStateHidden alloc];
  v13 = [(ARCoachingState *)self view];
  v11 = [(ARCoachingState *)v10 initWithView:v13];
  nextState = self->_nextState;
  self->_nextState = v11;
}

- (id)doAction:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v6 = [ARCoachingStateHidden alloc];
        v7 = [(ARCoachingState *)self view];
        v4 = [(ARCoachingState *)v6 initWithView:v7];

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

  if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 != 7)
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
    if (a3 != 3)
    {
      if (a3 != 5)
      {
        goto LABEL_21;
      }

      v5 = ARCoachingStateRelocalizing;
LABEL_19:
      v10 = [v5 alloc];
      v11 = [(ARCoachingState *)self view];
      v12 = [v10 initWithView:v11];
      v13 = self->_nextState;
      self->_nextState = v12;

      goto LABEL_20;
    }

    v8 = [(ARCoachingState *)self view];
    if ([v8 isUIAnimating])
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
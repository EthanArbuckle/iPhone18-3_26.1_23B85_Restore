@interface ARCoachingStateActivated
- (id)doAction:(int64_t)a3;
- (void)enter;
@end

@implementation ARCoachingStateActivated

- (void)enter
{
  v3 = [(ARCoachingState *)self view];
  [v3 startup];

  v4 = [(ARCoachingState *)self view];
  [v4 fadeInWithButton:0];

  v5 = [(ARCoachingState *)self view];
  [v5 setHidden:0];
}

- (id)doAction:(int64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        nextState = self->_nextState;
        if (!nextState)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

      if (a3 != 7)
      {
        goto LABEL_23;
      }

      v6 = ARCoachingStateSessionFailed;
    }

    else
    {
      if (a3 == 4)
      {
        if (self->_nextState)
        {
          goto LABEL_22;
        }

        v10 = [(ARCoachingState *)self view];
        v11 = [v10 checkDeactivationHeuristics];

        if (v11)
        {
          v12 = ARCoachingStateDeactivating;
        }

        else
        {
          v20 = [(ARCoachingState *)self view];
          v21 = [v20 isRelocalizing];

          if (!v21)
          {
            goto LABEL_22;
          }

          v12 = ARCoachingStateRelocalizing;
        }

        v22 = [v12 alloc];
        v14 = [(ARCoachingState *)self view];
        v23 = [v22 initWithView:v14];
        v24 = self->_nextState;
        self->_nextState = v23;

LABEL_21:
        goto LABEL_22;
      }

      v6 = ARCoachingStateRelocalizing;
    }

LABEL_20:
    v13 = [v6 alloc];
    v14 = [(ARCoachingState *)self view];
    v15 = [v13 initWithView:v14];
    v16 = self->_nextState;
    self->_nextState = v15;

    goto LABEL_21;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v8 = [ARCoachingStateHidden alloc];
      v9 = [(ARCoachingState *)self view];
      v4 = [(ARCoachingState *)v8 initWithView:v9];

      goto LABEL_23;
    }

    if (a3 != 1)
    {
      goto LABEL_23;
    }

    v5 = self->_nextState;
    self->_nextState = 0;

    goto LABEL_22;
  }

  if (a3 == 2)
  {
    v6 = ARCoachingStateDeactivating;
    goto LABEL_20;
  }

  v7 = [(ARCoachingState *)self view];
  if ([v7 isUIAnimating])
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
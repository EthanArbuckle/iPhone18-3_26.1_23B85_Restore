@interface ARCoachingStateRelocalizing
- (ARCoachingStateRelocalizing)initWithView:(id)a3;
- (id)doAction:(int64_t)a3;
- (void)enter;
@end

@implementation ARCoachingStateRelocalizing

- (ARCoachingStateRelocalizing)initWithView:(id)a3
{
  v7.receiver = self;
  v7.super_class = ARCoachingStateRelocalizing;
  v3 = [(ARCoachingState *)&v7 initWithView:a3];
  if (v3)
  {
    v4 = objc_alloc_init(ARCoachingHeuristicCollection);
    heuristics = v3->_heuristics;
    v3->_heuristics = v4;
  }

  return v3;
}

- (void)enter
{
  v3 = [(ARCoachingState *)self view];
  [v3 startup];

  v4 = [(ARCoachingState *)self view];
  [v4 fadeInWithButton:1];

  v5 = [(ARCoachingState *)self view];
  [v5 setHidden:0];

  [(ARCoachingHeuristicCollection *)self->_heuristics clear];
  heuristics = self->_heuristics;
  v7 = [[ARCoachingHeuristicDelay alloc] initWithDuration:1.0];
  [(ARCoachingHeuristicCollection *)heuristics addHeuristic:v7];
}

- (id)doAction:(int64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        nextState = self->_nextState;
        self->_nextState = 0;

        goto LABEL_28;
      }

      if (self->_nextState)
      {
        goto LABEL_28;
      }

      v12 = [ARCoachingFrame alloc];
      v13 = [(ARCoachingState *)self view];
      v14 = [v13 session];
      v15 = [v14 currentFrame];
      v7 = [(ARCoachingFrame *)v12 initWithFrame:v15];

      heuristics = self->_heuristics;
      v17 = [(ARCoachingState *)self view];
      v18 = [v17 coachingSessionCache];
      [(ARCoachingHeuristicCollection *)heuristics updateWithFrame:v7 cache:v18];

      v19 = [(ARCoachingState *)self view];
      LOBYTE(v17) = [v19 checkDeactivationHeuristics];

      if (v17)
      {
        v20 = off_278BCCF38;
      }

      else
      {
        if (![(ARCoachingHeuristic *)self->_heuristics satisfied])
        {
          goto LABEL_27;
        }

        v29 = [(ARCoachingState *)self view];
        v30 = [v29 isRelocalizing];

        if (v30)
        {
          goto LABEL_27;
        }

        v20 = off_278BCCF30;
      }

      v21 = objc_alloc(*v20);
      v22 = [(ARCoachingState *)self view];
      v23 = [v21 initWithView:v22];
      v24 = self->_nextState;
      self->_nextState = v23;

LABEL_27:
      goto LABEL_28;
    }

    if (a3 == 6)
    {
      v9 = self->_nextState;
      if (!v9)
      {
        goto LABEL_28;
      }

LABEL_24:
      v4 = v9;
      goto LABEL_29;
    }

    if (a3 != 7)
    {
      goto LABEL_29;
    }

    v5 = ARCoachingStateSessionFailed;
LABEL_22:
    v25 = [v5 alloc];
    v26 = [(ARCoachingState *)self view];
    v27 = [v25 initWithView:v26];
    v28 = self->_nextState;
    self->_nextState = v27;

    goto LABEL_28;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v10 = [ARCoachingStateHidden alloc];
      v11 = [(ARCoachingState *)self view];
      v4 = [(ARCoachingState *)v10 initWithView:v11];

      goto LABEL_29;
    }

    if (a3 != 1)
    {
      goto LABEL_29;
    }

    v5 = ARCoachingStateActivated;
    goto LABEL_22;
  }

  if (a3 == 2)
  {
    v5 = ARCoachingStateDeactivating;
    goto LABEL_22;
  }

  v7 = [(ARCoachingState *)self view];
  if (([(ARCoachingFrame *)v7 isUIAnimating]& 1) != 0)
  {
    goto LABEL_27;
  }

  v8 = self->_nextState;

  if (v8)
  {
    v9 = self->_nextState;
    goto LABEL_24;
  }

LABEL_28:
  v4 = 0;
LABEL_29:

  return v4;
}

@end
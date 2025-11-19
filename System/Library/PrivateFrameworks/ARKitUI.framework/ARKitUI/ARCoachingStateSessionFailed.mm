@interface ARCoachingStateSessionFailed
- (ARCoachingStateSessionFailed)initWithView:(id)a3;
- (id)doAction:(int64_t)a3;
- (void)enter;
@end

@implementation ARCoachingStateSessionFailed

- (ARCoachingStateSessionFailed)initWithView:(id)a3
{
  v7.receiver = self;
  v7.super_class = ARCoachingStateSessionFailed;
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
  v7 = objc_alloc_init(ARCoachingHeuristicHasActiveFrames);
  [(ARCoachingHeuristicCollection *)heuristics addHeuristic:v7];
}

- (id)doAction:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v10 = [ARCoachingStateHidden alloc];
        v11 = [(ARCoachingState *)self view];
        v4 = [(ARCoachingState *)v10 initWithView:v11];

        goto LABEL_30;
      }

      if (a3 != 1)
      {
        goto LABEL_30;
      }

      v5 = ARCoachingStateActivated;
      goto LABEL_22;
    }

    if (a3 != 2)
    {
      v6 = [(ARCoachingState *)self view];
      if (([(ARCoachingFrame *)v6 isUIAnimating]& 1) == 0)
      {
        nextState = self->_nextState;

        if (nextState)
        {
          v8 = self->_nextState;
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_28:

      goto LABEL_29;
    }

    v5 = ARCoachingStateDeactivating;
    goto LABEL_22;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      if (self->_nextState)
      {
        goto LABEL_29;
      }

      v12 = [ARCoachingFrame alloc];
      v13 = [(ARCoachingState *)self view];
      v14 = [v13 session];
      v15 = [v14 currentFrame];
      v6 = [(ARCoachingFrame *)v12 initWithFrame:v15];

      heuristics = self->_heuristics;
      v17 = [(ARCoachingState *)self view];
      v18 = [v17 coachingSessionCache];
      [(ARCoachingHeuristicCollection *)heuristics updateWithFrame:v6 cache:v18];

      if ([(ARCoachingHeuristic *)self->_heuristics satisfied])
      {
        v19 = [(ARCoachingState *)self view];
        v20 = [v19 activatesAutomatically];

        if (v20)
        {
          v21 = off_278BCCF38;
        }

        else
        {
          v26 = [(ARCoachingState *)self view];
          v27 = [v26 isRelocalizing];

          v21 = off_278BCCF30;
          if (v27)
          {
            v21 = off_278BCCF48;
          }
        }

        v28 = objc_alloc(*v21);
        v29 = [(ARCoachingState *)self view];
        v30 = [v28 initWithView:v29];
        v31 = self->_nextState;
        self->_nextState = v30;
      }

      goto LABEL_28;
    }

    v5 = ARCoachingStateRelocalizing;
LABEL_22:
    v22 = [v5 alloc];
    v23 = [(ARCoachingState *)self view];
    v24 = [v22 initWithView:v23];
    v25 = self->_nextState;
    self->_nextState = v24;

    goto LABEL_29;
  }

  if (a3 != 6)
  {
    if (a3 != 7)
    {
      goto LABEL_30;
    }

    v9 = self->_nextState;
    self->_nextState = 0;

    goto LABEL_29;
  }

  v8 = self->_nextState;
  if (v8)
  {
LABEL_24:
    v4 = v8;
    goto LABEL_30;
  }

LABEL_29:
  v4 = 0;
LABEL_30:

  return v4;
}

@end
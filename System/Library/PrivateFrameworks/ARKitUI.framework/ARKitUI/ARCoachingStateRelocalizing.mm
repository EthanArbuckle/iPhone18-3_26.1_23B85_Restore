@interface ARCoachingStateRelocalizing
- (ARCoachingStateRelocalizing)initWithView:(id)view;
- (id)doAction:(int64_t)action;
- (void)enter;
@end

@implementation ARCoachingStateRelocalizing

- (ARCoachingStateRelocalizing)initWithView:(id)view
{
  v7.receiver = self;
  v7.super_class = ARCoachingStateRelocalizing;
  v3 = [(ARCoachingState *)&v7 initWithView:view];
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
  view = [(ARCoachingState *)self view];
  [view startup];

  view2 = [(ARCoachingState *)self view];
  [view2 fadeInWithButton:1];

  view3 = [(ARCoachingState *)self view];
  [view3 setHidden:0];

  [(ARCoachingHeuristicCollection *)self->_heuristics clear];
  heuristics = self->_heuristics;
  v7 = [[ARCoachingHeuristicDelay alloc] initWithDuration:1.0];
  [(ARCoachingHeuristicCollection *)heuristics addHeuristic:v7];
}

- (id)doAction:(int64_t)action
{
  v4 = 0;
  if (action > 3)
  {
    if (action <= 5)
    {
      if (action != 4)
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
      view = [(ARCoachingState *)self view];
      session = [view session];
      currentFrame = [session currentFrame];
      view8 = [(ARCoachingFrame *)v12 initWithFrame:currentFrame];

      heuristics = self->_heuristics;
      view2 = [(ARCoachingState *)self view];
      coachingSessionCache = [view2 coachingSessionCache];
      [(ARCoachingHeuristicCollection *)heuristics updateWithFrame:view8 cache:coachingSessionCache];

      view3 = [(ARCoachingState *)self view];
      LOBYTE(view2) = [view3 checkDeactivationHeuristics];

      if (view2)
      {
        v20 = off_278BCCF38;
      }

      else
      {
        if (![(ARCoachingHeuristic *)self->_heuristics satisfied])
        {
          goto LABEL_27;
        }

        view4 = [(ARCoachingState *)self view];
        isRelocalizing = [view4 isRelocalizing];

        if (isRelocalizing)
        {
          goto LABEL_27;
        }

        v20 = off_278BCCF30;
      }

      v21 = objc_alloc(*v20);
      view5 = [(ARCoachingState *)self view];
      v23 = [v21 initWithView:view5];
      v24 = self->_nextState;
      self->_nextState = v23;

LABEL_27:
      goto LABEL_28;
    }

    if (action == 6)
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

    if (action != 7)
    {
      goto LABEL_29;
    }

    v5 = ARCoachingStateSessionFailed;
LABEL_22:
    v25 = [v5 alloc];
    view6 = [(ARCoachingState *)self view];
    v27 = [v25 initWithView:view6];
    v28 = self->_nextState;
    self->_nextState = v27;

    goto LABEL_28;
  }

  if (action <= 1)
  {
    if (!action)
    {
      v10 = [ARCoachingStateHidden alloc];
      view7 = [(ARCoachingState *)self view];
      v4 = [(ARCoachingState *)v10 initWithView:view7];

      goto LABEL_29;
    }

    if (action != 1)
    {
      goto LABEL_29;
    }

    v5 = ARCoachingStateActivated;
    goto LABEL_22;
  }

  if (action == 2)
  {
    v5 = ARCoachingStateDeactivating;
    goto LABEL_22;
  }

  view8 = [(ARCoachingState *)self view];
  if (([(ARCoachingFrame *)view8 isUIAnimating]& 1) != 0)
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
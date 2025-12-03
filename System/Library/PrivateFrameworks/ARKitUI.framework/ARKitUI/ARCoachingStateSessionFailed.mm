@interface ARCoachingStateSessionFailed
- (ARCoachingStateSessionFailed)initWithView:(id)view;
- (id)doAction:(int64_t)action;
- (void)enter;
@end

@implementation ARCoachingStateSessionFailed

- (ARCoachingStateSessionFailed)initWithView:(id)view
{
  v7.receiver = self;
  v7.super_class = ARCoachingStateSessionFailed;
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
  v7 = objc_alloc_init(ARCoachingHeuristicHasActiveFrames);
  [(ARCoachingHeuristicCollection *)heuristics addHeuristic:v7];
}

- (id)doAction:(int64_t)action
{
  v4 = 0;
  if (action <= 3)
  {
    if (action <= 1)
    {
      if (!action)
      {
        v10 = [ARCoachingStateHidden alloc];
        view = [(ARCoachingState *)self view];
        v4 = [(ARCoachingState *)v10 initWithView:view];

        goto LABEL_30;
      }

      if (action != 1)
      {
        goto LABEL_30;
      }

      v5 = ARCoachingStateActivated;
      goto LABEL_22;
    }

    if (action != 2)
    {
      view2 = [(ARCoachingState *)self view];
      if (([(ARCoachingFrame *)view2 isUIAnimating]& 1) == 0)
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

  if (action <= 5)
  {
    if (action == 4)
    {
      if (self->_nextState)
      {
        goto LABEL_29;
      }

      v12 = [ARCoachingFrame alloc];
      view3 = [(ARCoachingState *)self view];
      session = [view3 session];
      currentFrame = [session currentFrame];
      view2 = [(ARCoachingFrame *)v12 initWithFrame:currentFrame];

      heuristics = self->_heuristics;
      view4 = [(ARCoachingState *)self view];
      coachingSessionCache = [view4 coachingSessionCache];
      [(ARCoachingHeuristicCollection *)heuristics updateWithFrame:view2 cache:coachingSessionCache];

      if ([(ARCoachingHeuristic *)self->_heuristics satisfied])
      {
        view5 = [(ARCoachingState *)self view];
        activatesAutomatically = [view5 activatesAutomatically];

        if (activatesAutomatically)
        {
          v21 = off_278BCCF38;
        }

        else
        {
          view6 = [(ARCoachingState *)self view];
          isRelocalizing = [view6 isRelocalizing];

          v21 = off_278BCCF30;
          if (isRelocalizing)
          {
            v21 = off_278BCCF48;
          }
        }

        v28 = objc_alloc(*v21);
        view7 = [(ARCoachingState *)self view];
        v30 = [v28 initWithView:view7];
        v31 = self->_nextState;
        self->_nextState = v30;
      }

      goto LABEL_28;
    }

    v5 = ARCoachingStateRelocalizing;
LABEL_22:
    v22 = [v5 alloc];
    view8 = [(ARCoachingState *)self view];
    v24 = [v22 initWithView:view8];
    v25 = self->_nextState;
    self->_nextState = v24;

    goto LABEL_29;
  }

  if (action != 6)
  {
    if (action != 7)
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
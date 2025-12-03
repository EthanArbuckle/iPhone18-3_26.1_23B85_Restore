@interface AETouchOutsideViewGestureRecognizer
- (AETouchOutsideViewGestureRecognizer)initWithTarget:(id)target action:(SEL)action watchView:(id)view;
- (UIView)watchView;
- (void)addTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation AETouchOutsideViewGestureRecognizer

- (AETouchOutsideViewGestureRecognizer)initWithTarget:(id)target action:(SEL)action watchView:(id)view
{
  targetCopy = target;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = AETouchOutsideViewGestureRecognizer;
  v10 = [(AETouchOutsideViewGestureRecognizer *)&v15 initWithTarget:0 action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mWatchView, viewCopy);
    v12 = objc_alloc_init(NSMutableSet);
    mTargets = v11->mTargets;
    v11->mTargets = v12;

    [(AETouchOutsideViewGestureRecognizer *)v11 setDelegate:v11];
    [(AETouchOutsideViewGestureRecognizer *)v11 addTarget:targetCopy action:action];
  }

  return v11;
}

- (void)dealloc
{
  mTargets = self->mTargets;
  self->mTargets = 0;

  objc_storeWeak(&self->mWatchView, 0);
  v4.receiver = self;
  v4.super_class = AETouchOutsideViewGestureRecognizer;
  [(AETouchOutsideViewGestureRecognizer *)&v4 dealloc];
}

- (void)addTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = objc_alloc_init(AETouchOutsideViewGestureRecognizerTarget);
  [(AETouchOutsideViewGestureRecognizerTarget *)v7 setTarget:targetCopy];

  [(AETouchOutsideViewGestureRecognizerTarget *)v7 setAction:action];
  [(NSMutableSet *)self->mTargets addObject:v7];
}

- (void)removeTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v19 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->mTargets;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (!targetCopy || ([*(*(&v24 + 1) + 8 * v11) target], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == targetCopy))
        {
          if (!action || [v12 action] == action)
          {
            [v19 addObject:v12];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v19;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableSet *)self->mTargets removeObject:*(*(&v20 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  selfCopy = self;
  watchView = [(AETouchOutsideViewGestureRecognizer *)self watchView];
  v9 = watchView;
  if (watchView)
  {
    [watchView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = beganCopy;
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v51;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v50 + 1) + 8 * i) locationInView:v9];
          v57.x = v24;
          v57.y = v25;
          v58.origin.x = v11;
          v58.origin.y = v13;
          v58.size.width = v15;
          v58.size.height = v17;
          v21 |= CGRectContainsPoint(v58, v57);
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allTouches = [eventCopy allTouches];
  v27 = [allTouches countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v47;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(allTouches);
        }

        v29 |= [beganCopy containsObject:*(*(&v46 + 1) + 8 * j)] ^ 1;
      }

      v28 = [allTouches countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  if (((v21 | v29) & 1) == 0)
  {
    v40 = eventCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = selfCopy->mTargets;
    v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v42 + 1) + 8 * k);
          target = [v37 target];
          [target performSelector:objc_msgSend(v37 withObject:{"action"), selfCopy}];
        }

        v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v34);
    }

    eventCopy = v40;
  }

  if (v21 & 1 | ((v29 & 1) == 0))
  {
    v39 = 5;
  }

  else
  {
    v39 = 1;
  }

  [(AETouchOutsideViewGestureRecognizer *)selfCopy setState:v39, v40];
}

- (UIView)watchView
{
  WeakRetained = objc_loadWeakRetained(&self->mWatchView);

  return WeakRetained;
}

@end
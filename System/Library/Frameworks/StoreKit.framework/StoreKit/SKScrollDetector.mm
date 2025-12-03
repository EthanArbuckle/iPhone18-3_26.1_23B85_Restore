@interface SKScrollDetector
- (SKScreenTrackingDelegate)screenTrakingDelegate;
- (SKScrollDetector)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)findAndListenForScrollingOfView:(id)view;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)stopListeningForScrollingOfView:(id)view;
@end

@implementation SKScrollDetector

- (SKScrollDetector)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = SKScrollDetector;
  v5 = [(SKScrollDetector *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subscribedScrollers = v5->_subscribedScrollers;
    v5->_subscribedScrollers = v6;

    objc_storeWeak(&v5->_screenTrakingDelegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscribedScrollers = [(SKScrollDetector *)self subscribedScrollers];
  v4 = [subscribedScrollers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subscribedScrollers);
        }

        scrollingView = [*(*(&v11 + 1) + 8 * v7) scrollingView];
        [scrollingView removeObserver:self forKeyPath:@"contentOffset" context:&scrollingKVOContext];

        ++v7;
      }

      while (v5 != v7);
      v5 = [subscribedScrollers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  subscribedScrollers2 = [(SKScrollDetector *)self subscribedScrollers];
  [subscribedScrollers2 removeAllObjects];

  v10.receiver = self;
  v10.super_class = SKScrollDetector;
  [(SKScrollDetector *)&v10 dealloc];
}

- (void)findAndListenForScrollingOfView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v4 = viewCopy;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        [v5 addObserver:self forKeyPath:@"contentOffset" options:1 context:&scrollingKVOContext];
        v6 = objc_alloc_init(SKWeakContainer);
        [(SKWeakContainer *)v6 setScrollingView:v5];
        [(SKWeakContainer *)v6 setTrackingView:viewCopy];
        _sk_isAtLeast50PercentOnScreen = [viewCopy _sk_isAtLeast50PercentOnScreen];

        [(SKWeakContainer *)v6 setWasOnScreen:_sk_isAtLeast50PercentOnScreen];
        subscribedScrollers = [(SKScrollDetector *)self subscribedScrollers];
        [subscribedScrollers addObject:v6];
      }

      [v4 frame];
      [v4 frame];
      [v4 bounds];
      [v4 bounds];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v4 bounds];
      CGRectGetHeight(v21);
      v22.origin.x = v11;
      v22.origin.y = v13;
      v22.size.width = v15;
      v22.size.height = v17;
      [v4 bounds];
      CGRectGetWidth(v23);
      v24.origin.x = v11;
      v24.origin.y = v13;
      v24.size.width = v15;
      v24.size.height = v17;
      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }
}

- (void)stopListeningForScrollingOfView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subscribedScrollers = [(SKScrollDetector *)self subscribedScrollers];
  v7 = [subscribedScrollers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(subscribedScrollers);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        trackingView = [v11 trackingView];
        v13 = trackingView;
        if (trackingView == viewCopy)
        {
        }

        else
        {
          trackingView2 = [v11 trackingView];

          if (trackingView2)
          {
            continue;
          }
        }

        scrollingView = [v11 scrollingView];
        [scrollingView removeObserver:self forKeyPath:@"contentOffset" context:&scrollingKVOContext];

        [array addObject:v11];
      }

      v8 = [subscribedScrollers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  subscribedScrollers2 = [(SKScrollDetector *)self subscribedScrollers];
  [subscribedScrollers2 removeObjectsInArray:array];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (context == &scrollingKVOContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v32 = objectCopy;
    v11 = objectCopy;
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    subscribedScrollers = [(SKScrollDetector *)self subscribedScrollers];
    v14 = [subscribedScrollers countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    v16 = *v35;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(subscribedScrollers);
      }

      v18 = *(*(&v34 + 1) + 8 * v17);
      trackingView = [v18 trackingView];

      if (trackingView)
      {
        scrollingView = [v18 scrollingView];

        if (scrollingView == v11)
        {
          trackingView2 = [v18 trackingView];
          if ([trackingView2 _sk_isAtLeast50PercentOnScreen])
          {
            wasOnScreen = [v18 wasOnScreen];

            if ((wasOnScreen & 1) == 0)
            {
              screenTrakingDelegate = [(SKScrollDetector *)self screenTrakingDelegate];
              trackingView3 = [v18 trackingView];
              [screenTrakingDelegate sk_didBecomeOnScreen:trackingView3];

              v25 = v18;
              v26 = 1;
LABEL_20:
              [v25 setWasOnScreen:v26];
              goto LABEL_21;
            }
          }

          else
          {
          }

          trackingView4 = [v18 trackingView];
          if ([trackingView4 _sk_isAtLeast50PercentOnScreen])
          {
          }

          else
          {
            wasOnScreen2 = [v18 wasOnScreen];

            if (wasOnScreen2)
            {
              screenTrakingDelegate2 = [(SKScrollDetector *)self screenTrakingDelegate];
              trackingView5 = [v18 trackingView];
              [screenTrakingDelegate2 sk_didBecomeOffScreen:trackingView5];

              v25 = v18;
              v26 = 0;
              goto LABEL_20;
            }
          }
        }
      }

      else
      {
        [array addObject:v18];
      }

LABEL_21:
      if (v15 == ++v17)
      {
        v15 = [subscribedScrollers countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (!v15)
        {
LABEL_23:

          subscribedScrollers2 = [(SKScrollDetector *)self subscribedScrollers];
          [subscribedScrollers2 removeObjectsInArray:array];

          objectCopy = v32;
          goto LABEL_24;
        }

        goto LABEL_6;
      }
    }
  }

  v33.receiver = self;
  v33.super_class = SKScrollDetector;
  [(SKScrollDetector *)&v33 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
LABEL_24:
}

- (SKScreenTrackingDelegate)screenTrakingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_screenTrakingDelegate);

  return WeakRetained;
}

@end
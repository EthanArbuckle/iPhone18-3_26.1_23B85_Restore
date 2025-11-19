@interface SKScrollDetector
- (SKScreenTrackingDelegate)screenTrakingDelegate;
- (SKScrollDetector)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)findAndListenForScrollingOfView:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)stopListeningForScrollingOfView:(id)a3;
@end

@implementation SKScrollDetector

- (SKScrollDetector)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKScrollDetector;
  v5 = [(SKScrollDetector *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subscribedScrollers = v5->_subscribedScrollers;
    v5->_subscribedScrollers = v6;

    objc_storeWeak(&v5->_screenTrakingDelegate, v4);
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
  v3 = [(SKScrollDetector *)self subscribedScrollers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) scrollingView];
        [v8 removeObserver:self forKeyPath:@"contentOffset" context:&scrollingKVOContext];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [(SKScrollDetector *)self subscribedScrollers];
  [v9 removeAllObjects];

  v10.receiver = self;
  v10.super_class = SKScrollDetector;
  [(SKScrollDetector *)&v10 dealloc];
}

- (void)findAndListenForScrollingOfView:(id)a3
{
  v19 = a3;
  if (v19)
  {
    v4 = v19;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        [v5 addObserver:self forKeyPath:@"contentOffset" options:1 context:&scrollingKVOContext];
        v6 = objc_alloc_init(SKWeakContainer);
        [(SKWeakContainer *)v6 setScrollingView:v5];
        [(SKWeakContainer *)v6 setTrackingView:v19];
        v7 = [v19 _sk_isAtLeast50PercentOnScreen];

        [(SKWeakContainer *)v6 setWasOnScreen:v7];
        v8 = [(SKScrollDetector *)self subscribedScrollers];
        [v8 addObject:v6];
      }

      [v4 frame];
      [v4 frame];
      [v4 bounds];
      [v4 bounds];
      v9 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v9 bounds];
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
      v18 = [v4 superview];

      v4 = v18;
    }

    while (v18);
  }
}

- (void)stopListeningForScrollingOfView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SKScrollDetector *)self subscribedScrollers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 trackingView];
        v13 = v12;
        if (v12 == v4)
        {
        }

        else
        {
          v14 = [v11 trackingView];

          if (v14)
          {
            continue;
          }
        }

        v15 = [v11 scrollingView];
        [v15 removeObserver:self forKeyPath:@"contentOffset" context:&scrollingKVOContext];

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = [(SKScrollDetector *)self subscribedScrollers];
  [v16 removeObjectsInArray:v5];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (a6 == &scrollingKVOContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v32 = v10;
    v11 = v10;
    v12 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(SKScrollDetector *)self subscribedScrollers];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v34 + 1) + 8 * v17);
      v19 = [v18 trackingView];

      if (v19)
      {
        v20 = [v18 scrollingView];

        if (v20 == v11)
        {
          v21 = [v18 trackingView];
          if ([v21 _sk_isAtLeast50PercentOnScreen])
          {
            v22 = [v18 wasOnScreen];

            if ((v22 & 1) == 0)
            {
              v23 = [(SKScrollDetector *)self screenTrakingDelegate];
              v24 = [v18 trackingView];
              [v23 sk_didBecomeOnScreen:v24];

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

          v27 = [v18 trackingView];
          if ([v27 _sk_isAtLeast50PercentOnScreen])
          {
          }

          else
          {
            v28 = [v18 wasOnScreen];

            if (v28)
            {
              v29 = [(SKScrollDetector *)self screenTrakingDelegate];
              v30 = [v18 trackingView];
              [v29 sk_didBecomeOffScreen:v30];

              v25 = v18;
              v26 = 0;
              goto LABEL_20;
            }
          }
        }
      }

      else
      {
        [v12 addObject:v18];
      }

LABEL_21:
      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (!v15)
        {
LABEL_23:

          v31 = [(SKScrollDetector *)self subscribedScrollers];
          [v31 removeObjectsInArray:v12];

          v10 = v32;
          goto LABEL_24;
        }

        goto LABEL_6;
      }
    }
  }

  v33.receiver = self;
  v33.super_class = SKScrollDetector;
  [(SKScrollDetector *)&v33 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
LABEL_24:
}

- (SKScreenTrackingDelegate)screenTrakingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_screenTrakingDelegate);

  return WeakRetained;
}

@end
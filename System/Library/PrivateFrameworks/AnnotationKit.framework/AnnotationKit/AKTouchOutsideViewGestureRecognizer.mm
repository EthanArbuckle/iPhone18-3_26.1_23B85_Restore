@interface AKTouchOutsideViewGestureRecognizer
- (AKTouchOutsideViewGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 watchView:(id)a5;
- (UIView)watchView;
- (void)addTarget:(id)a3 action:(SEL)a4;
- (void)dealloc;
- (void)removeTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation AKTouchOutsideViewGestureRecognizer

- (AKTouchOutsideViewGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 watchView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = AKTouchOutsideViewGestureRecognizer;
  v10 = [(AKTouchOutsideViewGestureRecognizer *)&v15 initWithTarget:0 action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mWatchView, v9);
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mTargets = v11->mTargets;
    v11->mTargets = v12;

    [(AKTouchOutsideViewGestureRecognizer *)v11 setDelegate:v11];
    [(AKTouchOutsideViewGestureRecognizer *)v11 addTarget:v8 action:a4];
  }

  return v11;
}

- (void)dealloc
{
  mTargets = self->mTargets;
  self->mTargets = 0;

  objc_storeWeak(&self->mWatchView, 0);
  v4.receiver = self;
  v4.super_class = AKTouchOutsideViewGestureRecognizer;
  [(AKTouchOutsideViewGestureRecognizer *)&v4 dealloc];
}

- (void)addTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(AKTouchOutsideViewGestureRecognizerTarget);
  [(AKTouchOutsideViewGestureRecognizerTarget *)v7 setTarget:v6];

  [(AKTouchOutsideViewGestureRecognizerTarget *)v7 setAction:a4];
  [(NSMutableSet *)self->mTargets addObject:v7];
}

- (void)removeTarget:(id)a3 action:(SEL)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = [MEMORY[0x277CBEB58] set];
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
        if (!v6 || ([*(*(&v24 + 1) + 8 * v11) target], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v6))
        {
          if (!a4 || [v12 action] == a4)
          {
            [v19 addObject:v12];
          }
        }

        ++v11;
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

        [(NSMutableSet *)self->mTargets removeObject:*(*(&v20 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = self;
  v8 = [(AKTouchOutsideViewGestureRecognizer *)self watchView];
  v9 = v8;
  if (v8)
  {
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v51;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v50 + 1) + 8 * i) locationInView:v9];
          v58.x = v24;
          v58.y = v25;
          v59.origin.x = v11;
          v59.origin.y = v13;
          v59.size.width = v15;
          v59.size.height = v17;
          v21 |= CGRectContainsPoint(v59, v58);
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
  v26 = [v7 allTouches];
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v47;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v29 |= [v6 containsObject:*(*(&v46 + 1) + 8 * j)] ^ 1;
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  if (((v21 | v29) & 1) == 0)
  {
    v40 = v7;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v41->mTargets;
    v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v42 + 1) + 8 * k);
          v38 = [v37 target];
          [v38 performSelector:objc_msgSend(v37 withObject:{"action"), v41}];
        }

        v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v34);
    }

    v7 = v40;
  }

  if (v21 & 1 | ((v29 & 1) == 0))
  {
    v39 = 5;
  }

  else
  {
    v39 = 1;
  }

  [(AKTouchOutsideViewGestureRecognizer *)v41 setState:v39, v40];
}

- (UIView)watchView
{
  WeakRetained = objc_loadWeakRetained(&self->mWatchView);

  return WeakRetained;
}

@end
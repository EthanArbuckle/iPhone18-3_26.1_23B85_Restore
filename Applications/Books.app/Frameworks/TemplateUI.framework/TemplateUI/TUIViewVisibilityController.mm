@interface TUIViewVisibilityController
- (CGRect)_computeClippingBoundsForObserver:(id)observer;
- (TUIViewVisibilityController)initWithView:(id)view scrollView:(id)scrollView;
- (double)_updateVisibilityWithTime:(double)time;
- (id)observeNavigationBarView:(id)view options:(id)options block:(id)block;
- (id)observeView:(id)view options:(id)options block:(id)block;
- (void)_scheduleUpdateAtTime:(double)time;
- (void)_timeCheck;
- (void)_updateVisibilityForObserver:(id)observer time:(double)time;
- (void)setVisible:(BOOL)visible;
- (void)updatePopoverLayout;
- (void)updateView;
- (void)updatedVisibleBoundsOfScrollView:(id)view;
@end

@implementation TUIViewVisibilityController

- (TUIViewVisibilityController)initWithView:(id)view scrollView:(id)scrollView
{
  viewCopy = view;
  scrollViewCopy = scrollView;
  v18.receiver = self;
  v18.super_class = TUIViewVisibilityController;
  v9 = [(TUIViewVisibilityController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, view);
    objc_storeStrong(&v10->_scrollView, scrollView);
    [viewCopy frame];
    v10->_frame.origin.x = v11;
    v10->_frame.origin.y = v12;
    v10->_frame.size.width = v13;
    v10->_frame.size.height = v14;
    v15 = [NSHashTable hashTableWithOptions:512];
    observers = v10->_observers;
    v10->_observers = v15;
  }

  return v10;
}

- (void)updateView
{
  [(UIView *)self->_view frame];
  v11.origin.x = v3;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  if (!CGRectEqualToRect(self->_frame, v11))
  {
    v7 = +[NSDate now];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;

    [(TUIViewVisibilityController *)self _updateVisibilityWithTime:v9];

    [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:?];
  }
}

- (void)updatePopoverLayout
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_observers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) updatePopoverLayout];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)observeView:(id)view options:(id)options block:(id)block
{
  viewCopy = view;
  optionsCopy = options;
  blockCopy = block;
  v11 = [[_TUIViewVisibilityObserver alloc] initWithView:viewCopy options:optionsCopy kind:0 block:blockCopy];
  [(TUIViewVisibilityController *)self _addObserver:v11];
  v12 = +[NSDate now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  [(TUIViewVisibilityController *)self _updateVisibilityForObserver:v11 time:v14];
  if ([(_TUIViewVisibilityObserver *)v11 needsTimer])
  {
    options = [(_TUIViewVisibilityObserver *)v11 options];
    [options duration];
    [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:v14 + v16];
  }

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_171E0;
  v20[3] = &unk_25DF18;
  objc_copyWeak(&v22, &location);
  v17 = v11;
  v21 = v17;
  v18 = [TUICancellable newWithCancelBlock:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v18;
}

- (id)observeNavigationBarView:(id)view options:(id)options block:(id)block
{
  viewCopy = view;
  optionsCopy = options;
  blockCopy = block;
  v11 = [[_TUIViewVisibilityObserver alloc] initWithView:viewCopy options:optionsCopy kind:1 block:blockCopy];
  [(TUIViewVisibilityController *)self _addObserver:v11];
  v12 = +[NSDate now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  [(TUIViewVisibilityController *)self _updateVisibilityForObserver:v11 time:v14];
  if ([(_TUIViewVisibilityObserver *)v11 needsTimer])
  {
    options = [(_TUIViewVisibilityObserver *)v11 options];
    [options duration];
    [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:v14 + v16];
  }

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_173F8;
  v20[3] = &unk_25DF18;
  objc_copyWeak(&v22, &location);
  v17 = v11;
  v21 = v17;
  v18 = [TUICancellable newWithCancelBlock:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v18;
}

- (void)updatedVisibleBoundsOfScrollView:(id)view
{
  viewCopy = view;
  if ([viewCopy isDescendantOfView:self->_view])
  {
    v5 = +[NSDate now];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_observers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v12 = INFINITY;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 kind] != &dword_0 + 1)
          {
            view = [v14 view];
            v16 = [view isDescendantOfView:viewCopy];

            if (!v16)
            {
              continue;
            }
          }

          [(TUIViewVisibilityController *)self _updateVisibilityForObserver:v14 time:v7];
          if ([v14 needsTimer])
          {
            options = [v14 options];
            [options duration];
            v19 = v7 + v18;

            v12 = fmin(v12, v19);
          }
        }

        v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = INFINITY;
    }

    [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:v12];
  }
}

- (double)_updateVisibilityWithTime:(double)time
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = INFINITY;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [(TUIViewVisibilityController *)self _updateVisibilityForObserver:v11 time:time, v16];
        if ([v11 needsTimer])
        {
          options = [v11 options];
          [options duration];
          v14 = v13 + time;

          v9 = fmin(v9, v14);
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = INFINITY;
  }

  return v9;
}

- (void)_updateVisibilityForObserver:(id)observer time:(double)time
{
  observerCopy = observer;
  [(TUIViewVisibilityController *)self _computeClippingBoundsForObserver:observerCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  options = [observerCopy options];
  view = [observerCopy view];
  [view bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!self->_visible || (v48.origin.x = v16, v48.origin.y = v18, v48.size.width = v20, v48.size.height = v22, v51.origin.x = v6, v51.origin.y = v8, v51.size.width = v10, v51.size.height = v12, !CGRectIntersectsRect(v48, v51)) || (-[UIScrollView bounds](self->_scrollView, "bounds"), v42 = v23, v44 = v24, -[UIScrollView adjustedContentInset](self->_scrollView, "adjustedContentInset"), v29 = fmin(v20, v42 - (v25 + v26)), v41 = fmin(v22, v44 - (v27 + v28)), v43 = v29, v49.origin.x = v16, v49.origin.y = v18, v49.size.width = v20, v49.size.height = v22, v52.origin.x = v6, v52.origin.y = v8, v52.size.width = v10, v52.size.height = v12, v50 = CGRectIntersection(v49, v52), v30 = v50.size.width * v50.size.height / (v43 * v41), [options fraction], v30 < v31))
  {
    v32 = 0;
LABEL_5:
    v33 = observerCopy;
    goto LABEL_6;
  }

  if (([options flags] & 1) == 0)
  {
    v32 = 1;
    goto LABEL_5;
  }

  if ([observerCopy kind] == &dword_0 + 1)
  {
    if ([(UIScrollView *)self->_scrollView isDragging])
    {
      isDecelerating = 1;
    }

    else
    {
      isDecelerating = [(UIScrollView *)self->_scrollView isDecelerating];
    }
  }

  else
  {
    view2 = [observerCopy view];
    if (view2)
    {
      v36 = view2;
      while (v36 != self->_view)
      {
        v37 = objc_opt_class();
        v38 = TUIDynamicCast(v37, v36);
        v39 = v38;
        if (v38)
        {
          if ([v38 isDragging])
          {
            isDecelerating = 1;
          }

          else
          {
            isDecelerating = [v39 isDecelerating];
          }
        }

        else
        {
          isDecelerating = 0;
        }

        v40 = [(UIView *)v36 superview:*&v41];

        if ((isDecelerating & 1) == 0)
        {
          v36 = v40;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      isDecelerating = 0;
      v40 = v36;
LABEL_28:
    }

    else
    {
      isDecelerating = 0;
    }
  }

  v33 = observerCopy;
  v32 = isDecelerating ^ 1;
LABEL_6:
  [v33 updateVisible:v32 time:{time, *&v41, *&v43}];
}

- (void)_scheduleUpdateAtTime:(double)time
{
  if (fabs(time) != INFINITY && (!self->_queuedTimeCheck || self->_earliestTimeCheck > time))
  {
    self->_queuedTimeCheck = 1;
    self->_earliestTimeCheck = time;
    v5 = +[NSDate now];
    [v5 timeIntervalSinceReferenceDate];
    v7 = time - v6;

    v8 = dispatch_time(0, (fmax(v7, 0.0) * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_17B1C;
    block[3] = &unk_25DE30;
    block[4] = self;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (void)_timeCheck
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  [(TUIViewVisibilityController *)self _updateVisibilityWithTime:v5];

  [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:?];
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    v5 = +[NSDate now];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    [(TUIViewVisibilityController *)self _updateVisibilityWithTime:v7];

    [(TUIViewVisibilityController *)self _scheduleUpdateAtTime:?];
  }
}

- (CGRect)_computeClippingBoundsForObserver:(id)observer
{
  observerCopy = observer;
  v5 = self->_view;
  view = [observerCopy view];
  if ([observerCopy kind] == &dword_0 + 1)
  {
    window = [(UIView *)self->_view window];

    v5 = window;
  }

  x = CGRectInfinite.origin.x;
  y = CGRectInfinite.origin.y;
  width = CGRectInfinite.size.width;
  height = CGRectInfinite.size.height;
  if (v5)
  {
    v12 = view == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v5 != view)
  {
    superview = [(UIView *)view superview];
    if (superview)
    {
      v15 = superview;
      do
      {
        if ([(UIView *)v15 clipsToBounds])
        {
          [(UIView *)v15 bounds];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          if (objc_opt_respondsToSelector())
          {
            [(UIView *)v15 adjustedContentInset];
            v17 = v17 + v24;
            v19 = v19 + v25;
            v21 = v21 - (v24 + v26);
            v23 = v23 - (v25 + v27);
          }

          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          IsInfinite = CGRectIsInfinite(v47);
          [(UIView *)v15 convertRect:view toView:v17, v19, v21, v23];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;
          if (!IsInfinite)
          {
            v48.origin.x = x;
            v48.origin.y = y;
            v48.size.width = width;
            v48.size.height = height;
            v49 = CGRectIntersection(v48, *&v30);
            v30 = v49.origin.x;
            v32 = v49.origin.y;
            v34 = v49.size.width;
            v36 = v49.size.height;
          }

          x = v30;
          y = v32;
          width = v34;
          height = v36;
          v50.origin.x = v30;
          v50.origin.y = v32;
          v50.size.width = v34;
          v50.size.height = v36;
          if (CGRectIsEmpty(v50))
          {
            break;
          }
        }

        if (v15 == v5)
        {
          break;
        }

        superview2 = [(UIView *)v15 superview];

        v15 = superview2;
      }

      while (superview2);
    }
  }

  window2 = [(UIView *)self->_view window];
  if (window2)
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    if (!CGRectIsEmpty(v51))
    {
      [window2 bounds];
      [window2 convertRect:view toView:?];
      v55.origin.x = v39;
      v55.origin.y = v40;
      v55.size.width = v41;
      v55.size.height = v42;
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v53 = CGRectIntersection(v52, v55);
      x = v53.origin.x;
      y = v53.origin.y;
      width = v53.size.width;
      height = v53.size.height;
    }
  }

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

@end
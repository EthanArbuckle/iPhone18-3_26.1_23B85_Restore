@interface AVMobileGlassContentTabsViewController
- (AVMobileGlassContentTabsViewController)init;
- (AVMobileGlassContentTabsViewControllerDelegate)delegate;
- (void)_activeContentTab;
- (void)_didChangeContentTabTo:(id)to;
- (void)_invalidateContentViewScrollViewAnimator;
- (void)_setActiveCustomInfoViewControllerForContentTab:(uint64_t)tab;
- (void)_setSelectedCustomInfoViewControllerForContentTab:(uint64_t)tab withChangingReason:;
- (void)_updateContentTabsPresentationWithTransitioningState:(void *)state from:(void *)from to:;
- (void)_updateSelectedCustomInfoViewControllerWithChangingReason:(id *)reason;
- (void)contentTabsView:(id)view didChangeContentTab:(id)tab withReason:(unint64_t)reason;
- (void)contentTabsView:(id)view didUpdateTopContentInset:(double)inset;
- (void)invalidateContentTabsSelection;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectInitialCustomInfoViewController;
- (void)setBackgroundBlurActive:(BOOL)active;
- (void)setCurrentContentTabIndex:(int64_t)index;
- (void)setCustomInfoViewControllers:(id)controllers;
- (void)setTransitionState:(unint64_t)state;
- (void)setUpcomingContentTab:(id)tab;
- (void)updateSelectedCustomInfoViewController;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AVMobileGlassContentTabsViewController

- (AVMobileGlassContentTabsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  [(AVMobileGlassContentTabsView *)self->_contentTabsView setNeedsLayout];
  [deceleratingCopy frame];
  v5 = v4;
  [deceleratingCopy contentOffset];
  v7 = (v6 / v5);
  if ([(AVMobileGlassContentTabsView *)self->_contentTabsView effectiveUserInterfaceLayoutDirection]== 1)
  {
    contentTabs = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
    v7 = [contentTabs count] + ~v7;
  }

  contentTabs2 = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
  v10 = [contentTabs2 count];

  panGestureRecognizer = [deceleratingCopy panGestureRecognizer];
  view = [panGestureRecognizer view];

  panGestureRecognizer2 = [deceleratingCopy panGestureRecognizer];
  [panGestureRecognizer2 locationInView:view];
  v15 = v14;
  v16 = v14 - 1;
  v17 = ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;

  if (v15 >= 0 && v17 <= 0x3FE || v16 <= 0xFFFFFFFFFFFFELL)
  {
    if (v7 >= v10 - 1)
    {
      v20 = v10 - 1;
    }

    else
    {
      v20 = v7;
    }

    [(AVMobileGlassContentTabsViewController *)self setCurrentContentTabIndex:v20];
    [(AVMobileGlassContentTabsViewController *)self setTransitionState:0];
    [(AVMobileGlassContentTabsViewController *)self setUpcomingContentTab:0];
    _activeContentTab = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    v22 = _activeContentTab;
    if (self->_upcomingCustomInfoViewController)
    {
      viewController = [_activeContentTab viewController];
      upcomingCustomInfoViewController = self->_upcomingCustomInfoViewController;

      if (viewController != upcomingCustomInfoViewController)
      {
        [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
        v25 = self->_upcomingCustomInfoViewController;
        self->_upcomingCustomInfoViewController = 0;

        [(AVMobileGlassContentTabsViewController *)self setUpcomingContentTab:0];
      }
    }
  }
}

- (void)_invalidateContentViewScrollViewAnimator
{
  if (self)
  {
    v2 = *(self + 1040);
    if (v2)
    {
      [v2 stopAnimation:1];
      [*(self + 1040) finishAnimationAtPosition:2];
      v3 = *(self + 1040);
      *(self + 1040) = 0;

      v4 = *(self + 1032);

      [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:v4];
    }
  }
}

- (void)_activeContentTab
{
  selfCopy = self;
  if (self)
  {
    contentTabs = [self[124] contentTabs];
    if (![contentTabs count] || selfCopy[137] == -1)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = [contentTabs objectAtIndex:?];
    }
  }

  return selfCopy;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([scrollCopy isTracking])
  {
    [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  }

  v4 = self->_upcomingContentTab;
  contentTabs = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
  if ([scrollCopy isTracking] && objc_msgSend(scrollCopy, "isDragging"))
  {
    effectiveUserInterfaceLayoutDirection = [(AVMobileGlassContentTabsView *)self->_contentTabsView effectiveUserInterfaceLayoutDirection];
    panGestureRecognizer = [scrollCopy panGestureRecognizer];
    [panGestureRecognizer translationInView:scrollCopy];
    v9 = v8;

    if (v9 <= 0.0)
    {
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        currentContentTabIndex = self->_currentContentTabIndex;
        if (currentContentTabIndex <= 1)
        {
          currentContentTabIndex = 1;
        }

        v12 = currentContentTabIndex - 1;
      }

      else
      {
        v16 = [contentTabs count];
        v17 = self->_currentContentTabIndex;
        if (v16 - 1 >= (v17 + 1))
        {
          v12 = v17 + 1;
        }

        else
        {
          v12 = v16 - 1;
        }
      }

      effectiveUserInterfaceLayoutDirection = 2;
    }

    else if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v10 = [contentTabs count];
      v11 = self->_currentContentTabIndex;
      if (v10 - 1 >= (v11 + 1))
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v10 - 1;
      }
    }

    else
    {
      v15 = self->_currentContentTabIndex;
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v12 = v15 - 1;
      effectiveUserInterfaceLayoutDirection = 1;
    }

    v13 = [contentTabs objectAtIndex:v12];

    panGestureRecognizer2 = [scrollCopy panGestureRecognizer];
    view = [panGestureRecognizer2 view];

    panGestureRecognizer3 = [scrollCopy panGestureRecognizer];
    [panGestureRecognizer3 locationInView:view];
    v22 = v21;
    v23 = v21 - 1;
    v24 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;

    if (v22 >= 0 && v24 <= 0x3FE || v23 <= 0xFFFFFFFFFFFFELL)
    {
      _activeContentTab = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];

      if (_activeContentTab != v13)
      {
        [(AVMobileGlassContentTabsViewController *)self setUpcomingContentTab:v13];
      }

      [(AVMobileGlassContentTabsViewController *)self setTransitionState:effectiveUserInterfaceLayoutDirection];
    }
  }

  else
  {
    v13 = v4;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (([draggingCopy isDecelerating] & 1) == 0)
  {
    [(AVMobileGlassContentTabsView *)self->_contentTabsView setNeedsLayout];
  }

  if ([draggingCopy isTracking])
  {
    [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  }

  [(AVMobileGlassContentTabsViewController *)self setTransitionState:0];
}

- (void)_didChangeContentTabTo:(id)to
{
  if (to)
  {
    contentTabsView = self->_contentTabsView;
    toCopy = to;
    contentTabs = [(AVMobileGlassContentTabsView *)contentTabsView contentTabs];
    v7 = [contentTabs indexOfObject:toCopy];

    initialContentTabIndex = v7;
  }

  else
  {
    initialContentTabIndex = self->_initialContentTabIndex;
    v7 = -1;
  }

  self->_initialContentTabIndex = initialContentTabIndex;

  [(AVMobileGlassContentTabsViewController *)self setCurrentContentTabIndex:v7];
}

- (void)contentTabsView:(id)view didUpdateTopContentInset:(double)inset
{
  selectedContentTab = [view selectedContentTab];
  viewController = [selectedContentTab viewController];

  [viewController setAdditionalSafeAreaInsets:{inset, 0.0, 0.0, 0.0}];
}

- (void)contentTabsView:(id)view didChangeContentTab:(id)tab withReason:(unint64_t)reason
{
  viewCopy = view;
  tabCopy = tab;
  v9 = tabCopy;
  self->_selectionChangedReason = reason;
  if (reason)
  {
    if (reason == 2)
    {
      [(AVMobileGlassContentTabsViewController *)self _didChangeContentTabTo:tabCopy];
      goto LABEL_18;
    }

    if (reason != 1)
    {
      goto LABEL_18;
    }

    selfCopy2 = self;
    v11 = 1;
  }

  else
  {
    if (tabCopy)
    {
      v12 = tabCopy;
      contentViewScrollViewAnimator = self->_contentViewScrollViewAnimator;
      v14 = 1.0;
      if (contentViewScrollViewAnimator && [(UIViewPropertyAnimator *)contentViewScrollViewAnimator isRunning]&& [(UIViewPropertyAnimator *)self->_contentViewScrollViewAnimator isInterruptible])
      {
        [(UIViewPropertyAnimator *)self->_contentViewScrollViewAnimator fractionComplete];
        v14 = v15;
        [(UIViewPropertyAnimator *)self->_contentViewScrollViewAnimator stopAnimation:1];
        [(UIViewPropertyAnimator *)self->_contentViewScrollViewAnimator finishAnimationAtPosition:2];
        v16 = self->_contentViewScrollViewAnimator;
        self->_contentViewScrollViewAnimator = 0;

        [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
      }

      v17 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:250.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      objc_initWeak(&location, self);
      v18 = objc_alloc(MEMORY[0x1E69DD278]);
      if (v14 <= 1.0)
      {
        v19 = v14;
      }

      else
      {
        v19 = 1.0;
      }

      v20 = [v18 initWithDuration:v17 timingParameters:v19 * 0.3];
      v21 = self->_contentViewScrollViewAnimator;
      self->_contentViewScrollViewAnimator = v20;

      v22 = self->_contentViewScrollViewAnimator;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __92__AVMobileGlassContentTabsViewController__performHorizontalTransitionAnimationToContentTab___block_invoke;
      v28[3] = &unk_1E7209A10;
      objc_copyWeak(&v30, &location);
      v23 = v12;
      v29 = v23;
      [(UIViewPropertyAnimator *)v22 addAnimations:v28];
      v24 = self->_contentViewScrollViewAnimator;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __92__AVMobileGlassContentTabsViewController__performHorizontalTransitionAnimationToContentTab___block_invoke_2;
      v26[3] = &unk_1E7209618;
      objc_copyWeak(&v27, &location);
      [(UIViewPropertyAnimator *)v24 addCompletion:v26];
      [(UIViewPropertyAnimator *)self->_contentViewScrollViewAnimator startAnimation];
      objc_destroyWeak(&v27);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
    }

    selfCopy2 = self;
    v11 = 0;
  }

  [(AVMobileGlassContentTabsViewController *)&selfCopy2->super.super.super.isa _updateSelectedCustomInfoViewControllerWithChangingReason:v11];
LABEL_18:
}

- (void)_updateSelectedCustomInfoViewControllerWithChangingReason:(id *)reason
{
  if (reason)
  {
    selectedContentTab = [reason[124] selectedContentTab];
    viewController = [selectedContentTab viewController];
    v6 = viewController;
    if (viewController && ([viewController isViewLoaded] & 1) == 0)
    {
      objc_initWeak(&location, reason);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __100__AVMobileGlassContentTabsViewController__updateSelectedCustomInfoViewControllerWithChangingReason___block_invoke;
      v7[3] = &unk_1E7207468;
      objc_copyWeak(v9, &location);
      v8 = v6;
      v9[1] = a2;
      dispatch_async(MEMORY[0x1E69E96A0], v7);

      objc_destroyWeak(v9);
      objc_destroyWeak(&location);
    }

    else
    {
      [(AVMobileGlassContentTabsViewController *)reason _setSelectedCustomInfoViewControllerForContentTab:selectedContentTab withChangingReason:a2];
    }
  }
}

void __92__AVMobileGlassContentTabsViewController__performHorizontalTransitionAnimationToContentTab___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didChangeContentTabTo:*(a1 + 32)];
}

void __92__AVMobileGlassContentTabsViewController__performHorizontalTransitionAnimationToContentTab___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(AVMobileChromelessContentTabsViewController *)WeakRetained _detachViewControllerIfNeeded:?];
    v2 = v3[130];
    v3[130] = 0;

    WeakRetained = v3;
  }
}

void __100__AVMobileGlassContentTabsViewController__updateSelectedCustomInfoViewControllerWithChangingReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[124] selectedContentTab];
    v4 = [v3 viewController];
    v5 = v4;
    if (v4 == *(a1 + 32))
    {
      [v4 loadViewIfNeeded];
      [(AVMobileGlassContentTabsViewController *)v6 _setSelectedCustomInfoViewControllerForContentTab:v3 withChangingReason:*(a1 + 48)];
    }

    WeakRetained = v6;
  }
}

- (void)_setSelectedCustomInfoViewControllerForContentTab:(uint64_t)tab withChangingReason:
{
  v5 = a2;
  if (self)
  {
    v11 = v5;
    viewController = [v5 viewController];
    if (self[126] != viewController)
    {
      objc_storeStrong(self + 126, viewController);
      [(AVMobileGlassContentTabsViewController *)self _setActiveCustomInfoViewControllerForContentTab:v11];
      delegate = [self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [self delegate];
        viewController2 = [v11 viewController];
        [delegate2 contentTabsViewController:self didChangeSelectedCustomInfoViewController:viewController2 withReason:tab];
      }
    }

    v5 = v11;
  }
}

- (void)_setActiveCustomInfoViewControllerForContentTab:(uint64_t)tab
{
  v3 = a2;
  if (tab)
  {
    v21 = v3;
    viewController = [v3 viewController];
    v5 = viewController;
    if (*(tab + 1016) == viewController)
    {
LABEL_30:

      v3 = v21;
      goto LABEL_31;
    }

    view = [viewController view];
    if (v5 == *(tab + 1016))
    {
      v8 = 1;
      if (!v5)
      {
LABEL_15:
        parentViewController = [v5 parentViewController];
        v10 = parentViewController == 0 || v8;

        if (!v10)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController already has a parent view controller: %@", v5}];
        }

        superview = [view superview];
        v12 = superview == 0 || v8;

        if (!v12)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController's view already has a superview: %@", v5}];
        }

        v13 = *(tab + 1024);
        if (v13 == v5)
        {
          [(AVMobileChromelessContentTabsViewController *)tab _detachViewControllerIfNeeded:v13];
          v14 = *(tab + 1024);
          *(tab + 1024) = 0;
        }

        v15 = *(tab + 1032);
        if (v15 == v5)
        {
          [(AVMobileChromelessContentTabsViewController *)tab _detachViewControllerIfNeeded:v15];
          v16 = *(tab + 1032);
          *(tab + 1032) = 0;
        }

        v17 = *(tab + 1016);
        if (v17 && !*(tab + 1040))
        {
          [(AVMobileChromelessContentTabsViewController *)tab _detachViewControllerIfNeeded:v17];
        }

        else
        {
          [(AVMobileChromelessContentTabsViewController *)tab _detachViewControllerIfNeeded:?];
          objc_storeStrong((tab + 1032), *(tab + 1016));
        }

        objc_storeStrong((tab + 1016), v5);
        v18 = *(tab + 1016);
        if (v18 != 0 && !v8)
        {
          [v18 willMoveToParentViewController:tab];
          [tab addChildViewController:*(tab + 1016)];
          [*(tab + 1016) didMoveToParentViewController:tab];
        }

        transitionState = [tab transitionState];
        selectedContentTab = [*(tab + 992) selectedContentTab];
        [(AVMobileGlassContentTabsViewController *)tab _updateContentTabsPresentationWithTransitioningState:transitionState from:selectedContentTab to:v21];

        goto LABEL_30;
      }
    }

    else
    {
      v8 = v5 == *(tab + 1024) || v5 == *(tab + 1032);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    if (([v5 isViewLoaded] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: Internal inconsistency. The activeCustomInfoViewController's view has not been loaded yet."];
    }

    goto LABEL_15;
  }

LABEL_31:
}

- (void)_updateContentTabsPresentationWithTransitioningState:(void *)state from:(void *)from to:
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  fromCopy = from;
  if (self)
  {
    v9 = stateCopy;
    v10 = fromCopy;
    v11 = *(self + 1048);
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = "[AVMobileGlassContentTabsViewController _updateContentTabsPresentationWithTransitioningState:from:to:]";
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = a2;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s Transitioning content tabs from: %@ --> to: %@, with transitioning state: %ld", buf, 0x2Au);
    }

    v13 = *(self + 992);
    v14 = v9;
    v16[0] = v14;
    v15 = v10;
    v16[1] = v15;
    v16[2] = a2;
    v16[3] = v11;
    if (v13)
    {
      [v13 setTransitionState:v16];
    }

    else
    {
    }
  }
}

- (void)setBackgroundBlurActive:(BOOL)active
{
  if (self->_backgroundBlurActive != active)
  {
    self->_backgroundBlurActive = active;
    [(AVMobileGlassContentTabsView *)self->_contentTabsView setBackgroundBlurActive:?];
  }
}

- (void)setCurrentContentTabIndex:(int64_t)index
{
  if (self->_currentContentTabIndex != index)
  {
    self->_currentContentTabIndex = index;
    _activeContentTab = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _setSelectedCustomInfoViewControllerForContentTab:_activeContentTab withChangingReason:0];
  }
}

- (void)setTransitionState:(unint64_t)state
{
  if (self->_transitionState != state)
  {
    self->_transitionState = state;
    _activeContentTab = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    upcomingContentTab = [(AVMobileGlassContentTabsViewController *)self upcomingContentTab];
    [(AVMobileGlassContentTabsViewController *)self _updateContentTabsPresentationWithTransitioningState:state from:_activeContentTab to:upcomingContentTab];
  }
}

- (void)setUpcomingContentTab:(id)tab
{
  tabCopy = tab;
  if (self->_upcomingContentTab != tabCopy)
  {
    v16 = tabCopy;
    objc_storeStrong(&self->_upcomingContentTab, tab);
    v6 = self->_upcomingContentTab;
    viewController = [(AVMobileContentTab *)v6 viewController];
    v8 = viewController;
    if (self->_upcomingCustomInfoViewController != viewController)
    {
      view = [(UIViewController *)viewController view];
      if (v8 && ![(UIViewController *)v8 isViewLoaded])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: Internal inconsistency. The upcomingCustomInfoViewController's view has not been loaded yet."];
      }

      parentViewController = [(UIViewController *)v8 parentViewController];

      if (parentViewController)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController already has a parent view controller: %@", v8}];
      }

      superview = [view superview];

      if (superview)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController's view already has a superview: %@", v8}];
      }

      upcomingCustomInfoViewController = self->_upcomingCustomInfoViewController;
      if (upcomingCustomInfoViewController)
      {
        [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
      }

      objc_storeStrong(&self->_upcomingCustomInfoViewController, v8);
      v13 = self->_upcomingCustomInfoViewController;
      if (v13)
      {
        [(UIViewController *)v13 willMoveToParentViewController:self];
        [(AVMobileGlassContentTabsViewController *)self addChildViewController:self->_upcomingCustomInfoViewController];
        [(UIViewController *)self->_upcomingCustomInfoViewController didMoveToParentViewController:self];
      }

      transitionState = [(AVMobileGlassContentTabsViewController *)self transitionState];
      _activeContentTab = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
      [(AVMobileGlassContentTabsViewController *)self _updateContentTabsPresentationWithTransitioningState:transitionState from:_activeContentTab to:v6];
    }

    tabCopy = v16;
  }
}

- (void)selectInitialCustomInfoViewController
{
  if (self && (initialContentTabIndex = self->_initialContentTabIndex, -[AVMobileGlassContentTabsView contentTabs](self->_contentTabsView, "contentTabs"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, -[AVMobileGlassContentTabsView contentTabs](self->_contentTabsView, "contentTabs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    if (initialContentTabIndex >= v5 - 1)
    {
      v8 = v5 - 1;
    }

    else
    {
      v8 = initialContentTabIndex;
    }

    contentTabs = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
    v10 = [contentTabs objectAtIndex:v8];
  }

  else
  {
    v10 = 0;
  }

  [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _setSelectedCustomInfoViewControllerForContentTab:v10 withChangingReason:0];
}

- (void)invalidateContentTabsSelection
{
  [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  [(AVMobileGlassContentTabsView *)self->_contentTabsView resetSelection];
  [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
  [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
  replacingCustomInfoViewController = self->_replacingCustomInfoViewController;

  [(AVMobileChromelessContentTabsViewController *)self _detachViewControllerIfNeeded:?];
}

- (void)updateSelectedCustomInfoViewController
{
  selectedContentTab = [(AVMobileGlassContentTabsView *)self->_contentTabsView selectedContentTab];
  [(AVMobileGlassContentTabsViewController *)self _setActiveCustomInfoViewControllerForContentTab:selectedContentTab];
}

- (void)setCustomInfoViewControllers:(id)controllers
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_customInfoViewControllers != controllers)
  {
    v4 = [controllers copy];
    customInfoViewControllers = self->_customInfoViewControllers;
    self->_customInfoViewControllers = v4;

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_customInfoViewControllers, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_customInfoViewControllers;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v17 + 1) + 8 * v11);
          v9 = v12 + 1;
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%ld", @"com.apple.avkit.AVPlayerViewController.content-tab-button", @"-", v12];
          v15 = [[AVMobileContentTab alloc] initWithCustomInfoViewController:v13 accessibilityIdentifier:v14];
          [v6 addObject:v15];

          ++v11;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [(AVMobileGlassContentTabsView *)self->_contentTabsView setContentTabs:v6];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = AVMobileGlassContentTabsViewController;
  [(AVMobileGlassContentTabsViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__AVMobileGlassContentTabsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7209140;
  objc_copyWeak(&v9, &location);
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __93__AVMobileGlassContentTabsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(AVMobileChromelessContentTabsViewController *)WeakRetained _detachViewControllerIfNeeded:?];
    [(AVMobileChromelessContentTabsViewController *)v2 _detachViewControllerIfNeeded:?];
    [(AVMobileChromelessContentTabsViewController *)v2 _detachViewControllerIfNeeded:?];
    [v2[124] resetSelection];
    [v2[124] setNeedsLayout];
    WeakRetained = v2;
  }
}

- (void)loadView
{
  v3 = [[AVMobileGlassContentTabsView alloc] initWithStyleSheet:self->_styleSheet];
  [(AVMobileGlassContentTabsView *)v3 setOverrideUserInterfaceStyle:2];
  [(AVMobileGlassContentTabsView *)v3 setDelegate:self];
  [(AVMobileGlassContentTabsView *)v3 setContentViewDelegate:self];
  [(AVMobileGlassContentTabsViewController *)self setView:v3];
  contentTabsView = self->_contentTabsView;
  self->_contentTabsView = v3;
}

- (AVMobileGlassContentTabsViewController)init
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassContentTabsViewController;
  v2 = [(AVMobileGlassContentTabsViewController *)&v8 init];
  if (v2)
  {
    avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
    traitCollection = [avkit_mainScreen traitCollection];

    v5 = [[AVMobileGlassControlsStyleSheet alloc] initWithTraitCollection:traitCollection];
    styleSheet = v2->_styleSheet;
    v2->_styleSheet = v5;

    v2->_initialContentTabIndex = 0;
    [(AVMobileGlassContentTabsViewController *)v2 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v2;
}

@end
@interface AVMobileGlassContentTabsViewController
- (AVMobileGlassContentTabsViewController)init;
- (AVMobileGlassContentTabsViewControllerDelegate)delegate;
- (void)_activeContentTab;
- (void)_didChangeContentTabTo:(id)a3;
- (void)_invalidateContentViewScrollViewAnimator;
- (void)_setActiveCustomInfoViewControllerForContentTab:(uint64_t)a1;
- (void)_setSelectedCustomInfoViewControllerForContentTab:(uint64_t)a3 withChangingReason:;
- (void)_updateContentTabsPresentationWithTransitioningState:(void *)a3 from:(void *)a4 to:;
- (void)_updateSelectedCustomInfoViewControllerWithChangingReason:(id *)a1;
- (void)contentTabsView:(id)a3 didChangeContentTab:(id)a4 withReason:(unint64_t)a5;
- (void)contentTabsView:(id)a3 didUpdateTopContentInset:(double)a4;
- (void)invalidateContentTabsSelection;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectInitialCustomInfoViewController;
- (void)setBackgroundBlurActive:(BOOL)a3;
- (void)setCurrentContentTabIndex:(int64_t)a3;
- (void)setCustomInfoViewControllers:(id)a3;
- (void)setTransitionState:(unint64_t)a3;
- (void)setUpcomingContentTab:(id)a3;
- (void)updateSelectedCustomInfoViewController;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AVMobileGlassContentTabsViewController

- (AVMobileGlassContentTabsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v26 = a3;
  [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  [(AVMobileGlassContentTabsView *)self->_contentTabsView setNeedsLayout];
  [v26 frame];
  v5 = v4;
  [v26 contentOffset];
  v7 = (v6 / v5);
  if ([(AVMobileGlassContentTabsView *)self->_contentTabsView effectiveUserInterfaceLayoutDirection]== 1)
  {
    v8 = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
    v7 = [v8 count] + ~v7;
  }

  v9 = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
  v10 = [v9 count];

  v11 = [v26 panGestureRecognizer];
  v12 = [v11 view];

  v13 = [v26 panGestureRecognizer];
  [v13 locationInView:v12];
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
    v21 = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    v22 = v21;
    if (self->_upcomingCustomInfoViewController)
    {
      v23 = [v21 viewController];
      upcomingCustomInfoViewController = self->_upcomingCustomInfoViewController;

      if (v23 != upcomingCustomInfoViewController)
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
  if (a1)
  {
    v2 = *(a1 + 1040);
    if (v2)
    {
      [v2 stopAnimation:1];
      [*(a1 + 1040) finishAnimationAtPosition:2];
      v3 = *(a1 + 1040);
      *(a1 + 1040) = 0;

      v4 = *(a1 + 1032);

      [(AVMobileChromelessContentTabsViewController *)a1 _detachViewControllerIfNeeded:v4];
    }
  }
}

- (void)_activeContentTab
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[124] contentTabs];
    if (![v2 count] || v1[137] == -1)
    {
      v1 = 0;
    }

    else
    {
      v1 = [v2 objectAtIndex:?];
    }
  }

  return v1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v28 = a3;
  if ([v28 isTracking])
  {
    [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  }

  v4 = self->_upcomingContentTab;
  v5 = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
  if ([v28 isTracking] && objc_msgSend(v28, "isDragging"))
  {
    v6 = [(AVMobileGlassContentTabsView *)self->_contentTabsView effectiveUserInterfaceLayoutDirection];
    v7 = [v28 panGestureRecognizer];
    [v7 translationInView:v28];
    v9 = v8;

    if (v9 <= 0.0)
    {
      if (v6 == 1)
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
        v16 = [v5 count];
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

      v6 = 2;
    }

    else if (v6 == 1)
    {
      v10 = [v5 count];
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
      v6 = 1;
    }

    v13 = [v5 objectAtIndex:v12];

    v18 = [v28 panGestureRecognizer];
    v19 = [v18 view];

    v20 = [v28 panGestureRecognizer];
    [v20 locationInView:v19];
    v22 = v21;
    v23 = v21 - 1;
    v24 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;

    if (v22 >= 0 && v24 <= 0x3FE || v23 <= 0xFFFFFFFFFFFFELL)
    {
      v27 = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];

      if (v27 != v13)
      {
        [(AVMobileGlassContentTabsViewController *)self setUpcomingContentTab:v13];
      }

      [(AVMobileGlassContentTabsViewController *)self setTransitionState:v6];
    }
  }

  else
  {
    v13 = v4;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  if (([v4 isDecelerating] & 1) == 0)
  {
    [(AVMobileGlassContentTabsView *)self->_contentTabsView setNeedsLayout];
  }

  if ([v4 isTracking])
  {
    [(AVMobileGlassContentTabsViewController *)self _invalidateContentViewScrollViewAnimator];
  }

  [(AVMobileGlassContentTabsViewController *)self setTransitionState:0];
}

- (void)_didChangeContentTabTo:(id)a3
{
  if (a3)
  {
    contentTabsView = self->_contentTabsView;
    v5 = a3;
    v6 = [(AVMobileGlassContentTabsView *)contentTabsView contentTabs];
    v7 = [v6 indexOfObject:v5];

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

- (void)contentTabsView:(id)a3 didUpdateTopContentInset:(double)a4
{
  v5 = [a3 selectedContentTab];
  v6 = [v5 viewController];

  [v6 setAdditionalSafeAreaInsets:{a4, 0.0, 0.0, 0.0}];
}

- (void)contentTabsView:(id)a3 didChangeContentTab:(id)a4 withReason:(unint64_t)a5
{
  v25 = a3;
  v8 = a4;
  v9 = v8;
  self->_selectionChangedReason = a5;
  if (a5)
  {
    if (a5 == 2)
    {
      [(AVMobileGlassContentTabsViewController *)self _didChangeContentTabTo:v8];
      goto LABEL_18;
    }

    if (a5 != 1)
    {
      goto LABEL_18;
    }

    v10 = self;
    v11 = 1;
  }

  else
  {
    if (v8)
    {
      v12 = v8;
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

    v10 = self;
    v11 = 0;
  }

  [(AVMobileGlassContentTabsViewController *)&v10->super.super.super.isa _updateSelectedCustomInfoViewControllerWithChangingReason:v11];
LABEL_18:
}

- (void)_updateSelectedCustomInfoViewControllerWithChangingReason:(id *)a1
{
  if (a1)
  {
    v4 = [a1[124] selectedContentTab];
    v5 = [v4 viewController];
    v6 = v5;
    if (v5 && ([v5 isViewLoaded] & 1) == 0)
    {
      objc_initWeak(&location, a1);
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
      [(AVMobileGlassContentTabsViewController *)a1 _setSelectedCustomInfoViewControllerForContentTab:v4 withChangingReason:a2];
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

- (void)_setSelectedCustomInfoViewControllerForContentTab:(uint64_t)a3 withChangingReason:
{
  v5 = a2;
  if (a1)
  {
    v11 = v5;
    v6 = [v5 viewController];
    if (a1[126] != v6)
    {
      objc_storeStrong(a1 + 126, v6);
      [(AVMobileGlassContentTabsViewController *)a1 _setActiveCustomInfoViewControllerForContentTab:v11];
      v7 = [a1 delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [a1 delegate];
        v10 = [v11 viewController];
        [v9 contentTabsViewController:a1 didChangeSelectedCustomInfoViewController:v10 withReason:a3];
      }
    }

    v5 = v11;
  }
}

- (void)_setActiveCustomInfoViewControllerForContentTab:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v21 = v3;
    v4 = [v3 viewController];
    v5 = v4;
    if (*(a1 + 1016) == v4)
    {
LABEL_30:

      v3 = v21;
      goto LABEL_31;
    }

    v6 = [v4 view];
    if (v5 == *(a1 + 1016))
    {
      v8 = 1;
      if (!v5)
      {
LABEL_15:
        v9 = [v5 parentViewController];
        v10 = v9 == 0 || v8;

        if (!v10)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController already has a parent view controller: %@", v5}];
        }

        v11 = [v6 superview];
        v12 = v11 == 0 || v8;

        if (!v12)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController's view already has a superview: %@", v5}];
        }

        v13 = *(a1 + 1024);
        if (v13 == v5)
        {
          [(AVMobileChromelessContentTabsViewController *)a1 _detachViewControllerIfNeeded:v13];
          v14 = *(a1 + 1024);
          *(a1 + 1024) = 0;
        }

        v15 = *(a1 + 1032);
        if (v15 == v5)
        {
          [(AVMobileChromelessContentTabsViewController *)a1 _detachViewControllerIfNeeded:v15];
          v16 = *(a1 + 1032);
          *(a1 + 1032) = 0;
        }

        v17 = *(a1 + 1016);
        if (v17 && !*(a1 + 1040))
        {
          [(AVMobileChromelessContentTabsViewController *)a1 _detachViewControllerIfNeeded:v17];
        }

        else
        {
          [(AVMobileChromelessContentTabsViewController *)a1 _detachViewControllerIfNeeded:?];
          objc_storeStrong((a1 + 1032), *(a1 + 1016));
        }

        objc_storeStrong((a1 + 1016), v5);
        v18 = *(a1 + 1016);
        if (v18 != 0 && !v8)
        {
          [v18 willMoveToParentViewController:a1];
          [a1 addChildViewController:*(a1 + 1016)];
          [*(a1 + 1016) didMoveToParentViewController:a1];
        }

        v19 = [a1 transitionState];
        v20 = [*(a1 + 992) selectedContentTab];
        [(AVMobileGlassContentTabsViewController *)a1 _updateContentTabsPresentationWithTransitioningState:v19 from:v20 to:v21];

        goto LABEL_30;
      }
    }

    else
    {
      v8 = v5 == *(a1 + 1024) || v5 == *(a1 + 1032);
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

- (void)_updateContentTabsPresentationWithTransitioningState:(void *)a3 from:(void *)a4 to:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(a1 + 1048);
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

    v13 = *(a1 + 992);
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

- (void)setBackgroundBlurActive:(BOOL)a3
{
  if (self->_backgroundBlurActive != a3)
  {
    self->_backgroundBlurActive = a3;
    [(AVMobileGlassContentTabsView *)self->_contentTabsView setBackgroundBlurActive:?];
  }
}

- (void)setCurrentContentTabIndex:(int64_t)a3
{
  if (self->_currentContentTabIndex != a3)
  {
    self->_currentContentTabIndex = a3;
    v5 = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _setSelectedCustomInfoViewControllerForContentTab:v5 withChangingReason:0];
  }
}

- (void)setTransitionState:(unint64_t)a3
{
  if (self->_transitionState != a3)
  {
    self->_transitionState = a3;
    v7 = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
    v6 = [(AVMobileGlassContentTabsViewController *)self upcomingContentTab];
    [(AVMobileGlassContentTabsViewController *)self _updateContentTabsPresentationWithTransitioningState:a3 from:v7 to:v6];
  }
}

- (void)setUpcomingContentTab:(id)a3
{
  v5 = a3;
  if (self->_upcomingContentTab != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_upcomingContentTab, a3);
    v6 = self->_upcomingContentTab;
    v7 = [(AVMobileContentTab *)v6 viewController];
    v8 = v7;
    if (self->_upcomingCustomInfoViewController != v7)
    {
      v9 = [(UIViewController *)v7 view];
      if (v8 && ![(UIViewController *)v8 isViewLoaded])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: Internal inconsistency. The upcomingCustomInfoViewController's view has not been loaded yet."];
      }

      v10 = [(UIViewController *)v8 parentViewController];

      if (v10)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"A customInfoViewController already has a parent view controller: %@", v8}];
      }

      v11 = [v9 superview];

      if (v11)
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

      v14 = [(AVMobileGlassContentTabsViewController *)self transitionState];
      v15 = [(AVMobileGlassContentTabsViewController *)&self->super.super.super.isa _activeContentTab];
      [(AVMobileGlassContentTabsViewController *)self _updateContentTabsPresentationWithTransitioningState:v14 from:v15 to:v6];
    }

    v5 = v16;
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

    v9 = [(AVMobileGlassContentTabsView *)self->_contentTabsView contentTabs];
    v10 = [v9 objectAtIndex:v8];
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
  v3 = [(AVMobileGlassContentTabsView *)self->_contentTabsView selectedContentTab];
  [(AVMobileGlassContentTabsViewController *)self _setActiveCustomInfoViewControllerForContentTab:v3];
}

- (void)setCustomInfoViewControllers:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_customInfoViewControllers != a3)
  {
    v4 = [a3 copy];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVMobileGlassContentTabsViewController;
  [(AVMobileGlassContentTabsViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__AVMobileGlassContentTabsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7209140;
  objc_copyWeak(&v9, &location);
  [v7 animateAlongsideTransition:v8 completion:0];
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
    v3 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
    v4 = [v3 traitCollection];

    v5 = [[AVMobileGlassControlsStyleSheet alloc] initWithTraitCollection:v4];
    styleSheet = v2->_styleSheet;
    v2->_styleSheet = v5;

    v2->_initialContentTabIndex = 0;
    [(AVMobileGlassContentTabsViewController *)v2 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v2;
}

@end
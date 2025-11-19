@interface MKStackingViewController
- (BOOL)_isSafeToPerformLayout;
- (BOOL)isViewVisbile:(id)a3 percentageTreshold:(double)a4;
- (MKStackingViewControllerDelegate)stackingDelegate;
- (double)_fittingHeightForView:(id)a3;
- (double)stackView:(id)a3 distanceBetweenUpperView:(id)a4 andLowerView:(id)a5;
- (void)_addPreferredHeightConstraintForViewControllerIfNeeded:(id)a3;
- (void)_callViewControllersLayoutDelegateIfNeeded;
- (void)_removePreferredHeightConstraintFromViewController:(id)a3;
- (void)_sendScrollnotification;
- (void)_setOverlayViewFrame;
- (void)_setPreferredHeight:(double)a3 forViewController:(id)a4;
- (void)_setScrollEnabled:(BOOL)a3 forcedUpdate:(BOOL)a4;
- (void)_setUpEnteringViewController:(id)a3;
- (void)_updateFixedHeightAwareControllers;
- (void)_updateStackViewSubviewsAndChildVCsEntering:(id)a3 exiting:(id)a4;
- (void)_updateViewControllerVisibilityAfterPositionChange;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)removeOverlayViewAnimated:(BOOL)a3;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setOverlayView:(id)a3 withOriginY:(double)a4;
- (void)setStackingDelegate:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)setWidthConstraintConstant:(double)a3;
- (void)stackViewNeedsLayout:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MKStackingViewController

- (MKStackingViewControllerDelegate)stackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stackingDelegate);

  return WeakRetained;
}

- (BOOL)isViewVisbile:(id)a3 percentageTreshold:(double)a4
{
  v6 = a3;
  if (self->_isScrollDisabled)
  {
    v7 = &OBJC_IVAR___MKStackingViewController__stackView;
  }

  else
  {
    v7 = &OBJC_IVAR___MKStackingViewController__scrollView;
  }

  [*(&self->super.super.super.isa + *v7) frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  contentView = self->_contentView;
  [v6 bounds];
  [(_MKStackingContentView *)contentView convertRect:v6 fromView:?];
  v29.origin.x = v17;
  v29.origin.y = v18;
  v29.size.width = v19;
  v29.size.height = v20;
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v28 = CGRectIntersection(v27, v29);
  height = v28.size.height;
  IsNull = CGRectIsNull(v28);
  v23 = 0.0;
  if (!IsNull)
  {
    [v6 bounds];
    v23 = height / v24;
  }

  v25 = v23 >= a4;

  return v25;
}

- (void)_updateViewControllerVisibilityAfterPositionChange
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(MKStackingViewController *)self stackingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MKStackingViewController *)self stackingDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = [(MKStackingViewController *)self viewControllers];
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            v12 = [(MKStackingViewController *)self stackingDelegate];
            [v12 stackingViewController:self minimumVisibleSurfacePercentForAnalyticsSelection:v11];
            v14 = v13;

            v15 = [v11 view];
            v16 = [(MKStackingViewController *)self isViewVisbile:v15 percentageTreshold:v14];

            minimallyVisibleViews = self->_minimallyVisibleViews;
            v18 = [v11 view];
            LODWORD(minimallyVisibleViews) = [(NSHashTable *)minimallyVisibleViews containsObject:v18];

            if (v16 != minimallyVisibleViews)
            {
              v19 = self->_minimallyVisibleViews;
              v20 = [v11 view];
              if (v16)
              {
                [(NSHashTable *)v19 addObject:v20];

                v20 = [(MKStackingViewController *)self stackingDelegate];
                [v20 stackingViewController:self didShowMinimumVisibleSurfacePercentForAnalyticsSelection:v11];
              }

              else
              {
                [(NSHashTable *)v19 removeObject:v20];
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)_sendScrollnotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MKStackingScrollNotification" object:self->_scrollView];
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v8 = v5 - v7;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentOffset:v3 animated:v8, v6 - v9];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [(MKStackingViewController *)self stackingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKStackingViewController *)self stackingDelegate];
    [v6 stackingViewControllerDidEndScroll:self];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v10 = v6;
    v7 = [(MKStackingViewController *)self stackingDelegate];
    v8 = objc_opt_respondsToSelector();

    v6 = v10;
    if (v8)
    {
      v9 = [(MKStackingViewController *)self stackingDelegate];
      [v9 stackingViewControllerDidEndScroll:self];

      v6 = v10;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(MKStackingViewController *)self _updateViewControllerVisibilityAfterPositionChange];
  v4 = [(MKStackingViewController *)self stackingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKStackingViewController *)self stackingDelegate];
    [v6 stackingViewControllerWillBeginScroll:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(MKStackingViewController *)self _didScroll];

  [(MKStackingViewController *)self _sendScrollnotification];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v5 viewDidLayoutSubviews];
  v3 = self->_countOfCurrentLayoutInvocations - 1;
  self->_countOfCurrentLayoutInvocations = v3;
  if (self->_overlayView)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [(MKStackingViewController *)self _setOverlayViewFrame];
  }

  [(MKStackingViewController *)self _callViewControllersLayoutDelegateIfNeeded];
  [(MKStackingViewController *)self _sendScrollnotification];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v8 viewWillLayoutSubviews];
  ++self->_countOfCurrentLayoutInvocations;
  [(_MKStackingContentView *)self->_contentView frame];
  Width = CGRectGetWidth(v9);
  v4 = 260.0;
  if (Width >= 260.0)
  {
    [(_MKStackingContentView *)self->_contentView frame];
    v4 = CGRectGetWidth(v10);
  }

  [(NSLayoutConstraint *)self->_widthConstraint setConstant:v4];
  if (self->_needsToPerformLayout)
  {
    if ([(MKStackingViewController *)self _isSafeToPerformLayout])
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = [(MKStackingViewController *)self viewControllers];
      v7 = [v5 setWithArray:v6];
      [(MKStackingViewController *)self _updateStackViewSubviewsAndChildVCsEntering:v7 exiting:0];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v7 viewDidAppear:a3];
  if (self->_needsToPerformLayout && [(MKStackingViewController *)self _isSafeToPerformLayout])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(MKStackingViewController *)self viewControllers];
    v6 = [v4 setWithArray:v5];
    [(MKStackingViewController *)self _updateStackViewSubviewsAndChildVCsEntering:v6 exiting:0];
  }

  [(MKStackingViewController *)self _updateViewControllerVisibilityAfterPositionChange];
}

- (void)updateViewConstraints
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!self->_contentViewConstraintsAdded)
  {
    self->_contentViewConstraintsAdded = 1;
    v3 = MEMORY[0x1E696ACD8];
    v23[0] = self->_widthConstraint;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v3 activateConstraints:v4];
  }

  overlayView = self->_overlayView;
  if (overlayView)
  {
    v6 = [(UIView *)overlayView superview];
    v7 = [(MKStackingViewController *)self view];

    if (v6 != v7)
    {
      v8 = [(MKStackingViewController *)self view];
      [v8 addSubview:self->_overlayView];

      [(MKStackingViewController *)self _setOverlayViewFrame];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(MKStackingViewController *)self viewControllers];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if ([v14 conformsToProtocol:&unk_1F16E5078])
        {
          v15 = [v14 requiresPreferredContentSizeInStackingView];

          if (v15 && [v14 isViewLoaded])
          {
            [v14 preferredContentSize];
            [(MKStackingViewController *)self _setPreferredHeight:v14 forViewController:v16];
          }
        }

        else
        {
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17.receiver = self;
  v17.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v17 updateViewConstraints];
}

- (void)_removePreferredHeightConstraintFromViewController:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:?];
  if (v4)
  {
    [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints removeObjectForKey:v6];
    v5 = [v6 view];
    [v5 removeConstraint:v4];
  }
}

- (void)_addPreferredHeightConstraintForViewControllerIfNeeded:(id)a3
{
  v9 = a3;
  if ([v9 conformsToProtocol:&unk_1F16E5078] && objc_msgSend(v9, "requiresPreferredContentSizeInStackingView") && objc_msgSend(v9, "isViewLoaded"))
  {
    v4 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:v9];
    if (!v4)
    {
      if (!self->_viewControllersToPreferredHeightConstraints)
      {
        v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        viewControllersToPreferredHeightConstraints = self->_viewControllersToPreferredHeightConstraints;
        self->_viewControllersToPreferredHeightConstraints = v5;
      }

      v7 = [v9 view];
      v8 = [v7 heightAnchor];
      v4 = [v8 constraintEqualToConstant:0.0];

      [v4 setActive:1];
      [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints setObject:v4 forKey:v9];
    }
  }
}

- (void)_setPreferredHeight:(double)a3 forViewController:(id)a4
{
  v6 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:a4];
  [v6 constant];
  if (v7 != a3)
  {
    v8 = [MEMORY[0x1E69DD250] _currentAnimationAttributes];
    if (v8)
    {
      v9 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__MKStackingViewController__setPreferredHeight_forViewController___block_invoke;
      v10[3] = &unk_1E76C8808;
      v13 = a3;
      v11 = v6;
      v12 = self;
      [v9 _animateWithAttributes:v8 animations:v10 completion:0];
    }

    else
    {
      [v6 setConstant:a3];
    }
  }
}

void __66__MKStackingViewController__setPreferredHeight_forViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setConstant:*(a1 + 48)];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  if (!self->_isSettingStackedViews)
  {
    v5 = v4;
    if (![v5 conformsToProtocol:&unk_1F16E5078])
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = [v5 requiresPreferredContentSizeInStackingView];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
        [v7 preferredContentSize];
        [(MKStackingViewController *)self _setPreferredHeight:v7 forViewController:v8];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
}

- (void)_setOverlayViewFrame
{
  v3 = [(MKStackingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  overlayViewOriginY = self->_overlayViewOriginY;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  Width = CGRectGetWidth(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Height = CGRectGetHeight(v19);
  overlayView = self->_overlayView;
  v16 = Height - self->_overlayViewOriginY;

  [(UIView *)overlayView setFrame:0.0, overlayViewOriginY, Width, v16];
}

- (void)removeOverlayViewAnimated:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(_MKStackView *)self->_stackView stackedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v3)
        {
          if ([*(*(&v16 + 1) + 8 * i) isHidden])
          {
            v11 = 0.0;
          }

          else
          {
            v11 = 1.0;
          }

          [v10 setAlpha:v11];
        }

        [v10 setHidden:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MKStackingViewController_removeOverlayViewAnimated___block_invoke;
  v15[3] = &unk_1E76CA670;
  v15[4] = self;
  v12 = MEMORY[0x1A58E9F30](v15);
  v13 = v12;
  if (v3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__MKStackingViewController_removeOverlayViewAnimated___block_invoke_2;
    v14[3] = &unk_1E76CDB38;
    v14[4] = self;
    [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v14 animations:v12 completion:0.25];
  }

  else
  {
    (*(v12 + 16))(v12, 1);
  }
}

void __54__MKStackingViewController_removeOverlayViewAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1096) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1096);
  *(v2 + 1096) = 0;
}

void __54__MKStackingViewController_removeOverlayViewAnimated___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 1096) setAlpha:0.0];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 992) stackedSubviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:1.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setOverlayView:(id)a3 withOriginY:(double)a4
{
  v7 = a3;
  overlayView = self->_overlayView;
  if (overlayView != v7)
  {
    v11 = v7;
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, a3);
    [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    self->_overlayViewOriginY = a4;
    v9 = [(MKStackingViewController *)self isViewLoaded];
    v7 = v11;
    if (v9)
    {
      if (self->_overlayView)
      {
        [(MKStackingViewController *)self _setOverlayViewFrame];
        v10 = [(MKStackingViewController *)self view];
        [v10 _mapkit_setNeedsUpdateConstraints];

        v7 = v11;
      }
    }
  }
}

- (void)_setUpEnteringViewController:(id)a3
{
  v7 = a3;
  if ([v7 isViewLoaded])
  {
    v4 = [v7 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    [v6 setScrollEnabled:0];
  }

  [(MKStackingViewController *)self _addPreferredHeightConstraintForViewControllerIfNeeded:v7];
}

- (double)stackView:(id)a3 distanceBetweenUpperView:(id)a4 andLowerView:(id)a5
{
  if (!self->_mayWantSpearators)
  {
    return 0.0;
  }

  viewsToViewControllers = self->_viewsToViewControllers;
  v8 = a5;
  v9 = [(NSMapTable *)viewsToViewControllers objectForKey:a4];
  v10 = [(NSMapTable *)self->_viewsToViewControllers objectForKey:v8];

  if (!(v9 | v10))
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_stackingDelegate);
  [WeakRetained stackingViewController:self heightForSeparatorBetweenUpperViewController:v9 andLowerViewController:v10];
  v14 = v13;

  return v14;
}

- (void)_callViewControllersLayoutDelegateIfNeeded
{
  if (self->_needToCallViewControllerLayoutDelegate)
  {
    self->_needToCallViewControllerLayoutDelegate = 0;
    v3 = [(MKStackingViewController *)self stackingDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(MKStackingViewController *)self stackingDelegate];
      [v5 stackingViewControllerDidLayoutViewControllers:self];
    }
  }
}

- (void)_updateStackViewSubviewsAndChildVCsEntering:(id)a3 exiting:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  self->_needsToPerformLayout = 0;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v57 = v6;
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_needToCallViewControllerLayoutDelegate = 1;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v83 objects:v93 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v84;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v84 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(MKStackingViewController *)self addChildViewController:*(*(&v83 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v83 objects:v93 count:16];
      }

      while (v10);
    }

    v54 = v8;
    v56 = v7;

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v13 = [(MKStackingViewController *)self viewControllers];
    v14 = [v13 countByEnumeratingWithState:&v79 objects:v92 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v80;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v80 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v79 + 1) + 8 * j);
          stackView = self->_stackView;
          v20 = [v18 view];
          [(_MKStackView *)stackView addSubview:v20];

          viewsToViewControllers = self->_viewsToViewControllers;
          v22 = [v18 view];
          [(NSMapTable *)viewsToViewControllers setObject:v18 forKey:v22];

          v23 = [v18 view];
          [v58 addObject:v23];
        }

        v15 = [v13 countByEnumeratingWithState:&v79 objects:v92 count:16];
      }

      while (v15);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = v56;
    v24 = v56;
    v25 = [v24 countByEnumeratingWithState:&v75 objects:v91 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v76;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v76 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v75 + 1) + 8 * k) willMoveToParentViewController:{0, v54}];
        }

        v26 = [v24 countByEnumeratingWithState:&v75 objects:v91 count:16];
      }

      while (v26);
    }

    overlayView = self->_overlayView;
    if (overlayView)
    {
      [(UIView *)overlayView alpha];
      if (v30 != 0.0)
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v31 = v58;
        v32 = [v31 countByEnumeratingWithState:&v71 objects:v90 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v72;
          do
          {
            for (m = 0; m != v33; ++m)
            {
              if (*v72 != v35)
              {
                objc_enumerationMutation(v31);
              }

              [*(*(&v71 + 1) + 8 * m) setHidden:{v34 & 1, v54}];
              v34 = 1;
            }

            v33 = [v31 countByEnumeratingWithState:&v71 objects:v90 count:16];
          }

          while (v33);
        }
      }
    }

    self->_isSettingStackedViews = 1;
    [(_MKStackView *)self->_stackView setStackedSubviews:v58, v54];
    self->_isSettingStackedViews = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v37 = v55;
    v38 = [v37 countByEnumeratingWithState:&v67 objects:v89 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v68;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v68 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [(MKStackingViewController *)self _setUpEnteringViewController:*(*(&v67 + 1) + 8 * n)];
        }

        v39 = [v37 countByEnumeratingWithState:&v67 objects:v89 count:16];
      }

      while (v39);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v42 = v24;
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v88 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v64;
      do
      {
        for (ii = 0; ii != v44; ++ii)
        {
          if (*v64 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v63 + 1) + 8 * ii);
          [(MKStackingViewController *)self _tearDownExitingViewController:v47];
          [v47 removeFromParentViewController];
        }

        v44 = [v42 countByEnumeratingWithState:&v63 objects:v88 count:16];
      }

      while (v44);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v48 = [(MKStackingViewController *)self viewControllers];
    v49 = [v48 countByEnumeratingWithState:&v59 objects:v87 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v60;
      do
      {
        for (jj = 0; jj != v50; ++jj)
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [*(*(&v59 + 1) + 8 * jj) didMoveToParentViewController:self];
        }

        v50 = [v48 countByEnumeratingWithState:&v59 objects:v87 count:16];
      }

      while (v50);
    }

    if ([v37 count] || objc_msgSend(v42, "count"))
    {
      v53 = [(MKStackingViewController *)self view];
      [v53 _mapkit_setNeedsLayout];
    }

    v6 = v57;
  }
}

- (void)stackViewNeedsLayout:(id)a3
{
  v4 = [(MKStackingViewController *)self view];
  v3 = [v4 superview];
  [v3 _mapkit_layoutIfNeeded];
}

- (void)setStackingDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_stackingDelegate, v6);
  v5 = objc_opt_respondsToSelector();

  self->_mayWantSpearators = v5 & 1;
}

- (void)setViewControllers:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isEqualToArray:self->_viewControllers] & 1) == 0)
  {
    v6 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    if (self->_viewControllers)
    {
      viewControllers = self->_viewControllers;
    }

    else
    {
      viewControllers = v6;
    }

    v10 = [MEMORY[0x1E695DFD8] setWithArray:viewControllers];
    v11 = [v8 mutableCopy];
    [v11 minusSet:v10];
    v12 = [v10 mutableCopy];
    [v12 minusSet:v8];
    objc_storeStrong(&self->_viewControllers, a3);
    [(MKStackingViewController *)self _updateFixedHeightAwareControllers];
    if ([(MKStackingViewController *)self _isSafeToPerformLayout])
    {
      [(MKStackingViewController *)self _updateStackViewSubviewsAndChildVCsEntering:v11 exiting:v12];
    }

    else
    {
      self->_needsToPerformLayout = [(NSArray *)self->_viewControllers count]!= 0;
      [(_MKStackView *)self->_stackView setStackedSubviews:MEMORY[0x1E695E0F0]];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * i);
            [v18 willMoveToParentViewController:{0, v19}];
            [v18 removeFromParentViewController];
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_updateFixedHeightAwareControllers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_viewControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_1F163A828, v10}])
        {
          v9 = v8;
          [v9 setResizableViewsDisabled:{-[MKStackingViewController isScrollEnabled](self, "isScrollEnabled") ^ 1}];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)setWidthConstraintConstant:(double)a3
{
  v5 = [(MKStackingViewController *)self view];

  if (v5)
  {
    v6 = self->_stackView;
    stackViewWidthConstraint = self->_stackViewWidthConstraint;
    v15 = v6;
    if (stackViewWidthConstraint)
    {
      [(NSLayoutConstraint *)stackViewWidthConstraint setConstant:a3];
    }

    else
    {
      v8 = [(_MKStackView *)v6 widthAnchor];
      v9 = [v8 constraintEqualToConstant:a3];
      v10 = self->_stackViewWidthConstraint;
      self->_stackViewWidthConstraint = v9;
    }

    [(NSLayoutConstraint *)self->_widthConstraint setConstant:a3];
    [(NSLayoutConstraint *)self->_stackViewWidthConstraint setActive:1];
    v11 = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    v12 = [v11 isActive];

    v13 = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    [v13 setActive:0];

    [(UIView *)v15 _mapkit_setNeedsLayout];
    [(UIView *)v15 _mapkit_layoutIfNeeded];
    v14 = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    [v14 setActive:v12];
  }
}

- (double)_fittingHeightForView:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if ([v3 conformsToProtocol:&unk_1F161E998])
  {
    [v3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v4 = v5;
  }

  return v4;
}

- (void)_setScrollEnabled:(BOOL)a3 forcedUpdate:(BOOL)a4
{
  v4 = a3;
  v25[4] = *MEMORY[0x1E69E9840];
  if (a4 || self->_isScrollDisabled == a3)
  {
    self->_isScrollDisabled = !a3;
    [(MKStackingViewController *)self _updateFixedHeightAwareControllers];
    if (self->_stackView)
    {
      contentView = self->_contentView;
      if (contentView)
      {
        if (v4)
        {
          [(_MKStackingContentView *)contentView setBottomView:self->_scrollView];
          [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
          v20 = MEMORY[0x1E696ACD8];
          stackView = self->_stackView;
          v8 = self->_scrollView;
          v24 = [(_MKStackView *)stackView topAnchor];
          v23 = [(UIScrollView *)v8 topAnchor];
          v22 = [v24 constraintEqualToAnchor:v23];
          v25[0] = v22;
          v21 = [(_MKStackView *)self->_stackView leftAnchor];
          v9 = [(UIScrollView *)v8 leftAnchor];
          v10 = [v21 constraintEqualToAnchor:v9];
          v25[1] = v10;
          v11 = [(UIScrollView *)v8 bottomAnchor];
          v12 = [(_MKStackView *)self->_stackView bottomAnchor];
          v13 = [v11 constraintEqualToAnchor:v12];
          v25[2] = v13;
          v14 = [(UIScrollView *)v8 rightAnchor];
          v15 = [(_MKStackView *)self->_stackView rightAnchor];
          v16 = [v14 constraintEqualToAnchor:v15];
          v25[3] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
          [v20 activateConstraints:v17];
        }

        else
        {
          [(UIScrollView *)self->_scrollView removeFromSuperview];
          v18 = self->_stackView;
          v19 = self->_contentView;

          [(_MKStackingContentView *)v19 setBottomView:v18];
        }
      }
    }
  }
}

- (BOOL)_isSafeToPerformLayout
{
  v3 = [(MKStackingViewController *)self isViewLoaded];
  if (v3)
  {
    v4 = [(MKStackingViewController *)self view];
    v5 = [v4 window];

    LOBYTE(v3) = v5 || (stackViewWidthConstraint = self->_stackViewWidthConstraint) != 0 && [(NSLayoutConstraint *)stackViewWidthConstraint isActive];
  }

  return v3;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
  [(MKStackingViewController *)self _setScrollEnabled:!self->_isScrollDisabled forcedUpdate:1];
  v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  minimallyVisibleViews = self->_minimallyVisibleViews;
  self->_minimallyVisibleViews = v5;

  v7 = [(_MKStackView *)self->_stackView widthAnchor];
  [(_MKStackingContentView *)self->_contentView frame];
  Width = CGRectGetWidth(v15);
  v9 = 260.0;
  if (Width >= 260.0)
  {
    [(_MKStackingContentView *)self->_contentView frame];
    v9 = CGRectGetWidth(v16);
  }

  v10 = [v7 constraintEqualToConstant:v9];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v10;

  v12 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  viewsToViewControllers = self->_viewsToViewControllers;
  self->_viewsToViewControllers = v12;
}

- (void)loadView
{
  v3 = objc_alloc_init(_MKStackView);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(_MKStackView *)self->_stackView setStackDelegate:self];
  [(_MKStackView *)self->_stackView setStackAnimationDelegate:self];
  [(_MKStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKStackView *)self->_stackView setPreservesSuperviewLayoutMargins:1];
  [(_MKStackView *)self->_stackView setBottomConstraintShouldBeGreaterThanOrEqual:1];
  v5 = [[_MKStackingContentView alloc] initWithViewController:self];
  contentView = self->_contentView;
  self->_contentView = v5;

  [(_MKStackingContentView *)self->_contentView setPreservesSuperviewLayoutMargins:1];
  v7 = self->_contentView;

  [(MKStackingViewController *)self setView:v7];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(UIScrollView *)self->_scrollView setDelegate:0];
  v4.receiver = self;
  v4.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v4 dealloc];
}

@end
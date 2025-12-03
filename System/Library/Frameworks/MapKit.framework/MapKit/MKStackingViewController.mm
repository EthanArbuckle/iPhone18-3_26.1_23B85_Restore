@interface MKStackingViewController
- (BOOL)_isSafeToPerformLayout;
- (BOOL)isViewVisbile:(id)visbile percentageTreshold:(double)treshold;
- (MKStackingViewControllerDelegate)stackingDelegate;
- (double)_fittingHeightForView:(id)view;
- (double)stackView:(id)view distanceBetweenUpperView:(id)upperView andLowerView:(id)lowerView;
- (void)_addPreferredHeightConstraintForViewControllerIfNeeded:(id)needed;
- (void)_callViewControllersLayoutDelegateIfNeeded;
- (void)_removePreferredHeightConstraintFromViewController:(id)controller;
- (void)_sendScrollnotification;
- (void)_setOverlayViewFrame;
- (void)_setPreferredHeight:(double)height forViewController:(id)controller;
- (void)_setScrollEnabled:(BOOL)enabled forcedUpdate:(BOOL)update;
- (void)_setUpEnteringViewController:(id)controller;
- (void)_updateFixedHeightAwareControllers;
- (void)_updateStackViewSubviewsAndChildVCsEntering:(id)entering exiting:(id)exiting;
- (void)_updateViewControllerVisibilityAfterPositionChange;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)removeOverlayViewAnimated:(BOOL)animated;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setOverlayView:(id)view withOriginY:(double)y;
- (void)setStackingDelegate:(id)delegate;
- (void)setViewControllers:(id)controllers;
- (void)setWidthConstraintConstant:(double)constant;
- (void)stackViewNeedsLayout:(id)layout;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation MKStackingViewController

- (MKStackingViewControllerDelegate)stackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stackingDelegate);

  return WeakRetained;
}

- (BOOL)isViewVisbile:(id)visbile percentageTreshold:(double)treshold
{
  visbileCopy = visbile;
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
  [visbileCopy bounds];
  [(_MKStackingContentView *)contentView convertRect:visbileCopy fromView:?];
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
    [visbileCopy bounds];
    v23 = height / v24;
  }

  v25 = v23 >= treshold;

  return v25;
}

- (void)_updateViewControllerVisibilityAfterPositionChange
{
  v27 = *MEMORY[0x1E69E9840];
  stackingDelegate = [(MKStackingViewController *)self stackingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    stackingDelegate2 = [(MKStackingViewController *)self stackingDelegate];
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
            stackingDelegate3 = [(MKStackingViewController *)self stackingDelegate];
            [stackingDelegate3 stackingViewController:self minimumVisibleSurfacePercentForAnalyticsSelection:v11];
            v14 = v13;

            view = [v11 view];
            v16 = [(MKStackingViewController *)self isViewVisbile:view percentageTreshold:v14];

            minimallyVisibleViews = self->_minimallyVisibleViews;
            view2 = [v11 view];
            LODWORD(minimallyVisibleViews) = [(NSHashTable *)minimallyVisibleViews containsObject:view2];

            if (v16 != minimallyVisibleViews)
            {
              v19 = self->_minimallyVisibleViews;
              view3 = [v11 view];
              if (v16)
              {
                [(NSHashTable *)v19 addObject:view3];

                view3 = [(MKStackingViewController *)self stackingDelegate];
                [view3 stackingViewController:self didShowMinimumVisibleSurfacePercentForAnalyticsSelection:v11];
              }

              else
              {
                [(NSHashTable *)v19 removeObject:view3];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKStackingScrollNotification" object:self->_scrollView];
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v8 = v5 - v7;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentOffset:animatedCopy animated:v8, v6 - v9];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  stackingDelegate = [(MKStackingViewController *)self stackingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    stackingDelegate2 = [(MKStackingViewController *)self stackingDelegate];
    [stackingDelegate2 stackingViewControllerDidEndScroll:self];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    v10 = draggingCopy;
    stackingDelegate = [(MKStackingViewController *)self stackingDelegate];
    v8 = objc_opt_respondsToSelector();

    draggingCopy = v10;
    if (v8)
    {
      stackingDelegate2 = [(MKStackingViewController *)self stackingDelegate];
      [stackingDelegate2 stackingViewControllerDidEndScroll:self];

      draggingCopy = v10;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(MKStackingViewController *)self _updateViewControllerVisibilityAfterPositionChange];
  stackingDelegate = [(MKStackingViewController *)self stackingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    stackingDelegate2 = [(MKStackingViewController *)self stackingDelegate];
    [stackingDelegate2 stackingViewControllerWillBeginScroll:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
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
      viewControllers = [(MKStackingViewController *)self viewControllers];
      v7 = [v5 setWithArray:viewControllers];
      [(MKStackingViewController *)self _updateStackViewSubviewsAndChildVCsEntering:v7 exiting:0];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v7 viewDidAppear:appear];
  if (self->_needsToPerformLayout && [(MKStackingViewController *)self _isSafeToPerformLayout])
  {
    v4 = MEMORY[0x1E695DFD8];
    viewControllers = [(MKStackingViewController *)self viewControllers];
    v6 = [v4 setWithArray:viewControllers];
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
    superview = [(UIView *)overlayView superview];
    view = [(MKStackingViewController *)self view];

    if (superview != view)
    {
      view2 = [(MKStackingViewController *)self view];
      [view2 addSubview:self->_overlayView];

      [(MKStackingViewController *)self _setOverlayViewFrame];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v10 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if ([v14 conformsToProtocol:&unk_1F16E5078])
        {
          requiresPreferredContentSizeInStackingView = [v14 requiresPreferredContentSizeInStackingView];

          if (requiresPreferredContentSizeInStackingView && [v14 isViewLoaded])
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
      v11 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17.receiver = self;
  v17.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v17 updateViewConstraints];
}

- (void)_removePreferredHeightConstraintFromViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:?];
  if (v4)
  {
    [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints removeObjectForKey:controllerCopy];
    view = [controllerCopy view];
    [view removeConstraint:v4];
  }
}

- (void)_addPreferredHeightConstraintForViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy conformsToProtocol:&unk_1F16E5078] && objc_msgSend(neededCopy, "requiresPreferredContentSizeInStackingView") && objc_msgSend(neededCopy, "isViewLoaded"))
  {
    v4 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:neededCopy];
    if (!v4)
    {
      if (!self->_viewControllersToPreferredHeightConstraints)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        viewControllersToPreferredHeightConstraints = self->_viewControllersToPreferredHeightConstraints;
        self->_viewControllersToPreferredHeightConstraints = strongToStrongObjectsMapTable;
      }

      view = [neededCopy view];
      heightAnchor = [view heightAnchor];
      v4 = [heightAnchor constraintEqualToConstant:0.0];

      [v4 setActive:1];
      [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints setObject:v4 forKey:neededCopy];
    }
  }
}

- (void)_setPreferredHeight:(double)height forViewController:(id)controller
{
  v6 = [(NSMapTable *)self->_viewControllersToPreferredHeightConstraints objectForKey:controller];
  [v6 constant];
  if (v7 != height)
  {
    _currentAnimationAttributes = [MEMORY[0x1E69DD250] _currentAnimationAttributes];
    if (_currentAnimationAttributes)
    {
      v9 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__MKStackingViewController__setPreferredHeight_forViewController___block_invoke;
      v10[3] = &unk_1E76C8808;
      heightCopy = height;
      v11 = v6;
      selfCopy = self;
      [v9 _animateWithAttributes:_currentAnimationAttributes animations:v10 completion:0];
    }

    else
    {
      [v6 setConstant:height];
    }
  }
}

void __66__MKStackingViewController__setPreferredHeight_forViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setConstant:*(a1 + 48)];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  if (!self->_isSettingStackedViews)
  {
    v5 = containerCopy;
    if (![v5 conformsToProtocol:&unk_1F16E5078])
    {
LABEL_6:

      goto LABEL_7;
    }

    requiresPreferredContentSizeInStackingView = [v5 requiresPreferredContentSizeInStackingView];

    if (requiresPreferredContentSizeInStackingView)
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
  view = [(MKStackingViewController *)self view];
  [view bounds];
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

- (void)removeOverlayViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  stackedSubviews = [(_MKStackView *)self->_stackView stackedSubviews];
  v6 = [stackedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(stackedSubviews);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (animatedCopy)
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

      v7 = [stackedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  if (animatedCopy)
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

- (void)setOverlayView:(id)view withOriginY:(double)y
{
  viewCopy = view;
  overlayView = self->_overlayView;
  if (overlayView != viewCopy)
  {
    v11 = viewCopy;
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, view);
    [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    self->_overlayViewOriginY = y;
    isViewLoaded = [(MKStackingViewController *)self isViewLoaded];
    viewCopy = v11;
    if (isViewLoaded)
    {
      if (self->_overlayView)
      {
        [(MKStackingViewController *)self _setOverlayViewFrame];
        view = [(MKStackingViewController *)self view];
        [view _mapkit_setNeedsUpdateConstraints];

        viewCopy = v11;
      }
    }
  }
}

- (void)_setUpEnteringViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isViewLoaded])
  {
    view = [controllerCopy view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = view;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    [v6 setScrollEnabled:0];
  }

  [(MKStackingViewController *)self _addPreferredHeightConstraintForViewControllerIfNeeded:controllerCopy];
}

- (double)stackView:(id)view distanceBetweenUpperView:(id)upperView andLowerView:(id)lowerView
{
  if (!self->_mayWantSpearators)
  {
    return 0.0;
  }

  viewsToViewControllers = self->_viewsToViewControllers;
  lowerViewCopy = lowerView;
  v9 = [(NSMapTable *)viewsToViewControllers objectForKey:upperView];
  v10 = [(NSMapTable *)self->_viewsToViewControllers objectForKey:lowerViewCopy];

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
    stackingDelegate = [(MKStackingViewController *)self stackingDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      stackingDelegate2 = [(MKStackingViewController *)self stackingDelegate];
      [stackingDelegate2 stackingViewControllerDidLayoutViewControllers:self];
    }
  }
}

- (void)_updateStackViewSubviewsAndChildVCsEntering:(id)entering exiting:(id)exiting
{
  v94 = *MEMORY[0x1E69E9840];
  enteringCopy = entering;
  exitingCopy = exiting;
  self->_needsToPerformLayout = 0;
  if ([enteringCopy count] || objc_msgSend(exitingCopy, "count"))
  {
    v57 = enteringCopy;
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_needToCallViewControllerLayoutDelegate = 1;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v8 = enteringCopy;
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
    v56 = exitingCopy;

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    viewControllers = [(MKStackingViewController *)self viewControllers];
    v14 = [viewControllers countByEnumeratingWithState:&v79 objects:v92 count:16];
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
            objc_enumerationMutation(viewControllers);
          }

          v18 = *(*(&v79 + 1) + 8 * j);
          stackView = self->_stackView;
          view = [v18 view];
          [(_MKStackView *)stackView addSubview:view];

          viewsToViewControllers = self->_viewsToViewControllers;
          view2 = [v18 view];
          [(NSMapTable *)viewsToViewControllers setObject:v18 forKey:view2];

          view3 = [v18 view];
          [v58 addObject:view3];
        }

        v15 = [viewControllers countByEnumeratingWithState:&v79 objects:v92 count:16];
      }

      while (v15);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    exitingCopy = v56;
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
    viewControllers2 = [(MKStackingViewController *)self viewControllers];
    v49 = [viewControllers2 countByEnumeratingWithState:&v59 objects:v87 count:16];
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
            objc_enumerationMutation(viewControllers2);
          }

          [*(*(&v59 + 1) + 8 * jj) didMoveToParentViewController:self];
        }

        v50 = [viewControllers2 countByEnumeratingWithState:&v59 objects:v87 count:16];
      }

      while (v50);
    }

    if ([v37 count] || objc_msgSend(v42, "count"))
    {
      view4 = [(MKStackingViewController *)self view];
      [view4 _mapkit_setNeedsLayout];
    }

    enteringCopy = v57;
  }
}

- (void)stackViewNeedsLayout:(id)layout
{
  view = [(MKStackingViewController *)self view];
  superview = [view superview];
  [superview _mapkit_layoutIfNeeded];
}

- (void)setStackingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_stackingDelegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_mayWantSpearators = v5 & 1;
}

- (void)setViewControllers:(id)controllers
{
  v24 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  if (([controllersCopy isEqualToArray:self->_viewControllers] & 1) == 0)
  {
    v6 = MEMORY[0x1E695E0F0];
    if (controllersCopy)
    {
      v7 = controllersCopy;
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
    objc_storeStrong(&self->_viewControllers, controllers);
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

- (void)setWidthConstraintConstant:(double)constant
{
  view = [(MKStackingViewController *)self view];

  if (view)
  {
    v6 = self->_stackView;
    stackViewWidthConstraint = self->_stackViewWidthConstraint;
    v15 = v6;
    if (stackViewWidthConstraint)
    {
      [(NSLayoutConstraint *)stackViewWidthConstraint setConstant:constant];
    }

    else
    {
      widthAnchor = [(_MKStackView *)v6 widthAnchor];
      v9 = [widthAnchor constraintEqualToConstant:constant];
      v10 = self->_stackViewWidthConstraint;
      self->_stackViewWidthConstraint = v9;
    }

    [(NSLayoutConstraint *)self->_widthConstraint setConstant:constant];
    [(NSLayoutConstraint *)self->_stackViewWidthConstraint setActive:1];
    bottomConstraint = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    isActive = [bottomConstraint isActive];

    bottomConstraint2 = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    [bottomConstraint2 setActive:0];

    [(UIView *)v15 _mapkit_setNeedsLayout];
    [(UIView *)v15 _mapkit_layoutIfNeeded];
    bottomConstraint3 = [(_MKStackingContentView *)self->_contentView bottomConstraint];
    [bottomConstraint3 setActive:isActive];
  }
}

- (double)_fittingHeightForView:(id)view
{
  viewCopy = view;
  v4 = 0.0;
  if ([viewCopy conformsToProtocol:&unk_1F161E998])
  {
    [viewCopy sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v4 = v5;
  }

  return v4;
}

- (void)_setScrollEnabled:(BOOL)enabled forcedUpdate:(BOOL)update
{
  enabledCopy = enabled;
  v25[4] = *MEMORY[0x1E69E9840];
  if (update || self->_isScrollDisabled == enabled)
  {
    self->_isScrollDisabled = !enabled;
    [(MKStackingViewController *)self _updateFixedHeightAwareControllers];
    if (self->_stackView)
    {
      contentView = self->_contentView;
      if (contentView)
      {
        if (enabledCopy)
        {
          [(_MKStackingContentView *)contentView setBottomView:self->_scrollView];
          [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
          v20 = MEMORY[0x1E696ACD8];
          stackView = self->_stackView;
          v8 = self->_scrollView;
          topAnchor = [(_MKStackView *)stackView topAnchor];
          topAnchor2 = [(UIScrollView *)v8 topAnchor];
          v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v25[0] = v22;
          leftAnchor = [(_MKStackView *)self->_stackView leftAnchor];
          leftAnchor2 = [(UIScrollView *)v8 leftAnchor];
          v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
          v25[1] = v10;
          bottomAnchor = [(UIScrollView *)v8 bottomAnchor];
          bottomAnchor2 = [(_MKStackView *)self->_stackView bottomAnchor];
          v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v25[2] = v13;
          rightAnchor = [(UIScrollView *)v8 rightAnchor];
          rightAnchor2 = [(_MKStackView *)self->_stackView rightAnchor];
          v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  isViewLoaded = [(MKStackingViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    view = [(MKStackingViewController *)self view];
    window = [view window];

    LOBYTE(isViewLoaded) = window || (stackViewWidthConstraint = self->_stackViewWidthConstraint) != 0 && [(NSLayoutConstraint *)stackViewWidthConstraint isActive];
  }

  return isViewLoaded;
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
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  minimallyVisibleViews = self->_minimallyVisibleViews;
  self->_minimallyVisibleViews = weakObjectsHashTable;

  widthAnchor = [(_MKStackView *)self->_stackView widthAnchor];
  [(_MKStackingContentView *)self->_contentView frame];
  Width = CGRectGetWidth(v15);
  v9 = 260.0;
  if (Width >= 260.0)
  {
    [(_MKStackingContentView *)self->_contentView frame];
    v9 = CGRectGetWidth(v16);
  }

  v10 = [widthAnchor constraintEqualToConstant:v9];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v10;

  weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  viewsToViewControllers = self->_viewsToViewControllers;
  self->_viewsToViewControllers = weakToWeakObjectsMapTable;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIScrollView *)self->_scrollView setDelegate:0];
  v4.receiver = self;
  v4.super_class = MKStackingViewController;
  [(MKStackingViewController *)&v4 dealloc];
}

@end
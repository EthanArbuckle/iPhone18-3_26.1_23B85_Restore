@interface QLItemAggregatedViewController
- (BOOL)automaticallyUpdateScrollViewContentInset;
- (BOOL)automaticallyUpdateScrollViewContentOffset;
- (BOOL)automaticallyUpdateScrollViewIndicatorInset;
- (BOOL)canBeLocked;
- (BOOL)canClickToToggleFullscreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canSwipeToDismiss;
- (BOOL)canToggleFullScreen;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (CGRect)contentFrame;
- (CGSize)preferredContentSize;
- (id)delegate;
- (id)printer;
- (id)safeAreaLayoutGuide;
- (id)transitioningView;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (void)previewIsAppearingWithProgress:(double)progress;
- (void)previewWillFinishAppearing;
- (void)setDelegate:(id)delegate;
- (void)showPreviewViewController:(id)controller animatingWithCrossfade:(BOOL)crossfade;
@end

@implementation QLItemAggregatedViewController

- (void)showPreviewViewController:(id)controller animatingWithCrossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  v68[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController != self)
  {
    parentViewController2 = [controllerCopy parentViewController];

    if (parentViewController2)
    {
      [controllerCopy willMoveToParentViewController:0];
      view = [controllerCopy view];
      [view removeFromSuperview];

      [controllerCopy removeFromParentViewController];
    }

    [controllerCopy willMoveToParentViewController:self];
    view2 = [(QLItemAggregatedViewController *)self view];
    view3 = [controllerCopy view];
    [view2 addSubview:view3];

    [(QLItemAggregatedViewController *)self addChildViewController:controllerCopy];
    [controllerCopy didMoveToParentViewController:self];
    if (self->_isVisible || self->_isAppearing)
    {
      [controllerCopy previewWillAppear:self->_currentPreviewViewController != 0];
    }

    view4 = [(QLItemAggregatedViewController *)self view];
    v14 = view4;
    if (view4)
    {
      [view4 transform];
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
    }

    view5 = [controllerCopy view];
    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    [view5 setTransform:v61];

    view6 = [(QLItemAggregatedViewController *)self view];
    [view6 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    view7 = [controllerCopy view];
    [view7 setFrame:{v18, v20, v22, v24}];

    view8 = [controllerCopy view];
    [view8 setTranslatesAutoresizingMaskIntoConstraints:0];

    view9 = [(QLItemAggregatedViewController *)self view];
    v28 = MEMORY[0x277CCAAD0];
    v67 = @"preview";
    view10 = [controllerCopy view];
    v68[0] = view10;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v31 = [v28 constraintsWithVisualFormat:@"H:|[preview]|" options:0 metrics:0 views:v30];
    [view9 addConstraints:v31];

    view11 = [(QLItemAggregatedViewController *)self view];
    v33 = MEMORY[0x277CCAAD0];
    v65 = @"preview";
    view12 = [controllerCopy view];
    v66 = view12;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v36 = [v33 constraintsWithVisualFormat:@"V:|[preview]|" options:0 metrics:0 views:v35];
    [view11 addConstraints:v36];

    delegate = [(QLItemAggregatedViewController *)self delegate];
    [controllerCopy setDelegate:delegate];

    presentingDelegate = [(QLItemViewController *)self presentingDelegate];
    [controllerCopy setPresentingDelegate:presentingDelegate];

    currentPreviewViewController = self->_currentPreviewViewController;
    if (currentPreviewViewController)
    {
      v40 = currentPreviewViewController;
      [(QLItemViewController *)v40 previewWillDisappear:0];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke;
      aBlock[3] = &unk_278B56E00;
      v41 = v40;
      v58 = v41;
      selfCopy = self;
      v42 = controllerCopy;
      v60 = v42;
      v43 = _Block_copy(aBlock);
      view13 = [v42 view];
      v45 = view13;
      if (crossfadeCopy)
      {
        [view13 setAlpha:0.0];

        v46 = MEMORY[0x277D75D18];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke_2;
        v55[3] = &unk_278B57190;
        v56 = v41;
        [v46 animateWithDuration:0x10000 delay:v55 options:0 animations:0.5 completion:0.1];
        v47 = MEMORY[0x277D75D18];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke_3;
        v53[3] = &unk_278B57190;
        v54 = v42;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke_4;
        v51[3] = &unk_278B57B40;
        v52 = v43;
        [v47 animateWithDuration:v53 animations:v51 completion:0.5];
      }

      else
      {
        [view13 setAlpha:1.0];

        v43[2](v43);
      }
    }

    else if (self->_isVisible)
    {
      [controllerCopy previewDidAppear:1];
      self->_isAppearing = 0;
    }

    objc_storeStrong(&self->_currentPreviewViewController, controller);
    delegate2 = [(QLItemAggregatedViewController *)self delegate];
    [(QLItemViewController *)self->_currentPreviewViewController setDelegate:delegate2];

    [(QLItemViewController *)self->_currentPreviewViewController setAppearance:self->_appearance];
    [(QLItemViewController *)self->_currentPreviewViewController previewBecameFullScreen:self->_fullScreen animated:0];
    delegate3 = [(QLItemAggregatedViewController *)self delegate];
    [delegate3 previewItemViewControllerDidChangeCurrentPreviewController:self];
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  result = [*(a1 + 32) previewDidDisappear:1];
  if (*(*(a1 + 40) + 1128) == 1)
  {
    result = [*(a1 + 48) previewDidAppear:1];
    *(*(a1 + 40) + 1129) = 0;
  }

  return result;
}

void __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __83__QLItemAggregatedViewController_showPreviewViewController_animatingWithCrossfade___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(QLItemViewController *)self->_currentPreviewViewController setDelegate:delegateCopy];
}

- (void)previewIsAppearingWithProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = QLItemAggregatedViewController;
  [(QLItemViewController *)&v5 previewIsAppearingWithProgress:?];
  [(QLItemViewController *)self->_currentPreviewViewController previewIsAppearingWithProgress:progress];
}

- (void)previewWillFinishAppearing
{
  v3.receiver = self;
  v3.super_class = QLItemAggregatedViewController;
  [(QLItemViewController *)&v3 previewWillFinishAppearing];
  [(QLItemViewController *)self->_currentPreviewViewController previewWillFinishAppearing];
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  if (self->_currentPreviewViewController)
  {
    currentPreviewViewController = self->_currentPreviewViewController;

    return [(QLItemViewController *)currentPreviewViewController shouldAcceptTouch:touch ofGestureRecognizer:recognizer];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = QLItemAggregatedViewController;
    return [(QLItemViewController *)&v8 shouldAcceptTouch:touch ofGestureRecognizer:recognizer];
  }
}

- (id)safeAreaLayoutGuide
{
  parentViewController = [(QLItemAggregatedViewController *)self parentViewController];
  if (parentViewController)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3ParentViewController = [parentViewController parentViewController];

      parentViewController = v3ParentViewController;
    }

    while (v3ParentViewController);
  }

  safeAreaLayoutGuide = [parentViewController safeAreaLayoutGuide];
  v6 = safeAreaLayoutGuide;
  if (safeAreaLayoutGuide)
  {
    safeAreaLayoutGuide2 = safeAreaLayoutGuide;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = QLItemAggregatedViewController;
    safeAreaLayoutGuide2 = [(QLItemAggregatedViewController *)&v10 safeAreaLayoutGuide];
  }

  v8 = safeAreaLayoutGuide2;

  return v8;
}

- (BOOL)canSwipeToDismiss
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController canSwipeToDismiss];
  }

  return currentPreviewViewController;
}

- (BOOL)canToggleFullScreen
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController canToggleFullScreen];
  }

  return currentPreviewViewController;
}

- (BOOL)canClickToToggleFullscreen
{
  if (self->_currentPreviewViewController)
  {
    currentPreviewViewController = self->_currentPreviewViewController;

    return [(QLItemViewController *)currentPreviewViewController canClickToToggleFullscreen];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = QLItemAggregatedViewController;
    return [(QLItemViewController *)&v6 canClickToToggleFullscreen];
  }
}

- (BOOL)canPinchToDismiss
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController canPinchToDismiss];
  }

  return currentPreviewViewController;
}

- (BOOL)canBeLocked
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController canBeLocked];
  }

  return currentPreviewViewController;
}

- (BOOL)automaticallyUpdateScrollViewContentOffset
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController automaticallyUpdateScrollViewContentOffset];
  }

  return currentPreviewViewController;
}

- (BOOL)automaticallyUpdateScrollViewContentInset
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController automaticallyUpdateScrollViewContentInset];
  }

  return currentPreviewViewController;
}

- (BOOL)automaticallyUpdateScrollViewIndicatorInset
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (currentPreviewViewController)
  {
    LOBYTE(currentPreviewViewController) = [(QLItemViewController *)currentPreviewViewController automaticallyUpdateScrollViewIndicatorInset];
  }

  return currentPreviewViewController;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  result = self->_currentPreviewViewController;
  if (result)
  {
    return [result preferredWhitePointAdaptivityStyle];
  }

  return result;
}

- (id)printer
{
  currentPreviewViewController = self->_currentPreviewViewController;
  if (objc_opt_respondsToSelector())
  {
    printer = [(QLItemViewController *)self->_currentPreviewViewController printer];
  }

  else
  {
    printer = 0;
  }

  return printer;
}

- (CGSize)preferredContentSize
{
  [(QLItemViewController *)self->_currentPreviewViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)contentFrame
{
  [(QLItemViewController *)self->_currentPreviewViewController contentFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)transitioningView
{
  if (self->_currentPreviewViewController)
  {
    [(QLItemViewController *)self->_currentPreviewViewController transitioningView];
  }

  else
  {
    [(QLItemAggregatedViewController *)self view];
  }
  v2 = ;

  return v2;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
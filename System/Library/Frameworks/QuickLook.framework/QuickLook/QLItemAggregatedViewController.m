@interface QLItemAggregatedViewController
- (BOOL)automaticallyUpdateScrollViewContentInset;
- (BOOL)automaticallyUpdateScrollViewContentOffset;
- (BOOL)automaticallyUpdateScrollViewIndicatorInset;
- (BOOL)canBeLocked;
- (BOOL)canClickToToggleFullscreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canSwipeToDismiss;
- (BOOL)canToggleFullScreen;
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (CGRect)contentFrame;
- (CGSize)preferredContentSize;
- (id)delegate;
- (id)printer;
- (id)safeAreaLayoutGuide;
- (id)transitioningView;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (void)previewIsAppearingWithProgress:(double)a3;
- (void)previewWillFinishAppearing;
- (void)setDelegate:(id)a3;
- (void)showPreviewViewController:(id)a3 animatingWithCrossfade:(BOOL)a4;
@end

@implementation QLItemAggregatedViewController

- (void)showPreviewViewController:(id)a3 animatingWithCrossfade:(BOOL)a4
{
  v4 = a4;
  v68[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 parentViewController];

  if (v8 != self)
  {
    v9 = [v7 parentViewController];

    if (v9)
    {
      [v7 willMoveToParentViewController:0];
      v10 = [v7 view];
      [v10 removeFromSuperview];

      [v7 removeFromParentViewController];
    }

    [v7 willMoveToParentViewController:self];
    v11 = [(QLItemAggregatedViewController *)self view];
    v12 = [v7 view];
    [v11 addSubview:v12];

    [(QLItemAggregatedViewController *)self addChildViewController:v7];
    [v7 didMoveToParentViewController:self];
    if (self->_isVisible || self->_isAppearing)
    {
      [v7 previewWillAppear:self->_currentPreviewViewController != 0];
    }

    v13 = [(QLItemAggregatedViewController *)self view];
    v14 = v13;
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
    }

    v15 = [v7 view];
    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    [v15 setTransform:v61];

    v16 = [(QLItemAggregatedViewController *)self view];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v7 view];
    [v25 setFrame:{v18, v20, v22, v24}];

    v26 = [v7 view];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(QLItemAggregatedViewController *)self view];
    v28 = MEMORY[0x277CCAAD0];
    v67 = @"preview";
    v29 = [v7 view];
    v68[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v31 = [v28 constraintsWithVisualFormat:@"H:|[preview]|" options:0 metrics:0 views:v30];
    [v27 addConstraints:v31];

    v32 = [(QLItemAggregatedViewController *)self view];
    v33 = MEMORY[0x277CCAAD0];
    v65 = @"preview";
    v34 = [v7 view];
    v66 = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v36 = [v33 constraintsWithVisualFormat:@"V:|[preview]|" options:0 metrics:0 views:v35];
    [v32 addConstraints:v36];

    v37 = [(QLItemAggregatedViewController *)self delegate];
    [v7 setDelegate:v37];

    v38 = [(QLItemViewController *)self presentingDelegate];
    [v7 setPresentingDelegate:v38];

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
      v59 = self;
      v42 = v7;
      v60 = v42;
      v43 = _Block_copy(aBlock);
      v44 = [v42 view];
      v45 = v44;
      if (v4)
      {
        [v44 setAlpha:0.0];

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
        [v44 setAlpha:1.0];

        v43[2](v43);
      }
    }

    else if (self->_isVisible)
    {
      [v7 previewDidAppear:1];
      self->_isAppearing = 0;
    }

    objc_storeStrong(&self->_currentPreviewViewController, a3);
    v48 = [(QLItemAggregatedViewController *)self delegate];
    [(QLItemViewController *)self->_currentPreviewViewController setDelegate:v48];

    [(QLItemViewController *)self->_currentPreviewViewController setAppearance:self->_appearance];
    [(QLItemViewController *)self->_currentPreviewViewController previewBecameFullScreen:self->_fullScreen animated:0];
    v49 = [(QLItemAggregatedViewController *)self delegate];
    [v49 previewItemViewControllerDidChangeCurrentPreviewController:self];
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(QLItemViewController *)self->_currentPreviewViewController setDelegate:v4];
}

- (void)previewIsAppearingWithProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = QLItemAggregatedViewController;
  [(QLItemViewController *)&v5 previewIsAppearingWithProgress:?];
  [(QLItemViewController *)self->_currentPreviewViewController previewIsAppearingWithProgress:a3];
}

- (void)previewWillFinishAppearing
{
  v3.receiver = self;
  v3.super_class = QLItemAggregatedViewController;
  [(QLItemViewController *)&v3 previewWillFinishAppearing];
  [(QLItemViewController *)self->_currentPreviewViewController previewWillFinishAppearing];
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  if (self->_currentPreviewViewController)
  {
    currentPreviewViewController = self->_currentPreviewViewController;

    return [(QLItemViewController *)currentPreviewViewController shouldAcceptTouch:a3 ofGestureRecognizer:a4];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = QLItemAggregatedViewController;
    return [(QLItemViewController *)&v8 shouldAcceptTouch:a3 ofGestureRecognizer:a4];
  }
}

- (id)safeAreaLayoutGuide
{
  v3 = [(QLItemAggregatedViewController *)self parentViewController];
  if (v3)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 parentViewController];

      v3 = v4;
    }

    while (v4);
  }

  v5 = [v3 safeAreaLayoutGuide];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = QLItemAggregatedViewController;
    v7 = [(QLItemAggregatedViewController *)&v10 safeAreaLayoutGuide];
  }

  v8 = v7;

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
    v4 = [(QLItemViewController *)self->_currentPreviewViewController printer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
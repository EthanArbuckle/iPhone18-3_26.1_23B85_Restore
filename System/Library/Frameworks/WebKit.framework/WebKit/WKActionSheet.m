@interface WKActionSheet
- (BOOL)presentSheet:(int64_t)a3;
- (BOOL)presentSheetFromRect:(CGRect)a3;
- (CGRect)_presentationRectForStyle:(int64_t)a3;
- (WKActionSheet)init;
- (id).cxx_construct;
- (void)_cleanup;
- (void)_didRotateAndLayout;
- (void)dealloc;
- (void)doneWithSheet:(BOOL)a3;
- (void)updateSheetPosition;
- (void)willRotate;
@end

@implementation WKActionSheet

- (WKActionSheet)init
{
  v6.receiver = self;
  v6.super_class = WKActionSheet;
  v2 = [(WKActionSheet *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_arrowDirections = 15;
    [MEMORY[0x1E69DC938] currentDevice];
    if (objc_opt_respondsToSelector())
    {
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
      {
        v4 = [MEMORY[0x1E696AD88] defaultCenter];
        [v4 addObserver:v3 selector:sel_willRotate name:*MEMORY[0x1E69DE828] object:0];
        [v4 addObserver:v3 selector:sel_didRotate name:*MEMORY[0x1E69DE7D0] object:0];
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [(WKActionSheet *)self _cleanup];
  v3.receiver = self;
  v3.super_class = WKActionSheet;
  [(WKActionSheet *)&v3 dealloc];
}

- (void)_cleanup
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3 = MEMORY[0x1E69E58C0];

  [v3 cancelPreviousPerformRequestsWithTarget:self];
}

- (BOOL)presentSheet:(int64_t)a3
{
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
    {
      [(WKActionSheet *)self _presentationRectForStyle:a3];
      x = v11.origin.x;
      y = v11.origin.y;
      width = v11.size.width;
      height = v11.size.height;
      if (CGRectIsEmpty(v11))
      {
        return 0;
      }
    }
  }

  self->_currentPresentationStyle = a3;

  return [(WKActionSheet *)self presentSheetFromRect:x, y, width, height];
}

- (CGRect)_presentationRectForStyle:(int64_t)a3
{
  sheetDelegate = self->_sheetDelegate;
  if (a3 == 2)
  {
    [(WKActionSheetDelegate *)sheetDelegate presentationRectForElementUsingClosestIndicatedRect];
  }

  else if (a3 == 1)
  {
    [(WKActionSheetDelegate *)sheetDelegate presentationRectForIndicatedElement];
  }

  else
  {
    [(WKActionSheetDelegate *)sheetDelegate initialPresentationRectInHostViewForSheet];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)presentSheetFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(WKActionSheetDelegate *)self->_sheetDelegate hostViewForSheet];
  if (v8)
  {
    if (self->_presentedViewControllerWhileRotating.m_ptr)
    {
      m_ptr = self->_presentedViewControllerWhileRotating.m_ptr;
    }

    else
    {
      m_ptr = self;
    }

    [(WKActionSheet *)m_ptr setModalPresentationStyle:7];
    v10 = [(WKActionSheet *)m_ptr popoverPresentationController];
    [v10 setSourceView:v8];
    [v10 setSourceRect:{x, y, width, height}];
    [v10 setPermittedArrowDirections:self->_arrowDirections];
    if (self->_popoverPresentationControllerDelegateWhileRotating.m_ptr)
    {
      [v10 setDelegate:?];
    }

    v11 = [v8 _wk_viewControllerForFullScreenPresentation];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    v14 = self->_currentPresentingViewController.m_ptr;
    self->_currentPresentingViewController.m_ptr = v12;
    if (v14)
    {

      v12 = self->_currentPresentingViewController.m_ptr;
    }

    [(UIViewController *)v12 presentViewController:m_ptr animated:1 completion:0];
  }

  return v8 != 0;
}

- (void)doneWithSheet:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIViewController *)self->_currentPresentingViewController.m_ptr presentedViewController];
    if (v4 == self || self->_presentedViewControllerWhileRotating.m_ptr == v4)
    {
      [(WKActionSheet *)v4 dismissViewControllerAnimated:1 completion:0];
    }
  }

  m_ptr = self->_currentPresentingViewController.m_ptr;
  self->_currentPresentingViewController.m_ptr = 0;
  if (m_ptr)
  {
  }

  v6 = self->_presentedViewControllerWhileRotating.m_ptr;
  self->_presentedViewControllerWhileRotating.m_ptr = 0;
  if (v6)
  {
  }

  v7 = self->_popoverPresentationControllerDelegateWhileRotating.m_ptr;
  self->_popoverPresentationControllerDelegateWhileRotating.m_ptr = 0;
  if (v7)
  {
  }

  self->_currentPresentationStyle = 0;

  [(WKActionSheet *)self _cleanup];
}

- (void)willRotate
{
  v3 = [(WKActionSheetDelegate *)self->_sheetDelegate hostViewForSheet];
  if (v3)
  {
    v4 = [v3 _wk_viewControllerForFullScreenPresentation];
    v5 = [v4 presentedViewController];
    if ([(UIPresentationController *)[(UIViewController *)v5 presentationController] presentationStyle]== UIModalPresentationPopover && !self->_isRotating)
    {
      self->_isRotating = 1;
      self->_readyToPresentAfterRotation = 0;
      v6 = v5;
      if ([(WKActionSheet *)self presentingViewController])
      {
        v6 = [(WKActionSheet *)self presentedViewController];
      }

      if (v6)
      {
        v7 = v6;
      }

      m_ptr = self->_presentedViewControllerWhileRotating.m_ptr;
      self->_presentedViewControllerWhileRotating.m_ptr = v6;
      if (m_ptr)
      {
      }

      v9 = [(UIPopoverPresentationController *)[(UIViewController *)v5 popoverPresentationController] delegate];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      v12 = self->_popoverPresentationControllerDelegateWhileRotating.m_ptr;
      self->_popoverPresentationControllerDelegateWhileRotating.m_ptr = v10;
      if (v12)
      {
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __27__WKActionSheet_willRotate__block_invoke;
      v13[3] = &unk_1E7631230;
      v13[4] = self;
      [v4 dismissViewControllerAnimated:0 completion:v13];
    }
  }
}

- (void)updateSheetPosition
{
  v2 = self;
  if (self->_presentedViewControllerWhileRotating.m_ptr)
  {
    self = self->_presentedViewControllerWhileRotating.m_ptr;
  }

  if (!v2->_isRotating && v2->_readyToPresentAfterRotation && ![(WKActionSheet *)self presentingViewController]&& ![(WKActionSheet *)v2 presentingViewController])
  {
    [(WKActionSheet *)v2 _presentationRectForStyle:v2->_currentPresentationStyle];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(UIViewController *)v2->_presentedViewControllerWhileRotating.m_ptr isModalInPresentation];
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    if (!CGRectIsEmpty(v20) || v11)
    {
      [-[WKActionSheetDelegate hostViewForSheet](v2->_sheetDelegate "hostViewForSheet")];
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      v22 = CGRectIntersection(v21, v23);
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
      if (CGRectIsEmpty(v22))
      {
        if (v11)
        {
          [(WKActionSheet *)v2 presentSheet:v2->_currentPresentationStyle];
        }
      }

      else
      {
        [(WKActionSheet *)v2 presentSheetFromRect:x, y, width, height];
      }

      m_ptr = v2->_presentedViewControllerWhileRotating.m_ptr;
      v2->_presentedViewControllerWhileRotating.m_ptr = 0;
      if (m_ptr)
      {
      }

      v18 = v2->_popoverPresentationControllerDelegateWhileRotating.m_ptr;
      v2->_popoverPresentationControllerDelegateWhileRotating.m_ptr = 0;
      if (v18)
      {
      }
    }
  }
}

- (void)_didRotateAndLayout
{
  self->_isRotating = 0;
  self->_readyToPresentAfterRotation = 1;
  [(WKActionSheetDelegate *)self->_sheetDelegate updatePositionInformation];

  [(WKActionSheet *)self updateSheetPosition];
}

- (id).cxx_construct
{
  *(self + 170) = 0;
  *(self + 171) = 0;
  *(self + 172) = 0;
  return self;
}

@end
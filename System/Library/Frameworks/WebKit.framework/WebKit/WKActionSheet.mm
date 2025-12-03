@interface WKActionSheet
- (BOOL)presentSheet:(int64_t)sheet;
- (BOOL)presentSheetFromRect:(CGRect)rect;
- (CGRect)_presentationRectForStyle:(int64_t)style;
- (WKActionSheet)init;
- (id).cxx_construct;
- (void)_cleanup;
- (void)_didRotateAndLayout;
- (void)dealloc;
- (void)doneWithSheet:(BOOL)sheet;
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
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v3 selector:sel_willRotate name:*MEMORY[0x1E69DE828] object:0];
        [defaultCenter addObserver:v3 selector:sel_didRotate name:*MEMORY[0x1E69DE7D0] object:0];
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

- (BOOL)presentSheet:(int64_t)sheet
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
      [(WKActionSheet *)self _presentationRectForStyle:sheet];
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

  self->_currentPresentationStyle = sheet;

  return [(WKActionSheet *)self presentSheetFromRect:x, y, width, height];
}

- (CGRect)_presentationRectForStyle:(int64_t)style
{
  sheetDelegate = self->_sheetDelegate;
  if (style == 2)
  {
    [(WKActionSheetDelegate *)sheetDelegate presentationRectForElementUsingClosestIndicatedRect];
  }

  else if (style == 1)
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

- (BOOL)presentSheetFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  hostViewForSheet = [(WKActionSheetDelegate *)self->_sheetDelegate hostViewForSheet];
  if (hostViewForSheet)
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
    popoverPresentationController = [(WKActionSheet *)m_ptr popoverPresentationController];
    [popoverPresentationController setSourceView:hostViewForSheet];
    [popoverPresentationController setSourceRect:{x, y, width, height}];
    [popoverPresentationController setPermittedArrowDirections:self->_arrowDirections];
    if (self->_popoverPresentationControllerDelegateWhileRotating.m_ptr)
    {
      [popoverPresentationController setDelegate:?];
    }

    _wk_viewControllerForFullScreenPresentation = [hostViewForSheet _wk_viewControllerForFullScreenPresentation];
    v12 = _wk_viewControllerForFullScreenPresentation;
    if (_wk_viewControllerForFullScreenPresentation)
    {
      v13 = _wk_viewControllerForFullScreenPresentation;
    }

    v14 = self->_currentPresentingViewController.m_ptr;
    self->_currentPresentingViewController.m_ptr = v12;
    if (v14)
    {

      v12 = self->_currentPresentingViewController.m_ptr;
    }

    [(UIViewController *)v12 presentViewController:m_ptr animated:1 completion:0];
  }

  return hostViewForSheet != 0;
}

- (void)doneWithSheet:(BOOL)sheet
{
  if (sheet)
  {
    presentedViewController = [(UIViewController *)self->_currentPresentingViewController.m_ptr presentedViewController];
    if (presentedViewController == self || self->_presentedViewControllerWhileRotating.m_ptr == presentedViewController)
    {
      [(WKActionSheet *)presentedViewController dismissViewControllerAnimated:1 completion:0];
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
  hostViewForSheet = [(WKActionSheetDelegate *)self->_sheetDelegate hostViewForSheet];
  if (hostViewForSheet)
  {
    _wk_viewControllerForFullScreenPresentation = [hostViewForSheet _wk_viewControllerForFullScreenPresentation];
    presentedViewController = [_wk_viewControllerForFullScreenPresentation presentedViewController];
    if ([(UIPresentationController *)[(UIViewController *)presentedViewController presentationController] presentationStyle]== UIModalPresentationPopover && !self->_isRotating)
    {
      self->_isRotating = 1;
      self->_readyToPresentAfterRotation = 0;
      presentedViewController2 = presentedViewController;
      if ([(WKActionSheet *)self presentingViewController])
      {
        presentedViewController2 = [(WKActionSheet *)self presentedViewController];
      }

      if (presentedViewController2)
      {
        v7 = presentedViewController2;
      }

      m_ptr = self->_presentedViewControllerWhileRotating.m_ptr;
      self->_presentedViewControllerWhileRotating.m_ptr = presentedViewController2;
      if (m_ptr)
      {
      }

      delegate = [(UIPopoverPresentationController *)[(UIViewController *)presentedViewController popoverPresentationController] delegate];
      v10 = delegate;
      if (delegate)
      {
        v11 = delegate;
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
      [_wk_viewControllerForFullScreenPresentation dismissViewControllerAnimated:0 completion:v13];
    }
  }
}

- (void)updateSheetPosition
{
  selfCopy = self;
  if (self->_presentedViewControllerWhileRotating.m_ptr)
  {
    self = self->_presentedViewControllerWhileRotating.m_ptr;
  }

  if (!selfCopy->_isRotating && selfCopy->_readyToPresentAfterRotation && ![(WKActionSheet *)self presentingViewController]&& ![(WKActionSheet *)selfCopy presentingViewController])
  {
    [(WKActionSheet *)selfCopy _presentationRectForStyle:selfCopy->_currentPresentationStyle];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    isModalInPresentation = [(UIViewController *)selfCopy->_presentedViewControllerWhileRotating.m_ptr isModalInPresentation];
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    if (!CGRectIsEmpty(v20) || isModalInPresentation)
    {
      [-[WKActionSheetDelegate hostViewForSheet](selfCopy->_sheetDelegate "hostViewForSheet")];
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
        if (isModalInPresentation)
        {
          [(WKActionSheet *)selfCopy presentSheet:selfCopy->_currentPresentationStyle];
        }
      }

      else
      {
        [(WKActionSheet *)selfCopy presentSheetFromRect:x, y, width, height];
      }

      m_ptr = selfCopy->_presentedViewControllerWhileRotating.m_ptr;
      selfCopy->_presentedViewControllerWhileRotating.m_ptr = 0;
      if (m_ptr)
      {
      }

      v18 = selfCopy->_popoverPresentationControllerDelegateWhileRotating.m_ptr;
      selfCopy->_popoverPresentationControllerDelegateWhileRotating.m_ptr = 0;
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
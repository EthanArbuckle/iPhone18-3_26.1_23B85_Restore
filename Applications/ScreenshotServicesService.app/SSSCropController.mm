@interface SSSCropController
- (BOOL)isCropped;
- (CGRect)cropOverlayViewRectInWindow;
- (CGRect)cropRect;
- (SSSCropController)init;
- (SSSCropControllerDelegate)delegate;
- (void)_setCropRect:(CGRect)a3 notify:(BOOL)a4;
- (void)cancelCrop;
- (void)cropControllerRootView:(id)a3 changedToCropRect:(CGRect)a4;
- (void)cropControllerRootViewWillBeginChangingCropRect:(id)a3;
- (void)resetCrop;
- (void)setCropRect:(CGRect)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation SSSCropController

- (SSSCropController)init
{
  v11.receiver = self;
  v11.super_class = SSSCropController;
  v2 = [(SSSCropController *)&v11 init];
  v3 = objc_alloc_init(SSSCropControllerRootView);
  v4 = *(v2 + 13);
  *(v2 + 13) = v3;

  [*(v2 + 13) setDelegate:v2];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 24) = _Q0;
  *(v2 + 72) = *(v2 + 8);
  *(v2 + 88) = *(v2 + 24);
  [v2 setNumberOfTouchesRequiredForPanningCrop:1];
  [v2 setSnapRects:&__NSArray0__struct];
  return v2;
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(SSSCropControllerRootView *)self->_rootView setState:?];
  }
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_lastNotifiedCropRect = a3;
  [(SSSCropController *)self _setCropRect:0 notify:?];
  rootView = self->_rootView;

  [(SSSCropControllerRootView *)rootView setUndoCropRect:x, y, width, height];
}

- (void)_setCropRect:(CGRect)a3 notify:(BOOL)a4
{
  self->_cropRect = a3;
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    if ((SSRectEqualToRect() & 1) == 0)
    {
      v9 = [(SSSCropController *)self delegate];
      [v9 cropController:self changedToCropRect:{x, y, width, height}];

      self->_lastNotifiedCropRect.origin.x = x;
      self->_lastNotifiedCropRect.origin.y = y;
      self->_lastNotifiedCropRect.size.width = width;
      self->_lastNotifiedCropRect.size.height = height;
    }
  }
}

- (void)resetCrop
{
  [(SSSCropControllerRootView *)self->_rootView setCropRect:0.0, 0.0, 1.0, 1.0];

  [(SSSCropController *)self _setCropRect:0 notify:0.0, 0.0, 1.0, 1.0];
}

- (void)cancelCrop
{
  [(SSSCropControllerRootView *)self->_rootView setCropRect:self->_saveCropRect.origin.x, self->_saveCropRect.origin.y, self->_saveCropRect.size.width, self->_saveCropRect.size.height];
  x = self->_saveCropRect.origin.x;
  y = self->_saveCropRect.origin.y;
  width = self->_saveCropRect.size.width;
  height = self->_saveCropRect.size.height;

  [(SSSCropController *)self _setCropRect:0 notify:x, y, width, height];
}

- (BOOL)isCropped
{
  v3.origin.x = 0.0;
  v3.origin.y = 0.0;
  v3.size.width = 1.0;
  v3.size.height = 1.0;
  return !CGRectEqualToRect(self->_cropRect, v3);
}

- (void)cropControllerRootViewWillBeginChangingCropRect:(id)a3
{
  v4 = [(SSSCropController *)self delegate];
  [v4 cropControllerDidBeginCropping:self];
}

- (void)cropControllerRootView:(id)a3 changedToCropRect:(CGRect)a4
{
  -[SSSCropController _setCropRect:notify:](self, "_setCropRect:notify:", [a3 editMode] != 2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v5 = [(SSSCropController *)self delegate];
  [v5 cropControllerCropRectDidChange:self];
}

- (CGRect)cropOverlayViewRectInWindow
{
  [(SSSCropControllerRootView *)self->_rootView cropOverlayViewRectInWindow];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SSSCropControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
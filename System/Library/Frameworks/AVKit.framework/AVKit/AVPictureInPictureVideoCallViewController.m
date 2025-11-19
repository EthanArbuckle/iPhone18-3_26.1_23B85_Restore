@interface AVPictureInPictureVideoCallViewController
- (AVPictureInPictureController)pictureInPictureController;
- (AVPictureInPictureControllerContentSource)contentSource;
- (AVPictureInPictureVideoCallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AVPictureInPictureViewController)pictureInPictureViewController;
- (AVVideoCallPlayerController)videoCallPlayerController;
- (BOOL)avkit_isVisible;
- (CGRect)avkit_videoRectInWindow;
- (CGRect)lastKnownVideoRectInWindow;
- (UIWindow)avkit_window;
- (id)avkit_pictureInPictureViewController;
- (void)_observeSourceView;
- (void)_removeFromParent;
- (void)_setLastKnownIsVisible:(BOOL)a3 videoRectInWindow:(CGRect)a4;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3;
- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)startObservingSourceView;
- (void)stopObservingSourceView;
@end

@implementation AVPictureInPictureVideoCallViewController

- (AVPictureInPictureControllerContentSource)contentSource
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSource);

  return WeakRetained;
}

- (AVPictureInPictureController)pictureInPictureController
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureController);

  return WeakRetained;
}

- (CGRect)lastKnownVideoRectInWindow
{
  x = self->_lastKnownVideoRectInWindow.origin.x;
  y = self->_lastKnownVideoRectInWindow.origin.y;
  width = self->_lastKnownVideoRectInWindow.size.width;
  height = self->_lastKnownVideoRectInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVPictureInPictureViewController)pictureInPictureViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureViewController);

  return WeakRetained;
}

- (void)_removeFromParent
{
  [(AVPictureInPictureVideoCallViewController *)self willMoveToParentViewController:0];
  v3 = [(AVPictureInPictureVideoCallViewController *)self view];
  [v3 removeFromSuperview];

  [(AVPictureInPictureVideoCallViewController *)self removeFromParentViewController];
}

- (void)_setLastKnownIsVisible:(BOOL)a3 videoRectInWindow:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  if ([(AVPictureInPictureVideoCallViewController *)self lastKnownIsVisible]== a3)
  {
    [(AVPictureInPictureVideoCallViewController *)self lastKnownVideoRectInWindow];
    v18.origin.x = v10;
    v18.origin.y = v11;
    v18.size.width = v12;
    v18.size.height = v13;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v14 = CGRectEqualToRect(v17, v18);
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownIsVisible:v8];
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
    if (v14)
    {
      return;
    }
  }

  else
  {
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownIsVisible:v8];
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
  }

  v15 = [(AVPictureInPictureVideoCallViewController *)self pictureInPictureController];
  [v15 contentSourceVideoRectInWindowChanged];
}

- (void)_observeSourceView
{
  v3 = [(AVPictureInPictureVideoCallViewController *)self avkit_isVisible];
  [(AVPictureInPictureVideoCallViewController *)self avkit_videoRectInWindow];

  [(AVPictureInPictureVideoCallViewController *)self _setLastKnownIsVisible:v3 videoRectInWindow:?];
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)a3
{
  v4 = a3;
  v5 = [(AVPictureInPictureVideoCallViewController *)self parentViewController];

  if (v5 == v4)
  {

    [(AVPictureInPictureVideoCallViewController *)self _removeFromParent];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3
{
  v18 = a3;
  v4 = [(AVPictureInPictureVideoCallViewController *)self parentViewController];

  if (v4)
  {
    [(AVPictureInPictureVideoCallViewController *)self _removeFromParent];
  }

  [v18 addChildViewController:self];
  v5 = [v18 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AVPictureInPictureVideoCallViewController *)self view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(AVPictureInPictureVideoCallViewController *)self view];
  [v15 setAutoresizingMask:18];

  v16 = [v18 view];
  v17 = [(AVPictureInPictureVideoCallViewController *)self view];
  [v16 addSubview:v17];

  [(AVPictureInPictureVideoCallViewController *)self didMoveToParentViewController:v18];
}

- (id)avkit_pictureInPictureViewController
{
  v3 = [(AVPictureInPictureVideoCallViewController *)self pictureInPictureViewController];
  if (!v3)
  {
    v3 = objc_alloc_init(AVPictureInPictureViewController);
    [(AVPictureInPictureVideoCallViewController *)self setPictureInPictureViewController:v3];
  }

  return v3;
}

- (AVVideoCallPlayerController)videoCallPlayerController
{
  v3 = self->_videoCallPlayerController;
  if (!v3)
  {
    v3 = objc_alloc_init(AVVideoCallPlayerController);
    v4 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
    [(AVVideoCallPlayerController *)v3 setContentSource:v4];

    [(AVPictureInPictureVideoCallViewController *)self preferredContentSize];
    [(AVVideoCallPlayerController *)v3 setContentDimensions:?];
    [(AVVideoCallPlayerController *)v3 setPictureInPicturePossible:1];
    objc_storeStrong(&self->_videoCallPlayerController, v3);
  }

  return v3;
}

- (UIWindow)avkit_window
{
  v2 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  v3 = [v2 activeVideoCallSourceView];
  v4 = [v3 window];

  return v4;
}

- (BOOL)avkit_isVisible
{
  v2 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  v3 = [v2 activeVideoCallSourceView];
  v4 = [v3 avkit_isInAWindowAndVisible];

  return v4;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = AVPictureInPictureVideoCallViewController;
  [(AVPictureInPictureVideoCallViewController *)&v7 setPreferredContentSize:?];
  v6 = [(AVPictureInPictureVideoCallViewController *)self videoCallPlayerController];
  [v6 setContentDimensions:{width, height}];
}

- (CGRect)avkit_videoRectInWindow
{
  v3 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  v4 = [v3 activeVideoCallSourceView];
  v5 = [v4 window];
  v6 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  v7 = [v6 activeVideoCallSourceView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  v17 = [v16 activeVideoCallSourceView];
  [v5 convertRect:v17 fromView:{v9, v11, v13, v15}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)stopObservingSourceView
{
  v3 = [(AVPictureInPictureVideoCallViewController *)self observeSourceViewTimer];
  [v3 invalidate];

  [(AVPictureInPictureVideoCallViewController *)self setObserveSourceViewTimer:0];
  v4 = [(AVPictureInPictureVideoCallViewController *)self videoCallPlayerController];
  [v4 setPictureInPicturePossible:0];
}

- (void)startObservingSourceView
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__AVPictureInPictureVideoCallViewController_startObservingSourceView__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __69__AVPictureInPictureVideoCallViewController_startObservingSourceView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _observeSourceView];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 observeSourceViewTimer];

  if (!v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = MEMORY[0x1E695DFF0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__AVPictureInPictureVideoCallViewController_startObservingSourceView__block_invoke_2;
    v8[3] = &unk_1E7209DA8;
    objc_copyWeak(&v9, (a1 + 32));
    v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:2.0];
    [v5 setObserveSourceViewTimer:v7];

    objc_destroyWeak(&v9);
  }
}

void __69__AVPictureInPictureVideoCallViewController_startObservingSourceView__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _observeSourceView];

  v4 = objc_loadWeakRetained((a1 + 32));
  if (!v4)
  {
    [v5 invalidate];
  }
}

- (AVPictureInPictureVideoCallViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVPictureInPictureVideoCallViewController;
  v4 = [(AVPictureInPictureVideoCallViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AVPictureInPictureVideoCallViewController *)v4 setPreferredContentSize:100.0, 100.0];
  }

  return v5;
}

@end
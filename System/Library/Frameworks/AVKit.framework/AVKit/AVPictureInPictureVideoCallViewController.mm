@interface AVPictureInPictureVideoCallViewController
- (AVPictureInPictureController)pictureInPictureController;
- (AVPictureInPictureControllerContentSource)contentSource;
- (AVPictureInPictureVideoCallViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AVPictureInPictureViewController)pictureInPictureViewController;
- (AVVideoCallPlayerController)videoCallPlayerController;
- (BOOL)avkit_isVisible;
- (CGRect)avkit_videoRectInWindow;
- (CGRect)lastKnownVideoRectInWindow;
- (UIWindow)avkit_window;
- (id)avkit_pictureInPictureViewController;
- (void)_observeSourceView;
- (void)_removeFromParent;
- (void)_setLastKnownIsVisible:(BOOL)visible videoRectInWindow:(CGRect)window;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)controller;
- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)controller;
- (void)setPreferredContentSize:(CGSize)size;
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
  view = [(AVPictureInPictureVideoCallViewController *)self view];
  [view removeFromSuperview];

  [(AVPictureInPictureVideoCallViewController *)self removeFromParentViewController];
}

- (void)_setLastKnownIsVisible:(BOOL)visible videoRectInWindow:(CGRect)window
{
  height = window.size.height;
  width = window.size.width;
  y = window.origin.y;
  x = window.origin.x;
  visibleCopy = visible;
  if ([(AVPictureInPictureVideoCallViewController *)self lastKnownIsVisible]== visible)
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
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownIsVisible:visibleCopy];
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
    if (v14)
    {
      return;
    }
  }

  else
  {
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownIsVisible:visibleCopy];
    [(AVPictureInPictureVideoCallViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
  }

  pictureInPictureController = [(AVPictureInPictureVideoCallViewController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];
}

- (void)_observeSourceView
{
  avkit_isVisible = [(AVPictureInPictureVideoCallViewController *)self avkit_isVisible];
  [(AVPictureInPictureVideoCallViewController *)self avkit_videoRectInWindow];

  [(AVPictureInPictureVideoCallViewController *)self _setLastKnownIsVisible:avkit_isVisible videoRectInWindow:?];
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(AVPictureInPictureVideoCallViewController *)self parentViewController];

  if (parentViewController == controllerCopy)
  {

    [(AVPictureInPictureVideoCallViewController *)self _removeFromParent];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(AVPictureInPictureVideoCallViewController *)self parentViewController];

  if (parentViewController)
  {
    [(AVPictureInPictureVideoCallViewController *)self _removeFromParent];
  }

  [controllerCopy addChildViewController:self];
  view = [controllerCopy view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(AVPictureInPictureVideoCallViewController *)self view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [(AVPictureInPictureVideoCallViewController *)self view];
  [view3 setAutoresizingMask:18];

  view4 = [controllerCopy view];
  view5 = [(AVPictureInPictureVideoCallViewController *)self view];
  [view4 addSubview:view5];

  [(AVPictureInPictureVideoCallViewController *)self didMoveToParentViewController:controllerCopy];
}

- (id)avkit_pictureInPictureViewController
{
  pictureInPictureViewController = [(AVPictureInPictureVideoCallViewController *)self pictureInPictureViewController];
  if (!pictureInPictureViewController)
  {
    pictureInPictureViewController = objc_alloc_init(AVPictureInPictureViewController);
    [(AVPictureInPictureVideoCallViewController *)self setPictureInPictureViewController:pictureInPictureViewController];
  }

  return pictureInPictureViewController;
}

- (AVVideoCallPlayerController)videoCallPlayerController
{
  v3 = self->_videoCallPlayerController;
  if (!v3)
  {
    v3 = objc_alloc_init(AVVideoCallPlayerController);
    contentSource = [(AVPictureInPictureVideoCallViewController *)self contentSource];
    [(AVVideoCallPlayerController *)v3 setContentSource:contentSource];

    [(AVPictureInPictureVideoCallViewController *)self preferredContentSize];
    [(AVVideoCallPlayerController *)v3 setContentDimensions:?];
    [(AVVideoCallPlayerController *)v3 setPictureInPicturePossible:1];
    objc_storeStrong(&self->_videoCallPlayerController, v3);
  }

  return v3;
}

- (UIWindow)avkit_window
{
  contentSource = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  activeVideoCallSourceView = [contentSource activeVideoCallSourceView];
  window = [activeVideoCallSourceView window];

  return window;
}

- (BOOL)avkit_isVisible
{
  contentSource = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  activeVideoCallSourceView = [contentSource activeVideoCallSourceView];
  avkit_isInAWindowAndVisible = [activeVideoCallSourceView avkit_isInAWindowAndVisible];

  return avkit_isInAWindowAndVisible;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = AVPictureInPictureVideoCallViewController;
  [(AVPictureInPictureVideoCallViewController *)&v7 setPreferredContentSize:?];
  videoCallPlayerController = [(AVPictureInPictureVideoCallViewController *)self videoCallPlayerController];
  [videoCallPlayerController setContentDimensions:{width, height}];
}

- (CGRect)avkit_videoRectInWindow
{
  contentSource = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  activeVideoCallSourceView = [contentSource activeVideoCallSourceView];
  window = [activeVideoCallSourceView window];
  contentSource2 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  activeVideoCallSourceView2 = [contentSource2 activeVideoCallSourceView];
  [activeVideoCallSourceView2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  contentSource3 = [(AVPictureInPictureVideoCallViewController *)self contentSource];
  activeVideoCallSourceView3 = [contentSource3 activeVideoCallSourceView];
  [window convertRect:activeVideoCallSourceView3 fromView:{v9, v11, v13, v15}];
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
  observeSourceViewTimer = [(AVPictureInPictureVideoCallViewController *)self observeSourceViewTimer];
  [observeSourceViewTimer invalidate];

  [(AVPictureInPictureVideoCallViewController *)self setObserveSourceViewTimer:0];
  videoCallPlayerController = [(AVPictureInPictureVideoCallViewController *)self videoCallPlayerController];
  [videoCallPlayerController setPictureInPicturePossible:0];
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

- (AVPictureInPictureVideoCallViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AVPictureInPictureVideoCallViewController;
  v4 = [(AVPictureInPictureVideoCallViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AVPictureInPictureVideoCallViewController *)v4 setPreferredContentSize:100.0, 100.0];
  }

  return v5;
}

@end
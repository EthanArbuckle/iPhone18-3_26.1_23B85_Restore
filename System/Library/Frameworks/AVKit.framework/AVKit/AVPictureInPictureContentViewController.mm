@interface AVPictureInPictureContentViewController
- (AVPictureInPictureContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AVPictureInPictureContentViewControllerDelegate)delegate;
- (AVPictureInPictureController)pictureInPictureController;
- (AVPictureInPictureControllerContentSource)contentSource;
- (AVPictureInPictureViewController)pictureInPictureViewController;
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
- (void)setContentSource:(id)source;
- (void)setPlayerController:(id)controller;
- (void)startObservingSourceView;
- (void)stopObservingSourceView;
@end

@implementation AVPictureInPictureContentViewController

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

- (AVPictureInPictureContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_removeFromParent
{
  [(AVPictureInPictureContentViewController *)self willMoveToParentViewController:0];
  view = [(AVPictureInPictureContentViewController *)self view];
  [view removeFromSuperview];

  [(AVPictureInPictureContentViewController *)self removeFromParentViewController];
}

- (void)_setLastKnownIsVisible:(BOOL)visible videoRectInWindow:(CGRect)window
{
  height = window.size.height;
  width = window.size.width;
  y = window.origin.y;
  x = window.origin.x;
  visibleCopy = visible;
  if ([(AVPictureInPictureContentViewController *)self lastKnownIsVisible]== visible)
  {
    [(AVPictureInPictureContentViewController *)self lastKnownVideoRectInWindow];
    v18.origin.x = v10;
    v18.origin.y = v11;
    v18.size.width = v12;
    v18.size.height = v13;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v14 = CGRectEqualToRect(v17, v18);
    [(AVPictureInPictureContentViewController *)self setLastKnownIsVisible:visibleCopy];
    [(AVPictureInPictureContentViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
    if (v14)
    {
      return;
    }
  }

  else
  {
    [(AVPictureInPictureContentViewController *)self setLastKnownIsVisible:visibleCopy];
    [(AVPictureInPictureContentViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
  }

  pictureInPictureController = [(AVPictureInPictureContentViewController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];
}

- (void)_observeSourceView
{
  avkit_isVisible = [(AVPictureInPictureContentViewController *)self avkit_isVisible];
  [(AVPictureInPictureContentViewController *)self avkit_videoRectInWindow];

  [(AVPictureInPictureContentViewController *)self _setLastKnownIsVisible:avkit_isVisible videoRectInWindow:?];
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(AVPictureInPictureContentViewController *)self parentViewController];

  if (parentViewController == controllerCopy)
  {

    [(AVPictureInPictureContentViewController *)self _removeFromParent];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(AVPictureInPictureContentViewController *)self parentViewController];

  if (parentViewController)
  {
    [(AVPictureInPictureContentViewController *)self _removeFromParent];
  }

  [controllerCopy addChildViewController:self];
  view = [controllerCopy view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(AVPictureInPictureContentViewController *)self view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [(AVPictureInPictureContentViewController *)self view];
  [view3 setAutoresizingMask:18];

  view4 = [controllerCopy view];
  view5 = [(AVPictureInPictureContentViewController *)self view];
  [view4 addSubview:view5];

  [(AVPictureInPictureContentViewController *)self didMoveToParentViewController:controllerCopy];
}

- (id)avkit_pictureInPictureViewController
{
  pictureInPictureViewController = [(AVPictureInPictureContentViewController *)self pictureInPictureViewController];
  if (!pictureInPictureViewController)
  {
    pictureInPictureViewController = objc_alloc_init(AVPictureInPictureViewController);
    [(AVPictureInPictureContentViewController *)self setPictureInPictureViewController:pictureInPictureViewController];
  }

  return pictureInPictureViewController;
}

- (UIWindow)avkit_window
{
  contentSource = [(AVPictureInPictureContentViewController *)self contentSource];
  activeSourceView = [contentSource activeSourceView];
  window = [activeSourceView window];

  return window;
}

- (BOOL)avkit_isVisible
{
  delegate = [(AVPictureInPictureContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVPictureInPictureContentViewController *)self delegate];
    contentSource = [(AVPictureInPictureContentViewController *)self contentSource];
    activeSourceView = [contentSource activeSourceView];
    LOBYTE(v8) = [delegate2 pictureInPictureContentViewController:self isViewVisible:activeSourceView];
  }

  else
  {
    delegate2 = [(AVPictureInPictureContentViewController *)self contentSource];
    activeSourceView = [delegate2 activeSourceView];
    window = [activeSourceView window];
    if (window && ([activeSourceView isHiddenOrHasHiddenAncestor] & 1) == 0)
    {
      [activeSourceView bounds];
      [window convertRect:activeSourceView fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [window bounds];
      v25.origin.x = v18;
      v25.origin.y = v19;
      v25.size.width = v20;
      v25.size.height = v21;
      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      v24 = CGRectIntersection(v23, v25);
      v8 = !CGRectIsEmpty(v24);
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    contentSource = activeSourceView;
  }

  return v8;
}

- (CGRect)avkit_videoRectInWindow
{
  delegate = [(AVPictureInPictureContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVPictureInPictureContentViewController *)self delegate];
    [delegate2 pictureInPictureContentViewControllerVideoFrameInWindow:self];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    delegate2 = [(AVPictureInPictureContentViewController *)self contentSource];
    activeSourceView = [delegate2 activeSourceView];
    window = [activeSourceView window];
    contentSource = [(AVPictureInPictureContentViewController *)self contentSource];
    activeSourceView2 = [contentSource activeSourceView];
    [activeSourceView2 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    contentSource2 = [(AVPictureInPictureContentViewController *)self contentSource];
    activeSourceView3 = [contentSource2 activeSourceView];
    [window convertRect:activeSourceView3 fromView:{v19, v21, v23, v25}];
    v7 = v28;
    v9 = v29;
    v11 = v30;
    v13 = v31;
  }

  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)stopObservingSourceView
{
  observeSourceViewTimer = [(AVPictureInPictureContentViewController *)self observeSourceViewTimer];
  [observeSourceViewTimer invalidate];

  [(AVPictureInPictureContentViewController *)self setObserveSourceViewTimer:0];
}

- (void)startObservingSourceView
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__AVPictureInPictureContentViewController_startObservingSourceView__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __67__AVPictureInPictureContentViewController_startObservingSourceView__block_invoke(uint64_t a1)
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
    v8[2] = __67__AVPictureInPictureContentViewController_startObservingSourceView__block_invoke_2;
    v8[3] = &unk_1E7209DA8;
    objc_copyWeak(&v9, (a1 + 32));
    v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:2.0];
    [v5 setObserveSourceViewTimer:v7];

    objc_destroyWeak(&v9);
  }
}

void __67__AVPictureInPictureContentViewController_startObservingSourceView__block_invoke_2(uint64_t a1, void *a2)
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

- (void)setContentSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_contentSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_contentSource, obj);
    v5 = obj;
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  if (self->_playerController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_playerController, controller);
    controllerCopy = v6;
  }
}

- (AVPictureInPictureContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AVPictureInPictureContentViewController;
  v4 = [(AVPictureInPictureContentViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AVPictureInPictureContentViewController *)v4 setPreferredContentSize:100.0, 100.0];
  }

  return v5;
}

@end
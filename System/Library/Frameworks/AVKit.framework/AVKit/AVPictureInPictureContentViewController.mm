@interface AVPictureInPictureContentViewController
- (AVPictureInPictureContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (void)_setLastKnownIsVisible:(BOOL)a3 videoRectInWindow:(CGRect)a4;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3;
- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)a3;
- (void)setContentSource:(id)a3;
- (void)setPlayerController:(id)a3;
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
  v3 = [(AVPictureInPictureContentViewController *)self view];
  [v3 removeFromSuperview];

  [(AVPictureInPictureContentViewController *)self removeFromParentViewController];
}

- (void)_setLastKnownIsVisible:(BOOL)a3 videoRectInWindow:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  if ([(AVPictureInPictureContentViewController *)self lastKnownIsVisible]== a3)
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
    [(AVPictureInPictureContentViewController *)self setLastKnownIsVisible:v8];
    [(AVPictureInPictureContentViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
    if (v14)
    {
      return;
    }
  }

  else
  {
    [(AVPictureInPictureContentViewController *)self setLastKnownIsVisible:v8];
    [(AVPictureInPictureContentViewController *)self setLastKnownVideoRectInWindow:x, y, width, height];
  }

  v15 = [(AVPictureInPictureContentViewController *)self pictureInPictureController];
  [v15 contentSourceVideoRectInWindowChanged];
}

- (void)_observeSourceView
{
  v3 = [(AVPictureInPictureContentViewController *)self avkit_isVisible];
  [(AVPictureInPictureContentViewController *)self avkit_videoRectInWindow];

  [(AVPictureInPictureContentViewController *)self _setLastKnownIsVisible:v3 videoRectInWindow:?];
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:(id)a3
{
  v4 = a3;
  v5 = [(AVPictureInPictureContentViewController *)self parentViewController];

  if (v5 == v4)
  {

    [(AVPictureInPictureContentViewController *)self _removeFromParent];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3
{
  v18 = a3;
  v4 = [(AVPictureInPictureContentViewController *)self parentViewController];

  if (v4)
  {
    [(AVPictureInPictureContentViewController *)self _removeFromParent];
  }

  [v18 addChildViewController:self];
  v5 = [v18 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AVPictureInPictureContentViewController *)self view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(AVPictureInPictureContentViewController *)self view];
  [v15 setAutoresizingMask:18];

  v16 = [v18 view];
  v17 = [(AVPictureInPictureContentViewController *)self view];
  [v16 addSubview:v17];

  [(AVPictureInPictureContentViewController *)self didMoveToParentViewController:v18];
}

- (id)avkit_pictureInPictureViewController
{
  v3 = [(AVPictureInPictureContentViewController *)self pictureInPictureViewController];
  if (!v3)
  {
    v3 = objc_alloc_init(AVPictureInPictureViewController);
    [(AVPictureInPictureContentViewController *)self setPictureInPictureViewController:v3];
  }

  return v3;
}

- (UIWindow)avkit_window
{
  v2 = [(AVPictureInPictureContentViewController *)self contentSource];
  v3 = [v2 activeSourceView];
  v4 = [v3 window];

  return v4;
}

- (BOOL)avkit_isVisible
{
  v3 = [(AVPictureInPictureContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVPictureInPictureContentViewController *)self delegate];
    v6 = [(AVPictureInPictureContentViewController *)self contentSource];
    v7 = [v6 activeSourceView];
    LOBYTE(v8) = [v5 pictureInPictureContentViewController:self isViewVisible:v7];
  }

  else
  {
    v5 = [(AVPictureInPictureContentViewController *)self contentSource];
    v7 = [v5 activeSourceView];
    v9 = [v7 window];
    if (v9 && ([v7 isHiddenOrHasHiddenAncestor] & 1) == 0)
    {
      [v7 bounds];
      [v9 convertRect:v7 fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v9 bounds];
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

    v6 = v7;
  }

  return v8;
}

- (CGRect)avkit_videoRectInWindow
{
  v3 = [(AVPictureInPictureContentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVPictureInPictureContentViewController *)self delegate];
    [v5 pictureInPictureContentViewControllerVideoFrameInWindow:self];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v5 = [(AVPictureInPictureContentViewController *)self contentSource];
    v14 = [v5 activeSourceView];
    v15 = [v14 window];
    v16 = [(AVPictureInPictureContentViewController *)self contentSource];
    v17 = [v16 activeSourceView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(AVPictureInPictureContentViewController *)self contentSource];
    v27 = [v26 activeSourceView];
    [v15 convertRect:v27 fromView:{v19, v21, v23, v25}];
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
  v3 = [(AVPictureInPictureContentViewController *)self observeSourceViewTimer];
  [v3 invalidate];

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

- (void)setContentSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_contentSource, obj);
    v5 = obj;
  }
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  if (self->_playerController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_playerController, a3);
    v5 = v6;
  }
}

- (AVPictureInPictureContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVPictureInPictureContentViewController;
  v4 = [(AVPictureInPictureContentViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AVPictureInPictureContentViewController *)v4 setPreferredContentSize:100.0, 100.0];
  }

  return v5;
}

@end
@interface AVPictureInPictureViewController
- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView;
- (AVPictureInPictureViewController)initWithCoder:(id)coder;
- (AVPictureInPictureViewController)initWithPictureInPicturePlayerLayerView:(id)view;
- (AVPictureInPictureViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didAnimatePictureInPictureStop;
- (void)setContentViewController:(id)controller;
- (void)willAnimatePictureInPictureStart;
@end

@implementation AVPictureInPictureViewController

- (AVPictureInPictureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_contentViewController;
  if (v5 != controllerCopy)
  {
    objc_storeStrong(&self->_contentViewController, controller);
    if (controllerCopy)
    {
      [(AVPictureInPictureViewController *)self addChildViewController:controllerCopy];
      view = [(AVPictureInPictureViewController *)controllerCopy view];
      [view setTranslatesAutoresizingMaskIntoConstraints:1];

      view2 = [(AVPictureInPictureViewController *)controllerCopy view];
      [view2 setAutoresizingMask:18];

      view3 = [(AVPictureInPictureViewController *)controllerCopy view];
      view4 = [(AVPictureInPictureViewController *)self view];
      [view4 bounds];
      [view3 setFrame:?];

      view5 = [(AVPictureInPictureViewController *)self view];
      view6 = [(AVPictureInPictureViewController *)controllerCopy view];
      [view5 addSubview:view6];

      [(AVPictureInPictureViewController *)controllerCopy didMoveToParentViewController:self];
    }

    if (v5)
    {
      [(AVPictureInPictureViewController *)v5 willMoveToParentViewController:0];
      view7 = [(AVPictureInPictureViewController *)v5 view];
      [view7 removeFromSuperview];

      [(AVPictureInPictureViewController *)v5 removeFromParentViewController];
    }
  }
}

- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView
{
  contentViewController = [(AVPictureInPictureViewController *)self contentViewController];
  pictureInPicturePlayerLayerView = [contentViewController pictureInPicturePlayerLayerView];
  pictureInPicturePlayerLayerView = pictureInPicturePlayerLayerView;
  if (!pictureInPicturePlayerLayerView)
  {
    pictureInPicturePlayerLayerView = self->_pictureInPicturePlayerLayerView;
  }

  v6 = pictureInPicturePlayerLayerView;

  return pictureInPicturePlayerLayerView;
}

- (AVPictureInPictureViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v7}];

  return [(AVPictureInPictureViewController *)self initWithPictureInPicturePlayerLayerView:0];
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[AVPictureInPictureViewController dealloc]";
    v7 = 1024;
    v8 = 49;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVPictureInPictureViewController;
  [(AVPictureInPictureViewController *)&v4 dealloc];
}

- (AVPictureInPictureViewController)initWithPictureInPicturePlayerLayerView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[AVPictureInPictureViewController initWithPictureInPicturePlayerLayerView:]";
    v12 = 1024;
    v13 = 35;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v9.receiver = self;
  v9.super_class = AVPictureInPictureViewController;
  v6 = [(AVPictureInPictureViewController *)&v9 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = viewCopy;
    if (!viewCopy)
    {
      v7 = objc_alloc_init(AVPictureInPicturePlayerLayerView);
    }

    objc_storeStrong(&v6->_pictureInPicturePlayerLayerView, v7);
    if (!viewCopy)
    {
    }
  }

  return v6;
}

- (void)didAnimatePictureInPictureStop
{
  delegate = [(AVPictureInPictureViewController *)self delegate];
  [delegate pictureInPictureViewControllerViewWillDisappear:self];
}

- (void)willAnimatePictureInPictureStart
{
  delegate = [(AVPictureInPictureViewController *)self delegate];
  [delegate pictureInPictureViewControllerViewDidAppear:self];
}

@end
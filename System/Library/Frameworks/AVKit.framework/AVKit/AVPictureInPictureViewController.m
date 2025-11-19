@interface AVPictureInPictureViewController
- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView;
- (AVPictureInPictureViewController)initWithCoder:(id)a3;
- (AVPictureInPictureViewController)initWithPictureInPicturePlayerLayerView:(id)a3;
- (AVPictureInPictureViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didAnimatePictureInPictureStop;
- (void)setContentViewController:(id)a3;
- (void)willAnimatePictureInPictureStart;
@end

@implementation AVPictureInPictureViewController

- (AVPictureInPictureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setContentViewController:(id)a3
{
  v13 = a3;
  v5 = self->_contentViewController;
  if (v5 != v13)
  {
    objc_storeStrong(&self->_contentViewController, a3);
    if (v13)
    {
      [(AVPictureInPictureViewController *)self addChildViewController:v13];
      v6 = [(AVPictureInPictureViewController *)v13 view];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:1];

      v7 = [(AVPictureInPictureViewController *)v13 view];
      [v7 setAutoresizingMask:18];

      v8 = [(AVPictureInPictureViewController *)v13 view];
      v9 = [(AVPictureInPictureViewController *)self view];
      [v9 bounds];
      [v8 setFrame:?];

      v10 = [(AVPictureInPictureViewController *)self view];
      v11 = [(AVPictureInPictureViewController *)v13 view];
      [v10 addSubview:v11];

      [(AVPictureInPictureViewController *)v13 didMoveToParentViewController:self];
    }

    if (v5)
    {
      [(AVPictureInPictureViewController *)v5 willMoveToParentViewController:0];
      v12 = [(AVPictureInPictureViewController *)v5 view];
      [v12 removeFromSuperview];

      [(AVPictureInPictureViewController *)v5 removeFromParentViewController];
    }
  }
}

- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView
{
  v3 = [(AVPictureInPictureViewController *)self contentViewController];
  v4 = [v3 pictureInPicturePlayerLayerView];
  pictureInPicturePlayerLayerView = v4;
  if (!v4)
  {
    pictureInPicturePlayerLayerView = self->_pictureInPicturePlayerLayerView;
  }

  v6 = pictureInPicturePlayerLayerView;

  return pictureInPicturePlayerLayerView;
}

- (AVPictureInPictureViewController)initWithCoder:(id)a3
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
    v10 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVPictureInPictureViewController;
  [(AVPictureInPictureViewController *)&v4 dealloc];
}

- (AVPictureInPictureViewController)initWithPictureInPicturePlayerLayerView:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[AVPictureInPictureViewController initWithPictureInPicturePlayerLayerView:]";
    v12 = 1024;
    v13 = 35;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v9.receiver = self;
  v9.super_class = AVPictureInPictureViewController;
  v6 = [(AVPictureInPictureViewController *)&v9 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = v4;
    if (!v4)
    {
      v7 = objc_alloc_init(AVPictureInPicturePlayerLayerView);
    }

    objc_storeStrong(&v6->_pictureInPicturePlayerLayerView, v7);
    if (!v4)
    {
    }
  }

  return v6;
}

- (void)didAnimatePictureInPictureStop
{
  v3 = [(AVPictureInPictureViewController *)self delegate];
  [v3 pictureInPictureViewControllerViewWillDisappear:self];
}

- (void)willAnimatePictureInPictureStart
{
  v3 = [(AVPictureInPictureViewController *)self delegate];
  [v3 pictureInPictureViewControllerViewDidAppear:self];
}

@end
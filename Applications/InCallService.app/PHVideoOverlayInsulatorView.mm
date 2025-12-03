@interface PHVideoOverlayInsulatorView
- (PHVideoOverlayInsulatorView)init;
- (void)dealloc;
- (void)displayContentView:(id)view animated:(BOOL)animated;
- (void)handlePIPControllerNotification:(id)notification;
- (void)setBackgroundView:(id)view;
- (void)setVideoOverlayContentView:(id)view animated:(BOOL)animated;
@end

@implementation PHVideoOverlayInsulatorView

- (PHVideoOverlayInsulatorView)init
{
  v9.receiver = self;
  v9.super_class = PHVideoOverlayInsulatorView;
  v2 = [(PHVideoOverlayInsulatorView *)&v9 init];
  if (v2)
  {
    v3 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
    [(PHVideoOverlayInsulatorView *)v2 setBackgroundView:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"handlePIPControllerNotification:" name:@"PHPIPControllerWillRotateNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"handlePIPControllerNotification:" name:@"PHPIPControllerDidRotateNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"handlePIPControllerNotification:" name:@"PHPIPControllerDidStartResizingNotification" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"handlePIPControllerNotification:" name:@"PHPIPControllerDidFinishResizingNotification" object:0];
  }

  return v2;
}

- (void)setVideoOverlayContentView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  contentView = [(PHVideoOverlayInsulatorView *)self contentView];

  if (viewCopy && contentView)
  {
    if (animatedCopy)
    {
      v8 = 0.00749999983;
    }

    else
    {
      v8 = 0.0;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100141F78;
    v12[3] = &unk_100356988;
    v12[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100141FC0;
    v9[3] = &unk_10035A138;
    v9[4] = self;
    v10 = viewCopy;
    v11 = animatedCopy;
    [UIView animateWithDuration:v12 animations:v9 completion:v8];
  }

  else if (viewCopy)
  {
    [(PHVideoOverlayInsulatorView *)self displayContentView:viewCopy animated:animatedCopy];
  }
}

- (void)displayContentView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  contentView = [(PHVideoOverlayInsulatorView *)self contentView];
  [contentView setAlpha:0.0];

  contentView2 = [(PHVideoOverlayInsulatorView *)self contentView];
  [(PHVideoOverlayInsulatorView *)self addSubview:contentView2];

  v10 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:0.600000024 constant:0.0];
  LODWORD(v11) = 1144913920;
  [v10 setPriority:v11];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v10];
  v12 = +[UIDevice currentDevice];
  v13 = dbl_1002F9690[[v12 userInterfaceIdiom] == 1];

  v14 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:v13];
  LODWORD(v15) = 1148846080;
  [v14 setPriority:v15];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v14];
  v16 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  LODWORD(v17) = 1148846080;
  [v16 setPriority:v17];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v16];
  v18 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v18];

  v19 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v19];
  v21 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:4 relatedBy:-1 toItem:self attribute:4 multiplier:1.0 constant:-70.0];
  LODWORD(v22) = 1148846080;
  [v21 setPriority:v22];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v21];
  v23 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:3 relatedBy:1 toItem:self attribute:3 multiplier:1.0 constant:20.0];
  LODWORD(v24) = 1148846080;
  [v23 setPriority:v24];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v23];
  v25 = 0.00749999983;
  if (!animatedCopy)
  {
    v25 = 0.0;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10014235C;
  v26[3] = &unk_100356988;
  v26[4] = self;
  [UIView animateWithDuration:v26 animations:v25];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  [(PHVideoOverlayInsulatorView *)self addSubview:viewCopy];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayInsulatorView *)self addConstraint:v7];

  v8 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];

  [(PHVideoOverlayInsulatorView *)self addConstraint:v8];
}

- (void)handlePIPControllerNotification:(id)notification
{
  isContentViewRotatingOrResizing = [(PHVideoOverlayInsulatorView *)self isContentViewRotatingOrResizing];
  contentView = [(PHVideoOverlayInsulatorView *)self contentView];
  v6 = contentView;
  if (isContentViewRotatingOrResizing)
  {
    [contentView resetView];

    contentView = [(PHVideoOverlayInsulatorView *)self contentView];
    v6 = contentView;
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [contentView setAlpha:v7];

  [(PHVideoOverlayInsulatorView *)self setIsContentViewRotatingOrResizing:isContentViewRotatingOrResizing ^ 1];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHVideoOverlayInsulatorView;
  [(PHVideoOverlayInsulatorView *)&v4 dealloc];
}

@end
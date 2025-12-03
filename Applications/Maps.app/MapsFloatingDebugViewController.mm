@interface MapsFloatingDebugViewController
- (BOOL)isAttached;
- (CGPoint)initialPosition;
- (MapsFloatingDebugViewController)init;
- (UIView)contentView;
- (id)windowScene;
- (void)attach;
- (void)detach;
- (void)longPressGestureRecognizerFired:(id)fired;
- (void)panGestureRecognizerFired:(id)fired;
- (void)sceneDidActivateNotification:(id)notification;
- (void)setInitialPosition:(CGPoint)position;
- (void)toggleState;
- (void)updateTintAndIconLabel;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation MapsFloatingDebugViewController

- (void)sceneDidActivateNotification:(id)notification
{
  windowScene = [(MapsFloatingDebugViewController *)self windowScene];
  floatingDebugWindow = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow setWindowScene:windowScene];
}

- (void)longPressGestureRecognizerFired:(id)fired
{
  v4 = [UIAlertController alertControllerWithTitle:@"Choose an action" message:0 preferredStyle:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10081A27C;
  v16[3] = &unk_10165F220;
  v16[4] = self;
  v5 = [UIAlertAction actionWithTitle:@"Dismiss foating debug UI" style:0 handler:v16];
  [v4 addAction:v5];

  additionalLongPressActions = [(MapsFloatingDebugViewController *)self additionalLongPressActions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [additionalLongPressActions countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(additionalLongPressActions);
        }

        [v4 addAction:*(*(&v12 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [additionalLongPressActions countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v11];

  [(MapsFloatingDebugViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)panGestureRecognizerFired:(id)fired
{
  firedCopy = fired;
  view = [(MapsFloatingDebugViewController *)self view];
  superview = [view superview];
  [firedCopy translationInView:superview];
  v8 = v7;
  v10 = v9;

  view2 = [(MapsFloatingDebugViewController *)self view];
  [view2 frame];
  v13 = v12 + v8;
  view3 = [(MapsFloatingDebugViewController *)self view];
  [view3 frame];
  v16 = v15 + v10;

  leadingConstraint = [(MapsFloatingDebugViewController *)self leadingConstraint];
  [leadingConstraint setConstant:v13];

  topConstraint = [(MapsFloatingDebugViewController *)self topConstraint];
  [topConstraint setConstant:v16];

  view4 = [(MapsFloatingDebugViewController *)self view];
  [firedCopy setTranslation:view4 inView:{CGPointZero.x, CGPointZero.y}];

  contentView = [(MapsFloatingDebugViewController *)self contentView];
  [contentView setNeedsLayout];

  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  [contentView2 layoutIfNeeded];

  state = [firedCopy state];
  if (state == 3)
  {

    [(MapsFloatingDebugViewController *)self setInitialPosition:v13, v16];
  }
}

- (void)setInitialPosition:(CGPoint)position
{
  v7 = NSStringFromCGPoint(position);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@%@", @"kFloatingDebugViewControllerInitialPositionKeyPrefix", v4];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setObject:v7 forKey:v5];
}

- (CGPoint)initialPosition
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@%@", @"kFloatingDebugViewControllerInitialPositionKeyPrefix", v3];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:v4];

  if (v6)
  {
    v7 = CGPointFromString(v6);
    x = v7.x;
    y = v7.y;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)updateTintAndIconLabel
{
  tintColor = [(MapsFloatingDebugViewController *)self tintColor];
  view = [(MapsFloatingDebugViewController *)self view];
  [view setBackgroundColor:tintColor];

  tintColor2 = [(MapsFloatingDebugViewController *)self tintColor];
  thumbnailIconLabel = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel setBackgroundColor:tintColor2];

  iconText = [(MapsFloatingDebugViewController *)self iconText];
  thumbnailIconLabel2 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel2 setText:iconText];
}

- (void)updateViewForCurrentState
{
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (viewState == 1)
  {
    thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    [thumbnailImageView removeFromSuperview];

    thumbnailIconLabel = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    [thumbnailIconLabel removeFromSuperview];

    view = [(MapsFloatingDebugViewController *)self view];
    grabberContainerView = [(MapsFloatingDebugViewController *)self grabberContainerView];
    [view addSubview:grabberContainerView];

    grabberContainerView2 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    leadingAnchor = [grabberContainerView2 leadingAnchor];
    view2 = [(MapsFloatingDebugViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v95 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v109[0] = v95;
    grabberContainerView3 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    trailingAnchor = [grabberContainerView3 trailingAnchor];
    view3 = [(MapsFloatingDebugViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v78 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v109[1] = v78;
    grabberContainerView4 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    topAnchor = [grabberContainerView4 topAnchor];
    view4 = [(MapsFloatingDebugViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v109[2] = v37;
    grabberContainerView5 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    heightAnchor = [grabberContainerView5 heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:44.0];
    v109[3] = v40;
    v41 = [NSArray arrayWithObjects:v109 count:4];
    [NSLayoutConstraint activateConstraints:v41];

    view5 = [(MapsFloatingDebugViewController *)self view];
    scrollView = [(MapsFloatingDebugViewController *)self scrollView];
    [view5 addSubview:scrollView];

    scrollView2 = [(MapsFloatingDebugViewController *)self scrollView];
    leadingAnchor3 = [scrollView2 leadingAnchor];
    view6 = [(MapsFloatingDebugViewController *)self view];
    leadingAnchor4 = [view6 leadingAnchor];
    v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v108[0] = v76;
    scrollView3 = [(MapsFloatingDebugViewController *)self scrollView];
    trailingAnchor3 = [scrollView3 trailingAnchor];
    view7 = [(MapsFloatingDebugViewController *)self view];
    trailingAnchor4 = [view7 trailingAnchor];
    v103 = [trailingAnchor3 constraintEqualToAnchor:?];
    v108[1] = v103;
    scrollView4 = [(MapsFloatingDebugViewController *)self scrollView];
    topAnchor3 = [scrollView4 topAnchor];
    grabberContainerView6 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    bottomAnchor = [grabberContainerView6 bottomAnchor];
    heightAnchor5 = topAnchor3;
    v73 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v108[2] = v73;
    scrollView5 = [(MapsFloatingDebugViewController *)self scrollView];
    bottomAnchor2 = [scrollView5 bottomAnchor];
    view8 = [(MapsFloatingDebugViewController *)self view];
    bottomAnchor3 = [view8 bottomAnchor];
    v61 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v108[3] = v61;
    contentView = [(MapsFloatingDebugViewController *)self contentView];
    widthAnchor = [contentView widthAnchor];
    view9 = [(MapsFloatingDebugViewController *)self view];
    widthAnchor2 = [view9 widthAnchor];
    v47 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v108[4] = v47;
    contentView2 = [(MapsFloatingDebugViewController *)self contentView];
    heightAnchor2 = [contentView2 heightAnchor];
    view10 = [(MapsFloatingDebugViewController *)self view];
    heightAnchor3 = [view10 heightAnchor];
    v52 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3 constant:-44.0];
    v108[5] = v52;
    v53 = [NSArray arrayWithObjects:v108 count:6];
    [NSLayoutConstraint activateConstraints:v53];

    v27 = bottomAnchor;
    centerXAnchor2 = leadingAnchor4;

    v23 = v76;
    view17 = view6;

    view18 = view7;
    centerXAnchor = leadingAnchor3;

    thumbnailIconLabel4 = scrollView3;
    thumbnailIconLabel3 = scrollView2;

    topAnchor6 = trailingAnchor3;
    v28 = 5.0;
  }

  else
  {
    if (viewState)
    {
      return;
    }

    grabberContainerView7 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    [grabberContainerView7 removeFromSuperview];

    scrollView6 = [(MapsFloatingDebugViewController *)self scrollView];
    [scrollView6 removeFromSuperview];

    view11 = [(MapsFloatingDebugViewController *)self view];
    thumbnailImageView2 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    [view11 addSubview:thumbnailImageView2];

    thumbnailImageView3 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    leadingAnchor5 = [thumbnailImageView3 leadingAnchor];
    view12 = [(MapsFloatingDebugViewController *)self view];
    leadingAnchor6 = [view12 leadingAnchor];
    v93 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:5.0];
    v111[0] = v93;
    thumbnailImageView4 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    trailingAnchor5 = [thumbnailImageView4 trailingAnchor];
    view13 = [(MapsFloatingDebugViewController *)self view];
    trailingAnchor6 = [view13 trailingAnchor];
    v80 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-5.0];
    v111[1] = v80;
    thumbnailImageView5 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    topAnchor4 = [thumbnailImageView5 topAnchor];
    view14 = [(MapsFloatingDebugViewController *)self view];
    topAnchor5 = [view14 topAnchor];
    v68 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:5.0];
    v111[2] = v68;
    thumbnailImageView6 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    bottomAnchor4 = [thumbnailImageView6 bottomAnchor];
    view15 = [(MapsFloatingDebugViewController *)self view];
    bottomAnchor5 = [view15 bottomAnchor];
    v58 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-5.0];
    v111[3] = v58;
    thumbnailImageView7 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    widthAnchor3 = [thumbnailImageView7 widthAnchor];
    v10 = [widthAnchor3 constraintEqualToConstant:34.0];
    v111[4] = v10;
    thumbnailImageView8 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    heightAnchor4 = [thumbnailImageView8 heightAnchor];
    thumbnailImageView9 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    widthAnchor4 = [thumbnailImageView9 widthAnchor];
    v15 = [heightAnchor4 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
    v111[5] = v15;
    v16 = [NSArray arrayWithObjects:v111 count:6];
    [NSLayoutConstraint activateConstraints:v16];

    view16 = [(MapsFloatingDebugViewController *)self view];
    thumbnailIconLabel2 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    [view16 addSubview:thumbnailIconLabel2];

    thumbnailIconLabel3 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    centerXAnchor = [thumbnailIconLabel3 centerXAnchor];
    view17 = [(MapsFloatingDebugViewController *)self view];
    centerXAnchor2 = [view17 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v110[0] = v23;
    thumbnailIconLabel4 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    topAnchor6 = [thumbnailIconLabel4 topAnchor];
    view18 = [(MapsFloatingDebugViewController *)self view];
    trailingAnchor4 = [view18 bottomAnchor];
    v103 = [topAnchor6 constraintEqualToAnchor:5.0 constant:?];
    v110[1] = v103;
    scrollView4 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    heightAnchor5 = [scrollView4 heightAnchor];
    grabberContainerView6 = [heightAnchor5 constraintEqualToConstant:18.0];
    v110[2] = grabberContainerView6;
    v27 = [NSArray arrayWithObjects:v110 count:3];
    [NSLayoutConstraint activateConstraints:v27];
    v28 = 22.0;
  }

  view19 = [(MapsFloatingDebugViewController *)self view];
  layer = [view19 layer];
  [layer setCornerRadius:v28];
}

- (void)toggleState
{
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (!viewState)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (viewState == 1)
  {
    v4 = 0;
LABEL_5:
    [(MapsFloatingDebugViewController *)self setViewState:v4];
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10081B1D4;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [UIView animateWithDuration:6 delay:v5 options:0 animations:0.5 completion:0.0];
}

- (id)windowScene
{
  v2 = +[UIApplication _maps_lockScreenSceneDelegate];
  lockScreenWindow = [v2 lockScreenWindow];
  windowScene = [lockScreenWindow windowScene];
  v5 = windowScene;
  if (windowScene)
  {
    windowScene2 = windowScene;
  }

  else
  {
    v7 = +[UIApplication _maps_keyMapsSceneDelegate];
    window = [v7 window];
    windowScene2 = [window windowScene];
  }

  return windowScene2;
}

- (BOOL)isAttached
{
  floatingDebugWindow = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  isHidden = [floatingDebugWindow isHidden];

  return isHidden ^ 1;
}

- (void)detach
{
  floatingDebugWindow = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow setHidden:1];
}

- (void)attach
{
  floatingDebugWindow = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow setHidden:0];

  [(MapsFloatingDebugViewController *)self loadViewIfNeeded];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_opt_new();
    v5 = self->_contentView;
    self->_contentView = v4;

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(UIView *)self->_contentView setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UIView *)self->_contentView setContentCompressionResistancePriority:0 forAxis:v7];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)viewDidLoad
{
  v157.receiver = self;
  v157.super_class = MapsFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v157 viewDidLoad];
  v156 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"panGestureRecognizerFired:"];
  floatingDebugWindow = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow addGestureRecognizer:v156];

  v155 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGestureRecognizerFired:"];
  floatingDebugWindow2 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow2 addGestureRecognizer:v155];

  v154 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"longPressGestureRecognizerFired:"];
  floatingDebugWindow3 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [floatingDebugWindow3 addGestureRecognizer:v154];

  floatingDebugWindow4 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  view = [(MapsFloatingDebugViewController *)self view];
  [floatingDebugWindow4 addSubview:view];

  view2 = [(MapsFloatingDebugViewController *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tintColor = [(MapsFloatingDebugViewController *)self tintColor];
  view3 = [(MapsFloatingDebugViewController *)self view];
  [view3 setBackgroundColor:tintColor];

  view4 = [(MapsFloatingDebugViewController *)self view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(MapsFloatingDebugViewController *)self view];
  superview = [view5 superview];
  leadingAnchor2 = [superview leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(MapsFloatingDebugViewController *)self setLeadingConstraint:v16];

  view6 = [(MapsFloatingDebugViewController *)self view];
  topAnchor = [view6 topAnchor];
  view7 = [(MapsFloatingDebugViewController *)self view];
  superview2 = [view7 superview];
  topAnchor2 = [superview2 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(MapsFloatingDebugViewController *)self setTopConstraint:v22];

  leadingConstraint = [(MapsFloatingDebugViewController *)self leadingConstraint];
  LODWORD(v24) = 1148829696;
  [leadingConstraint setPriority:v24];

  topConstraint = [(MapsFloatingDebugViewController *)self topConstraint];
  LODWORD(v26) = 1148829696;
  [topConstraint setPriority:v26];

  [(MapsFloatingDebugViewController *)self initialPosition];
  v28 = v27;
  leadingConstraint2 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  [leadingConstraint2 setConstant:v28];

  [(MapsFloatingDebugViewController *)self initialPosition];
  v31 = v30;
  topConstraint2 = [(MapsFloatingDebugViewController *)self topConstraint];
  [topConstraint2 setConstant:v31];

  view8 = [(MapsFloatingDebugViewController *)self view];
  topAnchor3 = [view8 topAnchor];
  view9 = [(MapsFloatingDebugViewController *)self view];
  superview3 = [view9 superview];
  safeAreaLayoutGuide = [superview3 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v134 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v161[0] = v134;
  view10 = [(MapsFloatingDebugViewController *)self view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(MapsFloatingDebugViewController *)self view];
  superview4 = [view11 superview];
  safeAreaLayoutGuide2 = [superview4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v120 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v161[1] = v120;
  view12 = [(MapsFloatingDebugViewController *)self view];
  leadingAnchor3 = [view12 leadingAnchor];
  view13 = [(MapsFloatingDebugViewController *)self view];
  superview5 = [view13 superview];
  safeAreaLayoutGuide3 = [superview5 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
  v113 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v161[2] = v113;
  view14 = [(MapsFloatingDebugViewController *)self view];
  trailingAnchor = [view14 trailingAnchor];
  view15 = [(MapsFloatingDebugViewController *)self view];
  superview6 = [view15 superview];
  safeAreaLayoutGuide4 = [superview6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v38 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v161[3] = v38;
  leadingConstraint3 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  v161[4] = leadingConstraint3;
  topConstraint3 = [(MapsFloatingDebugViewController *)self topConstraint];
  v161[5] = topConstraint3;
  v41 = [NSArray arrayWithObjects:v161 count:6];
  [NSLayoutConstraint activateConstraints:v41];

  v42 = [[UIImageView alloc] initWithImage:0];
  [(MapsFloatingDebugViewController *)self setThumbnailImageView:v42];

  thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  v44 = +[UIColor whiteColor];
  thumbnailImageView2 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView2 setTintColor:v44];

  thumbnailImageView3 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView3 setContentMode:1];

  thumbnailImageView4 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  LODWORD(v48) = 1148846080;
  [thumbnailImageView4 setContentCompressionResistancePriority:1 forAxis:v48];

  thumbnailImageView5 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  LODWORD(v50) = 1148846080;
  [thumbnailImageView5 setContentCompressionResistancePriority:0 forAxis:v50];

  v51 = [FloatingDebugIconLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(FloatingDebugIconLabel *)v51 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MapsFloatingDebugViewController *)self setThumbnailIconLabel:height];

  thumbnailIconLabel = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  thumbnailIconLabel2 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel2 setTextAlignment:1];

  v58 = +[UIColor whiteColor];
  thumbnailIconLabel3 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel3 setTextColor:v58];

  v60 = [UIFont systemFontOfSize:14.0];
  thumbnailIconLabel4 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel4 setFont:v60];

  tintColor2 = [(MapsFloatingDebugViewController *)self tintColor];
  thumbnailIconLabel5 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel5 setBackgroundColor:tintColor2];

  thumbnailIconLabel6 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel6 setClipsToBounds:1];

  iconText = [(MapsFloatingDebugViewController *)self iconText];
  thumbnailIconLabel7 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [thumbnailIconLabel7 setText:iconText];

  thumbnailIconLabel8 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  layer = [thumbnailIconLabel8 layer];
  [layer setCornerRadius:9.0];

  v69 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MapsFloatingDebugViewController *)self setGrabberContainerView:v69];

  grabberContainerView = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [grabberContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  v71 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = +[UIColor whiteColor];
  [v71 setBackgroundColor:v72];

  grabberContainerView2 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [grabberContainerView2 addSubview:v71];

  leadingAnchor5 = [v71 leadingAnchor];
  grabberContainerView3 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  leadingAnchor6 = [grabberContainerView3 leadingAnchor];
  v141 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
  v160[0] = v141;
  trailingAnchor3 = [v71 trailingAnchor];
  grabberContainerView4 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  trailingAnchor4 = [grabberContainerView4 trailingAnchor];
  v75 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
  v160[1] = v75;
  v153 = v71;
  bottomAnchor3 = [v71 bottomAnchor];
  grabberContainerView5 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  bottomAnchor4 = [grabberContainerView5 bottomAnchor];
  v79 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v160[2] = v79;
  heightAnchor = [v71 heightAnchor];
  v81 = [heightAnchor constraintEqualToConstant:1.0];
  v160[3] = v81;
  v82 = [NSArray arrayWithObjects:v160 count:4];
  [NSLayoutConstraint activateConstraints:v82];

  v83 = [[_UIGrabber alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = +[UIColor whiteColor];
  [v83 setBackgroundColor:v84];

  grabberContainerView6 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [grabberContainerView6 addSubview:v83];

  v151 = v83;
  centerXAnchor = [v83 centerXAnchor];
  grabberContainerView7 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  centerXAnchor2 = [grabberContainerView7 centerXAnchor];
  v89 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v159[0] = v89;
  centerYAnchor = [v83 centerYAnchor];
  grabberContainerView8 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  centerYAnchor2 = [grabberContainerView8 centerYAnchor];
  v93 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v159[1] = v93;
  v94 = [NSArray arrayWithObjects:v159 count:2];
  [NSLayoutConstraint activateConstraints:v94];

  v95 = objc_opt_new();
  [(MapsFloatingDebugViewController *)self setScrollView:v95];

  scrollView = [(MapsFloatingDebugViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(MapsFloatingDebugViewController *)self scrollView];
  LODWORD(v98) = 1148846080;
  [scrollView2 setContentHuggingPriority:1 forAxis:v98];

  scrollView3 = [(MapsFloatingDebugViewController *)self scrollView];
  LODWORD(v100) = 1132068864;
  [scrollView3 setContentCompressionResistancePriority:1 forAxis:v100];

  scrollView4 = [(MapsFloatingDebugViewController *)self scrollView];
  contentView = [(MapsFloatingDebugViewController *)self contentView];
  [scrollView4 addSubview:contentView];

  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor7 = [contentView2 leadingAnchor];
  scrollView5 = [(MapsFloatingDebugViewController *)self scrollView];
  leadingAnchor8 = [scrollView5 leadingAnchor];
  v136 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v158[0] = v136;
  contentView3 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor5 = [contentView3 trailingAnchor];
  scrollView6 = [(MapsFloatingDebugViewController *)self scrollView];
  trailingAnchor6 = [scrollView6 trailingAnchor];
  v124 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v158[1] = v124;
  contentView4 = [(MapsFloatingDebugViewController *)self contentView];
  topAnchor5 = [contentView4 topAnchor];
  scrollView7 = [(MapsFloatingDebugViewController *)self scrollView];
  topAnchor6 = [scrollView7 topAnchor];
  v105 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v158[2] = v105;
  contentView5 = [(MapsFloatingDebugViewController *)self contentView];
  bottomAnchor5 = [contentView5 bottomAnchor];
  scrollView8 = [(MapsFloatingDebugViewController *)self scrollView];
  bottomAnchor6 = [scrollView8 bottomAnchor];
  v110 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v158[3] = v110;
  v111 = [NSArray arrayWithObjects:v158 count:4];
  [NSLayoutConstraint activateConstraints:v111];

  [(MapsFloatingDebugViewController *)self updateViewForCurrentState];
}

- (MapsFloatingDebugViewController)init
{
  v9.receiver = self;
  v9.super_class = MapsFloatingDebugViewController;
  v2 = [(MapsFloatingDebugViewController *)&v9 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"sceneDidActivateNotification:" name:UISceneDidActivateNotification object:0];

    v4 = [PassThroughWindow alloc];
    windowScene = [(MapsFloatingDebugViewController *)v2 windowScene];
    v6 = [(PassThroughWindow *)v4 initWithWindowScene:windowScene];
    floatingDebugWindow = v2->_floatingDebugWindow;
    v2->_floatingDebugWindow = v6;

    [(PassThroughWindow *)v2->_floatingDebugWindow setWindowLevel:UIHUDWindowLevel];
  }

  return v2;
}

@end
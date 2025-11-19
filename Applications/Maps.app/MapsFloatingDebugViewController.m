@interface MapsFloatingDebugViewController
- (BOOL)isAttached;
- (CGPoint)initialPosition;
- (MapsFloatingDebugViewController)init;
- (UIView)contentView;
- (id)windowScene;
- (void)attach;
- (void)detach;
- (void)longPressGestureRecognizerFired:(id)a3;
- (void)panGestureRecognizerFired:(id)a3;
- (void)sceneDidActivateNotification:(id)a3;
- (void)setInitialPosition:(CGPoint)a3;
- (void)toggleState;
- (void)updateTintAndIconLabel;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation MapsFloatingDebugViewController

- (void)sceneDidActivateNotification:(id)a3
{
  v5 = [(MapsFloatingDebugViewController *)self windowScene];
  v4 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v4 setWindowScene:v5];
}

- (void)longPressGestureRecognizerFired:(id)a3
{
  v4 = [UIAlertController alertControllerWithTitle:@"Choose an action" message:0 preferredStyle:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10081A27C;
  v16[3] = &unk_10165F220;
  v16[4] = self;
  v5 = [UIAlertAction actionWithTitle:@"Dismiss foating debug UI" style:0 handler:v16];
  [v4 addAction:v5];

  v6 = [(MapsFloatingDebugViewController *)self additionalLongPressActions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v4 addAction:*(*(&v12 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v11];

  [(MapsFloatingDebugViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)panGestureRecognizerFired:(id)a3
{
  v4 = a3;
  v5 = [(MapsFloatingDebugViewController *)self view];
  v6 = [v5 superview];
  [v4 translationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(MapsFloatingDebugViewController *)self view];
  [v11 frame];
  v13 = v12 + v8;
  v14 = [(MapsFloatingDebugViewController *)self view];
  [v14 frame];
  v16 = v15 + v10;

  v17 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  [v17 setConstant:v13];

  v18 = [(MapsFloatingDebugViewController *)self topConstraint];
  [v18 setConstant:v16];

  v19 = [(MapsFloatingDebugViewController *)self view];
  [v4 setTranslation:v19 inView:{CGPointZero.x, CGPointZero.y}];

  v20 = [(MapsFloatingDebugViewController *)self contentView];
  [v20 setNeedsLayout];

  v21 = [(MapsFloatingDebugViewController *)self contentView];
  [v21 layoutIfNeeded];

  v22 = [v4 state];
  if (v22 == 3)
  {

    [(MapsFloatingDebugViewController *)self setInitialPosition:v13, v16];
  }
}

- (void)setInitialPosition:(CGPoint)a3
{
  v7 = NSStringFromCGPoint(a3);
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
  v3 = [(MapsFloatingDebugViewController *)self tintColor];
  v4 = [(MapsFloatingDebugViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(MapsFloatingDebugViewController *)self tintColor];
  v6 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v6 setBackgroundColor:v5];

  v8 = [(MapsFloatingDebugViewController *)self iconText];
  v7 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v7 setText:v8];
}

- (void)updateViewForCurrentState
{
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (v3 == 1)
  {
    v29 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    [v29 removeFromSuperview];

    v30 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    [v30 removeFromSuperview];

    v31 = [(MapsFloatingDebugViewController *)self view];
    v32 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    [v31 addSubview:v32];

    v107 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    v101 = [v107 leadingAnchor];
    v104 = [(MapsFloatingDebugViewController *)self view];
    v98 = [v104 leadingAnchor];
    v95 = [v101 constraintEqualToAnchor:v98];
    v109[0] = v95;
    v91 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    v86 = [v91 trailingAnchor];
    v89 = [(MapsFloatingDebugViewController *)self view];
    v81 = [v89 trailingAnchor];
    v78 = [v86 constraintEqualToAnchor:v81];
    v109[1] = v78;
    v33 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    v34 = [v33 topAnchor];
    v35 = [(MapsFloatingDebugViewController *)self view];
    v36 = [v35 topAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v109[2] = v37;
    v38 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    v39 = [v38 heightAnchor];
    v40 = [v39 constraintEqualToConstant:44.0];
    v109[3] = v40;
    v41 = [NSArray arrayWithObjects:v109 count:4];
    [NSLayoutConstraint activateConstraints:v41];

    v42 = [(MapsFloatingDebugViewController *)self view];
    v43 = [(MapsFloatingDebugViewController *)self scrollView];
    [v42 addSubview:v43];

    v92 = [(MapsFloatingDebugViewController *)self scrollView];
    v87 = [v92 leadingAnchor];
    v84 = [(MapsFloatingDebugViewController *)self view];
    v79 = [v84 leadingAnchor];
    v76 = [v87 constraintEqualToAnchor:v79];
    v108[0] = v76;
    v82 = [(MapsFloatingDebugViewController *)self scrollView];
    v75 = [v82 trailingAnchor];
    v71 = [(MapsFloatingDebugViewController *)self view];
    v106 = [v71 trailingAnchor];
    v103 = [v75 constraintEqualToAnchor:?];
    v108[1] = v103;
    v100 = [(MapsFloatingDebugViewController *)self scrollView];
    v44 = [v100 topAnchor];
    v94 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    v57 = [v94 bottomAnchor];
    v97 = v44;
    v73 = [v44 constraintEqualToAnchor:v57];
    v108[2] = v73;
    v69 = [(MapsFloatingDebugViewController *)self scrollView];
    v65 = [v69 bottomAnchor];
    v67 = [(MapsFloatingDebugViewController *)self view];
    v63 = [v67 bottomAnchor];
    v61 = [v65 constraintEqualToAnchor:v63];
    v108[3] = v61;
    v59 = [(MapsFloatingDebugViewController *)self contentView];
    v56 = [v59 widthAnchor];
    v45 = [(MapsFloatingDebugViewController *)self view];
    v46 = [v45 widthAnchor];
    v47 = [v56 constraintEqualToAnchor:v46];
    v108[4] = v47;
    v48 = [(MapsFloatingDebugViewController *)self contentView];
    v49 = [v48 heightAnchor];
    v50 = [(MapsFloatingDebugViewController *)self view];
    v51 = [v50 heightAnchor];
    v52 = [v49 constraintGreaterThanOrEqualToAnchor:v51 constant:-44.0];
    v108[5] = v52;
    v53 = [NSArray arrayWithObjects:v108 count:6];
    [NSLayoutConstraint activateConstraints:v53];

    v27 = v57;
    v22 = v79;

    v23 = v76;
    v21 = v84;

    v26 = v71;
    v20 = v87;

    v24 = v82;
    v19 = v92;

    v25 = v75;
    v28 = 5.0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [(MapsFloatingDebugViewController *)self grabberContainerView];
    [v4 removeFromSuperview];

    v5 = [(MapsFloatingDebugViewController *)self scrollView];
    [v5 removeFromSuperview];

    v6 = [(MapsFloatingDebugViewController *)self view];
    v7 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    [v6 addSubview:v7];

    v105 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v99 = [v105 leadingAnchor];
    v102 = [(MapsFloatingDebugViewController *)self view];
    v96 = [v102 leadingAnchor];
    v93 = [v99 constraintEqualToAnchor:v96 constant:5.0];
    v111[0] = v93;
    v90 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v85 = [v90 trailingAnchor];
    v88 = [(MapsFloatingDebugViewController *)self view];
    v83 = [v88 trailingAnchor];
    v80 = [v85 constraintEqualToAnchor:v83 constant:-5.0];
    v111[1] = v80;
    v77 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v72 = [v77 topAnchor];
    v74 = [(MapsFloatingDebugViewController *)self view];
    v70 = [v74 topAnchor];
    v68 = [v72 constraintEqualToAnchor:v70 constant:5.0];
    v111[2] = v68;
    v66 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v62 = [v66 bottomAnchor];
    v64 = [(MapsFloatingDebugViewController *)self view];
    v60 = [v64 bottomAnchor];
    v58 = [v62 constraintEqualToAnchor:v60 constant:-5.0];
    v111[3] = v58;
    v8 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v9 = [v8 widthAnchor];
    v10 = [v9 constraintEqualToConstant:34.0];
    v111[4] = v10;
    v11 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v12 = [v11 heightAnchor];
    v13 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
    v14 = [v13 widthAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 multiplier:1.0];
    v111[5] = v15;
    v16 = [NSArray arrayWithObjects:v111 count:6];
    [NSLayoutConstraint activateConstraints:v16];

    v17 = [(MapsFloatingDebugViewController *)self view];
    v18 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    [v17 addSubview:v18];

    v19 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    v20 = [v19 centerXAnchor];
    v21 = [(MapsFloatingDebugViewController *)self view];
    v22 = [v21 centerXAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v110[0] = v23;
    v24 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    v25 = [v24 topAnchor];
    v26 = [(MapsFloatingDebugViewController *)self view];
    v106 = [v26 bottomAnchor];
    v103 = [v25 constraintEqualToAnchor:5.0 constant:?];
    v110[1] = v103;
    v100 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
    v97 = [v100 heightAnchor];
    v94 = [v97 constraintEqualToConstant:18.0];
    v110[2] = v94;
    v27 = [NSArray arrayWithObjects:v110 count:3];
    [NSLayoutConstraint activateConstraints:v27];
    v28 = 22.0;
  }

  v54 = [(MapsFloatingDebugViewController *)self view];
  v55 = [v54 layer];
  [v55 setCornerRadius:v28];
}

- (void)toggleState
{
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
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
  v3 = [v2 lockScreenWindow];
  v4 = [v3 windowScene];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = +[UIApplication _maps_keyMapsSceneDelegate];
    v8 = [v7 window];
    v6 = [v8 windowScene];
  }

  return v6;
}

- (BOOL)isAttached
{
  v2 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)detach
{
  v2 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v2 setHidden:1];
}

- (void)attach
{
  v3 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v3 setHidden:0];

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
  v3 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v3 addGestureRecognizer:v156];

  v155 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGestureRecognizerFired:"];
  v4 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v4 addGestureRecognizer:v155];

  v154 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"longPressGestureRecognizerFired:"];
  v5 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  [v5 addGestureRecognizer:v154];

  v6 = [(MapsFloatingDebugViewController *)self floatingDebugWindow];
  v7 = [(MapsFloatingDebugViewController *)self view];
  [v6 addSubview:v7];

  v8 = [(MapsFloatingDebugViewController *)self view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(MapsFloatingDebugViewController *)self tintColor];
  v10 = [(MapsFloatingDebugViewController *)self view];
  [v10 setBackgroundColor:v9];

  v11 = [(MapsFloatingDebugViewController *)self view];
  v12 = [v11 leadingAnchor];
  v13 = [(MapsFloatingDebugViewController *)self view];
  v14 = [v13 superview];
  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  [(MapsFloatingDebugViewController *)self setLeadingConstraint:v16];

  v17 = [(MapsFloatingDebugViewController *)self view];
  v18 = [v17 topAnchor];
  v19 = [(MapsFloatingDebugViewController *)self view];
  v20 = [v19 superview];
  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  [(MapsFloatingDebugViewController *)self setTopConstraint:v22];

  v23 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  LODWORD(v24) = 1148829696;
  [v23 setPriority:v24];

  v25 = [(MapsFloatingDebugViewController *)self topConstraint];
  LODWORD(v26) = 1148829696;
  [v25 setPriority:v26];

  [(MapsFloatingDebugViewController *)self initialPosition];
  v28 = v27;
  v29 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  [v29 setConstant:v28];

  [(MapsFloatingDebugViewController *)self initialPosition];
  v31 = v30;
  v32 = [(MapsFloatingDebugViewController *)self topConstraint];
  [v32 setConstant:v31];

  v152 = [(MapsFloatingDebugViewController *)self view];
  v143 = [v152 topAnchor];
  v149 = [(MapsFloatingDebugViewController *)self view];
  v146 = [v149 superview];
  v140 = [v146 safeAreaLayoutGuide];
  v137 = [v140 topAnchor];
  v134 = [v143 constraintGreaterThanOrEqualToAnchor:v137];
  v161[0] = v134;
  v132 = [(MapsFloatingDebugViewController *)self view];
  v126 = [v132 bottomAnchor];
  v130 = [(MapsFloatingDebugViewController *)self view];
  v128 = [v130 superview];
  v125 = [v128 safeAreaLayoutGuide];
  v123 = [v125 bottomAnchor];
  v120 = [v126 constraintLessThanOrEqualToAnchor:v123];
  v161[1] = v120;
  v119 = [(MapsFloatingDebugViewController *)self view];
  v116 = [v119 leadingAnchor];
  v118 = [(MapsFloatingDebugViewController *)self view];
  v117 = [v118 superview];
  v115 = [v117 safeAreaLayoutGuide];
  v114 = [v115 leadingAnchor];
  v113 = [v116 constraintGreaterThanOrEqualToAnchor:v114];
  v161[2] = v113;
  v112 = [(MapsFloatingDebugViewController *)self view];
  v33 = [v112 trailingAnchor];
  v34 = [(MapsFloatingDebugViewController *)self view];
  v35 = [v34 superview];
  v36 = [v35 safeAreaLayoutGuide];
  v37 = [v36 trailingAnchor];
  v38 = [v33 constraintLessThanOrEqualToAnchor:v37];
  v161[3] = v38;
  v39 = [(MapsFloatingDebugViewController *)self leadingConstraint];
  v161[4] = v39;
  v40 = [(MapsFloatingDebugViewController *)self topConstraint];
  v161[5] = v40;
  v41 = [NSArray arrayWithObjects:v161 count:6];
  [NSLayoutConstraint activateConstraints:v41];

  v42 = [[UIImageView alloc] initWithImage:0];
  [(MapsFloatingDebugViewController *)self setThumbnailImageView:v42];

  v43 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

  v44 = +[UIColor whiteColor];
  v45 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v45 setTintColor:v44];

  v46 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v46 setContentMode:1];

  v47 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  LODWORD(v48) = 1148846080;
  [v47 setContentCompressionResistancePriority:1 forAxis:v48];

  v49 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  LODWORD(v50) = 1148846080;
  [v49 setContentCompressionResistancePriority:0 forAxis:v50];

  v51 = [FloatingDebugIconLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v55 = [(FloatingDebugIconLabel *)v51 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MapsFloatingDebugViewController *)self setThumbnailIconLabel:v55];

  v56 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];

  v57 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v57 setTextAlignment:1];

  v58 = +[UIColor whiteColor];
  v59 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v59 setTextColor:v58];

  v60 = [UIFont systemFontOfSize:14.0];
  v61 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v61 setFont:v60];

  v62 = [(MapsFloatingDebugViewController *)self tintColor];
  v63 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v63 setBackgroundColor:v62];

  v64 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v64 setClipsToBounds:1];

  v65 = [(MapsFloatingDebugViewController *)self iconText];
  v66 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  [v66 setText:v65];

  v67 = [(MapsFloatingDebugViewController *)self thumbnailIconLabel];
  v68 = [v67 layer];
  [v68 setCornerRadius:9.0];

  v69 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MapsFloatingDebugViewController *)self setGrabberContainerView:v69];

  v70 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

  v71 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = +[UIColor whiteColor];
  [v71 setBackgroundColor:v72];

  v73 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [v73 addSubview:v71];

  v147 = [v71 leadingAnchor];
  v150 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  v144 = [v150 leadingAnchor];
  v141 = [v147 constraintEqualToAnchor:v144 constant:8.0];
  v160[0] = v141;
  v135 = [v71 trailingAnchor];
  v138 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  v74 = [v138 trailingAnchor];
  v75 = [v135 constraintEqualToAnchor:v74 constant:-8.0];
  v160[1] = v75;
  v153 = v71;
  v76 = [v71 bottomAnchor];
  v77 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  v78 = [v77 bottomAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  v160[2] = v79;
  v80 = [v71 heightAnchor];
  v81 = [v80 constraintEqualToConstant:1.0];
  v160[3] = v81;
  v82 = [NSArray arrayWithObjects:v160 count:4];
  [NSLayoutConstraint activateConstraints:v82];

  v83 = [[_UIGrabber alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = +[UIColor whiteColor];
  [v83 setBackgroundColor:v84];

  v85 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  [v85 addSubview:v83];

  v151 = v83;
  v86 = [v83 centerXAnchor];
  v87 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  v88 = [v87 centerXAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];
  v159[0] = v89;
  v90 = [v83 centerYAnchor];
  v91 = [(MapsFloatingDebugViewController *)self grabberContainerView];
  v92 = [v91 centerYAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];
  v159[1] = v93;
  v94 = [NSArray arrayWithObjects:v159 count:2];
  [NSLayoutConstraint activateConstraints:v94];

  v95 = objc_opt_new();
  [(MapsFloatingDebugViewController *)self setScrollView:v95];

  v96 = [(MapsFloatingDebugViewController *)self scrollView];
  [v96 setTranslatesAutoresizingMaskIntoConstraints:0];

  v97 = [(MapsFloatingDebugViewController *)self scrollView];
  LODWORD(v98) = 1148846080;
  [v97 setContentHuggingPriority:1 forAxis:v98];

  v99 = [(MapsFloatingDebugViewController *)self scrollView];
  LODWORD(v100) = 1132068864;
  [v99 setContentCompressionResistancePriority:1 forAxis:v100];

  v101 = [(MapsFloatingDebugViewController *)self scrollView];
  v102 = [(MapsFloatingDebugViewController *)self contentView];
  [v101 addSubview:v102];

  v148 = [(MapsFloatingDebugViewController *)self contentView];
  v142 = [v148 leadingAnchor];
  v145 = [(MapsFloatingDebugViewController *)self scrollView];
  v139 = [v145 leadingAnchor];
  v136 = [v142 constraintEqualToAnchor:v139];
  v158[0] = v136;
  v133 = [(MapsFloatingDebugViewController *)self contentView];
  v129 = [v133 trailingAnchor];
  v131 = [(MapsFloatingDebugViewController *)self scrollView];
  v127 = [v131 trailingAnchor];
  v124 = [v129 constraintEqualToAnchor:v127];
  v158[1] = v124;
  v122 = [(MapsFloatingDebugViewController *)self contentView];
  v121 = [v122 topAnchor];
  v103 = [(MapsFloatingDebugViewController *)self scrollView];
  v104 = [v103 topAnchor];
  v105 = [v121 constraintEqualToAnchor:v104];
  v158[2] = v105;
  v106 = [(MapsFloatingDebugViewController *)self contentView];
  v107 = [v106 bottomAnchor];
  v108 = [(MapsFloatingDebugViewController *)self scrollView];
  v109 = [v108 bottomAnchor];
  v110 = [v107 constraintEqualToAnchor:v109];
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
    v5 = [(MapsFloatingDebugViewController *)v2 windowScene];
    v6 = [(PassThroughWindow *)v4 initWithWindowScene:v5];
    floatingDebugWindow = v2->_floatingDebugWindow;
    v2->_floatingDebugWindow = v6;

    [(PassThroughWindow *)v2->_floatingDebugWindow setWindowLevel:UIHUDWindowLevel];
  }

  return v2;
}

@end
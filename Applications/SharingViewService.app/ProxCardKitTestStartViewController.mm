@interface ProxCardKitTestStartViewController
- (ProxCardKitTestStartViewController)init;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ProxCardKitTestStartViewController

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = ProxCardKitTestStartViewController;
  [(ProxCardKitTestStartViewController *)&v13 viewDidAppear:appear];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, 1.2, 1.2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001173CC;
  v9[3] = &unk_1001952D0;
  v10 = v12;
  v11 = 0x3FE999999999999ALL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100117424;
  v6[3] = &unk_100195338;
  v6[4] = self;
  v7 = objc_retainBlock(v9);
  v8 = &stru_100195310;
  v4 = v7;
  [UIView animateKeyframesWithDuration:8 delay:v6 options:0 animations:1.0 completion:0.0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100117638;
  v5[3] = &unk_100195AC0;
  v5[4] = self;
  [UIView animateWithDuration:0x20000 delay:v5 options:0 animations:0.5 completion:3.0];
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = ProxCardKitTestStartViewController;
  [(ProxCardKitTestStartViewController *)&v59 viewDidLoad];
  v3 = [UIImageView alloc];
  v4 = [UIImage systemImageNamed:@"p.square.fill"];
  v5 = [v3 initWithImage:v4];
  pView = self->_pView;
  self->_pView = v5;

  v7 = +[UIColor systemRedColor];
  [(UIImageView *)self->_pView setTintColor:v7];

  v8 = [UIImageView alloc];
  v9 = [UIImage systemImageNamed:@"r.square.fill"];
  v10 = [v8 initWithImage:v9];
  rView = self->_rView;
  self->_rView = v10;

  v12 = +[UIColor systemGreenColor];
  [(UIImageView *)self->_rView setTintColor:v12];

  v13 = [UIImageView alloc];
  v14 = [UIImage systemImageNamed:@"x.square.fill"];
  v15 = [v13 initWithImage:v14];
  xView = self->_xView;
  self->_xView = v15;

  v17 = +[UIColor systemBlueColor];
  [(UIImageView *)self->_xView setTintColor:v17];

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:72.0];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = self->_rView;
  v61[0] = self->_pView;
  v61[1] = v19;
  v61[2] = self->_xView;
  v20 = [NSArray arrayWithObjects:v61 count:3];
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        [v25 setPreferredSymbolConfiguration:v18];
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(ProxCardKitTestStartViewController *)self contentView];
        [contentView addSubview:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v22);
  }

  contentView2 = [(ProxCardKitTestStartViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  centerYAnchor = [(UIImageView *)self->_pView centerYAnchor];
  centerYAnchor2 = [(UIImageView *)self->_rView centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[0] = v51;
  centerYAnchor3 = [(UIImageView *)self->_rView centerYAnchor];
  centerYAnchor4 = [mainContentGuide centerYAnchor];
  v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v60[1] = v48;
  centerYAnchor5 = [(UIImageView *)self->_xView centerYAnchor];
  centerYAnchor6 = [(UIImageView *)self->_rView centerYAnchor];
  v45 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v60[2] = v45;
  leadingAnchor = [(UIImageView *)self->_rView leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_pView trailingAnchor];
  v43 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  v60[3] = v43;
  leadingAnchor2 = [(UIImageView *)self->_xView leadingAnchor];
  trailingAnchor2 = [(UIImageView *)self->_rView trailingAnchor];
  v39 = [leadingAnchor2 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v60[4] = v39;
  centerXAnchor = [(UIImageView *)self->_rView centerXAnchor];
  v42 = mainContentGuide;
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[5] = v29;
  topAnchor = [(UIImageView *)self->_rView topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v32 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v60[6] = v32;
  bottomAnchor = [mainContentGuide bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_rView bottomAnchor];
  v35 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v60[7] = v35;
  v36 = [NSArray arrayWithObjects:v60 count:8];
  [NSLayoutConstraint activateConstraints:v36];
}

- (ProxCardKitTestStartViewController)init
{
  v16.receiver = self;
  v16.super_class = ProxCardKitTestStartViewController;
  v2 = [(ProxCardKitTestStartViewController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(ProxCardKitTestStartViewController *)v2 setTitle:@"ProxCardKit Test"];
    [(ProxCardKitTestStartViewController *)v3 setDismissalType:3];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100117F98;
    v14[3] = &unk_1001952B0;
    v4 = v3;
    v15 = v4;
    v5 = [PRXAction actionWithTitle:&stru_100195CA8 style:0 handler:v14];
    [(ProxCardKitTestStartViewController *)v4 setInfoButtonAction:v5];

    infoButton = [(ProxCardKitTestStartViewController *)v4 infoButton];
    [infoButton setAlpha:0.0];

    objc_initWeak(&location, v4);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100118008;
    v11[3] = &unk_1001958D8;
    objc_copyWeak(&v12, &location);
    v7 = [PRXAction actionWithTitle:@"Next" style:3 handler:v11];
    v8 = [(ProxCardKitTestStartViewController *)v4 addAction:v7];

    v9 = v4;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end
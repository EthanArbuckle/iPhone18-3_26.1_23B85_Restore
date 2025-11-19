@interface ProxCardKitTestStartViewController
- (ProxCardKitTestStartViewController)init;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ProxCardKitTestStartViewController

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ProxCardKitTestStartViewController;
  [(ProxCardKitTestStartViewController *)&v13 viewDidAppear:a3];
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
        v26 = [(ProxCardKitTestStartViewController *)self contentView];
        [v26 addSubview:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v22);
  }

  v27 = [(ProxCardKitTestStartViewController *)self contentView];
  v28 = [v27 mainContentGuide];

  v53 = [(UIImageView *)self->_pView centerYAnchor];
  v52 = [(UIImageView *)self->_rView centerYAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v60[0] = v51;
  v50 = [(UIImageView *)self->_rView centerYAnchor];
  v49 = [v28 centerYAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v60[1] = v48;
  v47 = [(UIImageView *)self->_xView centerYAnchor];
  v46 = [(UIImageView *)self->_rView centerYAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v60[2] = v45;
  v44 = [(UIImageView *)self->_rView leadingAnchor];
  v54 = [(UIImageView *)self->_pView trailingAnchor];
  v43 = [v44 constraintEqualToSystemSpacingAfterAnchor:v54 multiplier:1.0];
  v60[3] = v43;
  v41 = [(UIImageView *)self->_xView leadingAnchor];
  v40 = [(UIImageView *)self->_rView trailingAnchor];
  v39 = [v41 constraintEqualToSystemSpacingAfterAnchor:v40 multiplier:1.0];
  v60[4] = v39;
  v38 = [(UIImageView *)self->_rView centerXAnchor];
  v42 = v28;
  v37 = [v28 centerXAnchor];
  v29 = [v38 constraintEqualToAnchor:v37];
  v60[5] = v29;
  v30 = [(UIImageView *)self->_rView topAnchor];
  v31 = [v28 topAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];
  v60[6] = v32;
  v33 = [v28 bottomAnchor];
  v34 = [(UIImageView *)self->_rView bottomAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34];
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

    v6 = [(ProxCardKitTestStartViewController *)v4 infoButton];
    [v6 setAlpha:0.0];

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
@interface VOTEnabledBannerViewController
- (void)hideAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)showAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation VOTEnabledBannerViewController

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v15 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTEnabledBannerViewController *)self setView:v15];
  v7 = [[VOTEnabledBannerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTEnabledBannerView *)v7 setAlpha:0.0];
  [v15 addSubview:v7];
  [(VOTEnabledBannerViewController *)self setBannerView:v7];
  v8 = +[NSMutableArray array];
  v9 = [(VOTEnabledBannerView *)v7 bottomAnchor];
  v10 = [v15 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-47.0];
  [v8 addObject:v11];

  v12 = [(VOTEnabledBannerView *)v7 centerXAnchor];
  v13 = [v15 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v8 addObject:v14];

  [NSLayoutConstraint activateConstraints:v8];
}

- (void)showAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(VOTEnabledBannerViewController *)self bannerView];
  v8 = [(VOTEnabledBannerViewController *)self view];
  [v8 setNeedsLayout];

  v9 = [(VOTEnabledBannerViewController *)self view];
  [v9 layoutIfNeeded];

  v10 = 0.0;
  [v7 setAlpha:0.0];
  if (v4)
  {
    v10 = 0.3;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_128F0;
  v15[3] = &unk_3D218;
  v16 = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_128FC;
  v13[3] = &unk_3D498;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [UIView animateWithDuration:4 delay:v15 options:v13 animations:v10 completion:0.0];
}

- (void)hideAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(VOTEnabledBannerViewController *)self bannerView];
  v8 = v7;
  if (v4)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_12A50;
  v14[3] = &unk_3D218;
  v15 = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_12A5C;
  v12[3] = &unk_3D498;
  v13 = v6;
  v10 = v6;
  v11 = v8;
  [UIView animateWithDuration:4 delay:v14 options:v12 animations:v9 completion:0.0];
}

@end
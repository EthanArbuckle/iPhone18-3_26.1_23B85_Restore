@interface VOTEnabledBannerViewController
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)showAnimated:(BOOL)animated completion:(id)completion;
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
  height = [[VOTEnabledBannerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTEnabledBannerView *)height setAlpha:0.0];
  [v15 addSubview:height];
  [(VOTEnabledBannerViewController *)self setBannerView:height];
  v8 = +[NSMutableArray array];
  bottomAnchor = [(VOTEnabledBannerView *)height bottomAnchor];
  bottomAnchor2 = [v15 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-47.0];
  [v8 addObject:v11];

  centerXAnchor = [(VOTEnabledBannerView *)height centerXAnchor];
  centerXAnchor2 = [v15 centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 addObject:v14];

  [NSLayoutConstraint activateConstraints:v8];
}

- (void)showAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  bannerView = [(VOTEnabledBannerViewController *)self bannerView];
  view = [(VOTEnabledBannerViewController *)self view];
  [view setNeedsLayout];

  view2 = [(VOTEnabledBannerViewController *)self view];
  [view2 layoutIfNeeded];

  v10 = 0.0;
  [bannerView setAlpha:0.0];
  if (animatedCopy)
  {
    v10 = 0.3;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_128F0;
  v15[3] = &unk_3D218;
  v16 = bannerView;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_128FC;
  v13[3] = &unk_3D498;
  v14 = completionCopy;
  v11 = completionCopy;
  v12 = bannerView;
  [UIView animateWithDuration:4 delay:v15 options:v13 animations:v10 completion:0.0];
}

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  bannerView = [(VOTEnabledBannerViewController *)self bannerView];
  v8 = bannerView;
  if (animatedCopy)
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
  v15 = bannerView;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_12A5C;
  v12[3] = &unk_3D498;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [UIView animateWithDuration:4 delay:v14 options:v12 animations:v9 completion:0.0];
}

@end
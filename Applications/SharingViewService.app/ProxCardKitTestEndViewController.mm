@interface ProxCardKitTestEndViewController
- (ProxCardKitTestEndViewController)init;
- (void)viewDidLoad;
@end

@implementation ProxCardKitTestEndViewController

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = ProxCardKitTestEndViewController;
  [(ProxCardKitTestEndViewController *)&v24 viewDidLoad];
  v3 = [UIImageView alloc];
  v4 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
  v5 = [v3 initWithImage:v4];

  v6 = +[UIColor systemGreenColor];
  [v5 setTintColor:v6];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:72.0];
  [v5 setPreferredSymbolConfiguration:v7];

  contentView = [(ProxCardKitTestEndViewController *)self contentView];
  [contentView addSubview:v5];

  contentView2 = [(ProxCardKitTestEndViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [v5 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v25[0] = v21;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v11 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v25[1] = v11;
  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [mainContentGuide centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v25[2] = v14;
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v25[3] = v17;
  v18 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (ProxCardKitTestEndViewController)init
{
  v11.receiver = self;
  v11.super_class = ProxCardKitTestEndViewController;
  v2 = [(ProxCardKitTestEndViewController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(ProxCardKitTestEndViewController *)v2 setTitle:@"ProxCardKit Test"];
    [(ProxCardKitTestEndViewController *)v3 setDismissalType:2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100119FDC;
    v9[3] = &unk_1001952B0;
    v4 = v3;
    v10 = v4;
    v5 = [PRXAction actionWithTitle:@"Done" style:0 handler:v9];
    v6 = [(ProxCardKitTestEndViewController *)v4 addAction:v5];

    v7 = v4;
  }

  return v3;
}

@end
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

  v8 = [(ProxCardKitTestEndViewController *)self contentView];
  [v8 addSubview:v5];

  v9 = [(ProxCardKitTestEndViewController *)self contentView];
  v10 = [v9 mainContentGuide];

  v23 = [v5 topAnchor];
  v22 = [v10 topAnchor];
  v21 = [v23 constraintGreaterThanOrEqualToAnchor:v22];
  v25[0] = v21;
  v20 = [v5 bottomAnchor];
  v19 = [v10 bottomAnchor];
  v11 = [v20 constraintLessThanOrEqualToAnchor:v19];
  v25[1] = v11;
  v12 = [v5 centerYAnchor];
  v13 = [v10 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v25[2] = v14;
  v15 = [v5 centerXAnchor];
  v16 = [v10 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
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
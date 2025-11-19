@interface ProxCardKitTestFeaturesViewController
- (ProxCardKitTestFeaturesViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProxCardKitTestFeaturesViewController

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = ProxCardKitTestFeaturesViewController;
  [(ProxCardKitTestFeaturesViewController *)&v34 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:72.0];
  v4 = [UIImage systemImageNamed:@"list.bullet" withConfiguration:v3];
  [(ProxCardKitTestFeaturesViewController *)self setFeatureImage:v4];

  objc_initWeak(&location, self);
  v5 = [UIImage systemImageNamed:@"lock.fill"];
  v6 = +[UIColor systemGreenColor];
  v7 = [PRXFeature featureWithTitle:@"Lorem" detailText:@"Lorem ipsum dolor sit amet icon:consectetur adipiscing elit." tintColor:v5, v6];
  v8 = [(ProxCardKitTestFeaturesViewController *)self addFeature:v7];

  v9 = [UIImage systemImageNamed:@"zzz"];
  v10 = +[UIColor systemPurpleColor];
  v11 = [PRXFeature featureWithTitle:@"Ipsum" detailText:@"Lorem ipsum dolor sit amet icon:consectetur adipiscing elit." tintColor:v9, v10];
  v12 = [(ProxCardKitTestFeaturesViewController *)self addFeature:v11];

  v13 = [PRXFeature alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001197A4;
  v31[3] = &unk_1001953A0;
  objc_copyWeak(&v32, &location);
  v14 = [v13 initWithTitle:@"Dolor" detailText:@"Lorem ipsum dolor sit amet icon:consectetur adipiscing elit." tintColor:0 valueChangedBlock:{0, v31}];
  [v14 setOn:0];
  v15 = [(ProxCardKitTestFeaturesViewController *)self addFeature:v14];
  v16 = [UIImage systemImageNamed:@"house.fill"];
  v17 = +[UIColor systemOrangeColor];
  v18 = [PRXFeature optionalFeatureWithTitle:@"Amet" detailText:@"Lorem ipsum dolor sit amet icon:consectetur adipiscing elit." tintColor:v16 valueChangedBlock:v17, &stru_1001953E0];
  v19 = [(ProxCardKitTestFeaturesViewController *)self addFeature:v18];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10011982C;
  v29[3] = &unk_1001958D8;
  objc_copyWeak(&v30, &location);
  v20 = [PRXAction actionWithTitle:@"Next" style:0 handler:v29];
  v21 = [(ProxCardKitTestFeaturesViewController *)self addAction:v20];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1001198C8;
  v27 = &unk_1001958D8;
  objc_copyWeak(&v28, &location);
  v22 = [PRXAction actionWithTitle:@"Done" style:1 handler:&v24];
  v23 = [(ProxCardKitTestFeaturesViewController *)self addAction:v22, v24, v25, v26, v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (ProxCardKitTestFeaturesViewController)initWithContentView:(id)a3
{
  v7.receiver = self;
  v7.super_class = ProxCardKitTestFeaturesViewController;
  v3 = [(ProxCardKitTestFeaturesViewController *)&v7 initWithContentView:a3];
  v4 = v3;
  if (v3)
  {
    [(ProxCardKitTestFeaturesViewController *)v3 setDismissalType:3];
    [(ProxCardKitTestFeaturesViewController *)v4 setTitle:@"ProxCardKit Test"];
    v5 = v4;
  }

  return v4;
}

@end
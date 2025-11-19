@interface RestoreFromComputerController
- (RestoreFromComputerController)init;
- (void)_setHeaderTitle:(id)a3 animated:(BOOL)a4;
- (void)_setText:(id)a3;
- (void)_updateHeaderForConnectedToComputer:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateImageViewHeight;
- (void)_updateImageViewPadding;
- (void)connection:(id)a3 updatedProgress:(id)a4;
- (void)connectionWasInterrupted:(id)a3;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RestoreFromComputerController

- (RestoreFromComputerController)init
{
  location = self;
  v15 = a2;
  v2 = objc_alloc_init(BuddyFeatureFlags);
  v3 = [v2 isSolariumEnabled];

  v14 = v3 & 1;
  v4 = location;
  v5 = +[NSBundle mainBundle];
  if (v3)
  {
    v6 = [(NSBundle *)v5 localizedStringForKey:@"CONNECT_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
    location = 0;
    v13.receiver = v4;
    v13.super_class = RestoreFromComputerController;
    location = [(RestoreFromComputerController *)&v13 initWithTitle:&stru_10032F900 detailText:v6 icon:0 contentLayout:6];
    objc_storeStrong(&location, location);
  }

  else
  {
    v7 = [(NSBundle *)v5 localizedStringForKey:@"CONNECT_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
    location = 0;
    v12.receiver = v4;
    v12.super_class = RestoreFromComputerController;
    location = [(RestoreFromComputerController *)&v12 initWithTitle:v7 detailText:&stru_10032F900 icon:0];
    objc_storeStrong(&location, location);
  }

  if (location)
  {
    v8 = objc_alloc_init(sub_100102EB0());
    v9 = *(location + 4);
    *(location + 4) = v8;

    [*(location + 4) setDelegate:location];
    [*(location + 4) registerForStatus];
  }

  v10 = location;
  objc_storeStrong(&location, 0);
  return v10;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v2 = [(RestoreFromComputerController *)self airTrafficConnection];
  [(ATConnection *)v2 unregisterForStatus];

  v3 = [(RestoreFromComputerController *)v6 airTrafficConnection];
  [(ATConnection *)v3 setDelegate:0];

  v4.receiver = v6;
  v4.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v29 viewDidLoad];
  v2 = [UIImageView alloc];
  v3 = [UIImage imageNamed:@"ConnectToComputer"];
  location = [v2 initWithImage:v3];

  [location setContentMode:1];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(RestoreFromComputerController *)v31 contentView];
  [v4 addSubview:location];

  v5 = [location topAnchor];
  v6 = [(RestoreFromComputerController *)v31 contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [(RestoreFromComputerController *)v31 setImageViewTopConstraint:v8];

  v9 = [location heightAnchor];
  v10 = [v9 constraintEqualToConstant:0.0];
  [(RestoreFromComputerController *)v31 setImageViewHeightConstraint:v10];

  v27 = [(RestoreFromComputerController *)v31 contentView];
  v26 = [v27 trailingAnchor];
  v25 = [location trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:?];
  v32[0] = v24;
  v23 = [(RestoreFromComputerController *)v31 contentView];
  v11 = [v23 bottomAnchor];
  v12 = [location bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v32[1] = v13;
  v14 = [(RestoreFromComputerController *)v31 contentView];
  v15 = [v14 leadingAnchor];
  v16 = [location leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v32[2] = v17;
  v18 = [(RestoreFromComputerController *)v31 imageViewTopConstraint];
  v32[3] = v18;
  v19 = [(RestoreFromComputerController *)v31 imageViewHeightConstraint];
  v32[4] = v19;
  v20 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v20];

  [(RestoreFromComputerController *)v31 _updateImageViewHeight];
  [(RestoreFromComputerController *)v31 _updateImageViewPadding];
  [(RestoreFromComputerController *)v31 _updateHeaderForConnectedToComputer:0 animated:0];
  v21 = [(RestoreFromComputerController *)v31 headerView];
  [v21 setAlpha:0.0];

  v22 = [(RestoreFromComputerController *)v31 contentView];
  [v22 setAlpha:0.0];

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100103644;
  v14 = &unk_10032B0D0;
  v15 = self;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100103670;
  v8 = &unk_10032B2E0;
  v9 = v18;
  [UIView animateWithDuration:&v10 animations:&v4 completion:0.5];
  v3.receiver = v18;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 viewDidAppear:v16];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v15, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001038A4;
  v8 = &unk_10032B0D0;
  v9 = self;
  [UIView animateWithDuration:&v4 animations:0.25];
  v3.receiver = v12;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 viewWillDisappear:v10];
  objc_storeStrong(&v9, 0);
}

- (void)viewDidLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v2 viewDidLayoutSubviews];
  [(RestoreFromComputerController *)v4 _updateImageViewHeight];
  [(RestoreFromComputerController *)v4 _updateImageViewPadding];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 traitCollectionDidChange:location[0]];
  [(RestoreFromComputerController *)v5 _updateImageViewPadding];
  objc_storeStrong(location, 0);
}

- (void)_updateImageViewHeight
{
  v2 = [(RestoreFromComputerController *)self navigationController];
  v3 = [v2 view];
  [v3 frame];
  v4 = CGRectGetHeight(v7) * 0.55;

  v5 = [(RestoreFromComputerController *)self imageViewHeightConstraint];
  [(NSLayoutConstraint *)v5 setConstant:v4];
}

- (void)_updateImageViewPadding
{
  v2 = [(RestoreFromComputerController *)self view];
  v3 = [(RestoreFromComputerController *)self contentView];
  [v3 frame];
  v24 = v4;
  v23 = v5;
  v26 = v6;
  v25 = v7;
  v8 = [(RestoreFromComputerController *)self scrollView];
  [v2 convertRect:v8 fromView:{v23, v24, v25, v26}];
  v27.origin.y = v9;
  v27.origin.x = v10;
  v27.size.height = v11;
  v27.size.width = v12;

  v13 = [(RestoreFromComputerController *)self imageViewHeightConstraint];
  [(NSLayoutConstraint *)v13 constant];
  v15 = v14;

  v22 = v15;
  v16 = [(RestoreFromComputerController *)self view];
  [v16 frame];
  rect = v29;
  MaxY = CGRectGetMaxY(v29);
  v18 = MaxY - CGRectGetMinY(v27) - v22;

  v19 = [(RestoreFromComputerController *)self scrollView:v18];
  [v19 setScrollEnabled:v18 < 0.0];

  v20 = [(RestoreFromComputerController *)self imageViewTopConstraint];
  if (v18 <= 0.0)
  {
    [(NSLayoutConstraint *)v20 setConstant:0.0];
  }

  else
  {
    [(NSLayoutConstraint *)v20 setConstant:v18];
  }
}

- (void)_updateHeaderForConnectedToComputer:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"CONNECTED_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"CONNECT_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
  }

  [(RestoreFromComputerController *)self _setHeaderTitle:v5 animated:a4];
}

- (void)_setHeaderTitle:(id)a3 animated:(BOOL)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v5 = [(RestoreFromComputerController *)v23 headerTitle];
  v6 = [(NSString *)v5 isEqualToString:location[0]];

  if (v6)
  {
    v20 = 1;
  }

  else
  {
    [(RestoreFromComputerController *)v23 setHeaderTitle:location[0]];
    if (v21)
    {
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_100103FE0;
      v18 = &unk_10032B0D0;
      v19 = v23;
      v7 = _NSConcreteStackBlock;
      v8 = -1073741824;
      v9 = 0;
      v10 = sub_100104034;
      v11 = &unk_10032AEF0;
      v12 = v23;
      v13 = location[0];
      [UIView animateWithDuration:&v14 animations:&v7 completion:0.5];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      [(RestoreFromComputerController *)v23 _setText:location[0]];
    }

    v20 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_setText:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(RestoreFromComputerController *)v7 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isSolariumEnabled];

  v5 = [(RestoreFromComputerController *)v7 headerView];
  if (v4)
  {
    [v5 setTitle:&stru_10032F900];

    v5 = [(RestoreFromComputerController *)v7 headerView];
    [v5 setDetailText:location[0]];
  }

  else
  {
    [v5 setTitle:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)connection:(id)a3 updatedProgress:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [v14 objectForKey:@"ConnectedLibraries"];
  v6 = [v5 count];

  v13[2] = v6;
  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001043D4;
  v12 = &unk_10032B718;
  v13[0] = v16;
  v13[1] = v6;
  dispatch_async(v7, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionWasInterrupted:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100104504;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
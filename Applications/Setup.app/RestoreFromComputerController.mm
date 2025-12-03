@interface RestoreFromComputerController
- (RestoreFromComputerController)init;
- (void)_setHeaderTitle:(id)title animated:(BOOL)animated;
- (void)_setText:(id)text;
- (void)_updateHeaderForConnectedToComputer:(BOOL)computer animated:(BOOL)animated;
- (void)_updateImageViewHeight;
- (void)_updateImageViewPadding;
- (void)connection:(id)connection updatedProgress:(id)progress;
- (void)connectionWasInterrupted:(id)interrupted;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RestoreFromComputerController

- (RestoreFromComputerController)init
{
  location = self;
  v15 = a2;
  v2 = objc_alloc_init(BuddyFeatureFlags);
  isSolariumEnabled = [v2 isSolariumEnabled];

  v14 = isSolariumEnabled & 1;
  v4 = location;
  v5 = +[NSBundle mainBundle];
  if (isSolariumEnabled)
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
  selfCopy = self;
  v5 = a2;
  airTrafficConnection = [(RestoreFromComputerController *)self airTrafficConnection];
  [(ATConnection *)airTrafficConnection unregisterForStatus];

  airTrafficConnection2 = [(RestoreFromComputerController *)selfCopy airTrafficConnection];
  [(ATConnection *)airTrafficConnection2 setDelegate:0];

  v4.receiver = selfCopy;
  v4.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v29 viewDidLoad];
  v2 = [UIImageView alloc];
  v3 = [UIImage imageNamed:@"ConnectToComputer"];
  location = [v2 initWithImage:v3];

  [location setContentMode:1];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RestoreFromComputerController *)selfCopy contentView];
  [contentView addSubview:location];

  topAnchor = [location topAnchor];
  contentView2 = [(RestoreFromComputerController *)selfCopy contentView];
  topAnchor2 = [contentView2 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(RestoreFromComputerController *)selfCopy setImageViewTopConstraint:v8];

  heightAnchor = [location heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:0.0];
  [(RestoreFromComputerController *)selfCopy setImageViewHeightConstraint:v10];

  contentView3 = [(RestoreFromComputerController *)selfCopy contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [location trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:?];
  v32[0] = v24;
  contentView4 = [(RestoreFromComputerController *)selfCopy contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [location bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[1] = v13;
  contentView5 = [(RestoreFromComputerController *)selfCopy contentView];
  leadingAnchor = [contentView5 leadingAnchor];
  leadingAnchor2 = [location leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[2] = v17;
  imageViewTopConstraint = [(RestoreFromComputerController *)selfCopy imageViewTopConstraint];
  v32[3] = imageViewTopConstraint;
  imageViewHeightConstraint = [(RestoreFromComputerController *)selfCopy imageViewHeightConstraint];
  v32[4] = imageViewHeightConstraint;
  v20 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v20];

  [(RestoreFromComputerController *)selfCopy _updateImageViewHeight];
  [(RestoreFromComputerController *)selfCopy _updateImageViewPadding];
  [(RestoreFromComputerController *)selfCopy _updateHeaderForConnectedToComputer:0 animated:0];
  headerView = [(RestoreFromComputerController *)selfCopy headerView];
  [headerView setAlpha:0.0];

  contentView6 = [(RestoreFromComputerController *)selfCopy contentView];
  [contentView6 setAlpha:0.0];

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v17 = a2;
  appearCopy = appear;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100103644;
  v14 = &unk_10032B0D0;
  selfCopy2 = self;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100103670;
  v8 = &unk_10032B2E0;
  v9 = selfCopy;
  [UIView animateWithDuration:&v10 animations:&v4 completion:0.5];
  v3.receiver = selfCopy;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 viewDidAppear:appearCopy];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&selfCopy2, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001038A4;
  v8 = &unk_10032B0D0;
  selfCopy2 = self;
  [UIView animateWithDuration:&v4 animations:0.25];
  v3.receiver = selfCopy;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 viewWillDisappear:disappearCopy];
  objc_storeStrong(&selfCopy2, 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v2 viewDidLayoutSubviews];
  [(RestoreFromComputerController *)selfCopy _updateImageViewHeight];
  [(RestoreFromComputerController *)selfCopy _updateImageViewPadding];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = RestoreFromComputerController;
  [(RestoreFromComputerController *)&v3 traitCollectionDidChange:location[0]];
  [(RestoreFromComputerController *)selfCopy _updateImageViewPadding];
  objc_storeStrong(location, 0);
}

- (void)_updateImageViewHeight
{
  navigationController = [(RestoreFromComputerController *)self navigationController];
  view = [navigationController view];
  [view frame];
  v4 = CGRectGetHeight(v7) * 0.55;

  imageViewHeightConstraint = [(RestoreFromComputerController *)self imageViewHeightConstraint];
  [(NSLayoutConstraint *)imageViewHeightConstraint setConstant:v4];
}

- (void)_updateImageViewPadding
{
  view = [(RestoreFromComputerController *)self view];
  contentView = [(RestoreFromComputerController *)self contentView];
  [contentView frame];
  v24 = v4;
  v23 = v5;
  v26 = v6;
  v25 = v7;
  scrollView = [(RestoreFromComputerController *)self scrollView];
  [view convertRect:scrollView fromView:{v23, v24, v25, v26}];
  v27.origin.y = v9;
  v27.origin.x = v10;
  v27.size.height = v11;
  v27.size.width = v12;

  imageViewHeightConstraint = [(RestoreFromComputerController *)self imageViewHeightConstraint];
  [(NSLayoutConstraint *)imageViewHeightConstraint constant];
  v15 = v14;

  v22 = v15;
  view2 = [(RestoreFromComputerController *)self view];
  [view2 frame];
  rect = v29;
  MaxY = CGRectGetMaxY(v29);
  v18 = MaxY - CGRectGetMinY(v27) - v22;

  v19 = [(RestoreFromComputerController *)self scrollView:v18];
  [v19 setScrollEnabled:v18 < 0.0];

  imageViewTopConstraint = [(RestoreFromComputerController *)self imageViewTopConstraint];
  if (v18 <= 0.0)
  {
    [(NSLayoutConstraint *)imageViewTopConstraint setConstant:0.0];
  }

  else
  {
    [(NSLayoutConstraint *)imageViewTopConstraint setConstant:v18];
  }
}

- (void)_updateHeaderForConnectedToComputer:(BOOL)computer animated:(BOOL)animated
{
  if (computer)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"CONNECTED_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"CONNECT_TO_COMPUTER" value:&stru_10032F900 table:@"Localizable"];
  }

  [(RestoreFromComputerController *)self _setHeaderTitle:v5 animated:animated];
}

- (void)_setHeaderTitle:(id)title animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  animatedCopy = animated;
  headerTitle = [(RestoreFromComputerController *)selfCopy headerTitle];
  v6 = [(NSString *)headerTitle isEqualToString:location[0]];

  if (v6)
  {
    v20 = 1;
  }

  else
  {
    [(RestoreFromComputerController *)selfCopy setHeaderTitle:location[0]];
    if (animatedCopy)
    {
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_100103FE0;
      v18 = &unk_10032B0D0;
      v19 = selfCopy;
      v7 = _NSConcreteStackBlock;
      v8 = -1073741824;
      v9 = 0;
      v10 = sub_100104034;
      v11 = &unk_10032AEF0;
      v12 = selfCopy;
      v13 = location[0];
      [UIView animateWithDuration:&v14 animations:&v7 completion:0.5];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      [(RestoreFromComputerController *)selfCopy _setText:location[0]];
    }

    v20 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_setText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  featureFlags = [(RestoreFromComputerController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  headerView = [(RestoreFromComputerController *)selfCopy headerView];
  if (isSolariumEnabled)
  {
    [headerView setTitle:&stru_10032F900];

    headerView = [(RestoreFromComputerController *)selfCopy headerView];
    [headerView setDetailText:location[0]];
  }

  else
  {
    [headerView setTitle:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)connection:(id)connection updatedProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v14 = 0;
  objc_storeStrong(&v14, progress);
  v5 = [v14 objectForKey:@"ConnectedLibraries"];
  v6 = [v5 count];

  v13[2] = v6;
  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001043D4;
  v12 = &unk_10032B718;
  v13[0] = selfCopy;
  v13[1] = v6;
  dispatch_async(v7, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionWasInterrupted:(id)interrupted
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interrupted);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100104504;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
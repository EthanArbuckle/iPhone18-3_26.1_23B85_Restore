@interface BuddyActivationOptionsController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BuddyActivationOptionsController)init;
- (id)_titleFont;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BuddyActivationOptionsController

- (BuddyActivationOptionsController)init
{
  location = self;
  v11[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OTHER_CONNECTION_OPTIONS_DETAIL_WIFI"];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v11[0] = [(NSBundle *)v2 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = location;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"OTHER_CONNECTION_OPTIONS_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v10.receiver = v5;
  v10.super_class = BuddyActivationOptionsController;
  location = [(BuddyActivationOptionsController *)&v10 initWithTitle:v7 detailText:v11[0] icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&location, location);

  v8 = location;
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyActivationOptionsController;
  [(BuddyActivationOptionsController *)&v9 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyActivationOptionsController *)selfCopy setTableView:v2];

  v3 = selfCopy;
  tableView = [(BuddyActivationOptionsController *)selfCopy tableView];
  [tableView setDelegate:v3];

  v5 = selfCopy;
  tableView2 = [(BuddyActivationOptionsController *)selfCopy tableView];
  [tableView2 setDataSource:v5];

  tableView3 = [(BuddyActivationOptionsController *)selfCopy tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView4 = [(BuddyActivationOptionsController *)selfCopy tableView];
  [tableView4 setSeparatorStyle:0];
}

- (id)_titleFont
{
  location[2] = self;
  location[1] = a2;
  location[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v2 = [location[0] fontDescriptorWithSymbolicTraits:2];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  objc_storeStrong(location, 0);

  return v3;
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyActivationOptionsController *)self activationState:a2];
  error = [(BuddyActivationState *)v2 error];
  v4 = error != 0;

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v19 = 0;
  objc_storeStrong(&v19, path);
  v18 = [location[0] dequeueReusableCellWithIdentifier:@"cell"];
  if (!v18)
  {
    v18 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"cell"];
  }

  [v18 setAccessoryType:1];
  v5 = +[UIColor secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v5];

  _titleFont = [(BuddyActivationOptionsController *)selfCopy _titleFont];
  textLabel = [v18 textLabel];
  [textLabel setFont:_titleFont];

  v8 = -[BuddyActivationOptionsController _activationMethodForSection:](selfCopy, "_activationMethodForSection:", [v19 section]);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"USE_MAC_OR_PC" value:&stru_10032F900 table:@"Localizable"];
      textLabel2 = [v18 textLabel];
      [textLabel2 setText:v10];
    }
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = SFLocalizableWAPIStringKeyForKey();
    v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"Localizable"];
    textLabel3 = [v18 textLabel];
    [textLabel3 setText:v14];
  }

  v16 = v18;
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v20 = 0;
  objc_storeStrong(&v20, path);
  [location[0] deselectRowAtIndexPath:v20 animated:1];
  v19 = -[BuddyActivationOptionsController _activationMethodForSection:](selfCopy, "_activationMethodForSection:", [v20 section]);
  if (v19)
  {
    if (v19 == 1)
    {
      v18 = +[BuddySkipWiFiAlertController alertController];
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_1001B7F28;
      v16 = &unk_10032B0D0;
      v17 = selfCopy;
      [v18 setSkipWiFi:&v12];
      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_1001B7FD4;
      v10 = &unk_10032B0D0;
      v11 = selfCopy;
      [v18 setUseWiFi:&v7];
      [(BuddyActivationOptionsController *)selfCopy presentViewController:v18 animated:1 completion:0, v7, v8, v9, v10];
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  else
  {
    miscState = [(BuddyActivationOptionsController *)selfCopy miscState];
    [(BuddyMiscState *)miscState setUserSelectedCellularActivation:0];

    delegate = [(BuddyActivationOptionsController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate presentWiFiPaneForFlowItem:selfCopy];
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
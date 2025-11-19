@interface BuddyActivationOptionsController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BuddyActivationOptionsController)init;
- (id)_titleFont;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyActivationOptionsController;
  [(BuddyActivationOptionsController *)&v9 viewDidLoad];
  v2 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyActivationOptionsController *)v11 setTableView:v2];

  v3 = v11;
  v4 = [(BuddyActivationOptionsController *)v11 tableView];
  [v4 setDelegate:v3];

  v5 = v11;
  v6 = [(BuddyActivationOptionsController *)v11 tableView];
  [v6 setDataSource:v5];

  v7 = [(BuddyActivationOptionsController *)v11 tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(BuddyActivationOptionsController *)v11 tableView];
  [v8 setSeparatorStyle:0];
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
  v3 = [(BuddyActivationState *)v2 error];
  v4 = v3 != 0;

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] dequeueReusableCellWithIdentifier:@"cell"];
  if (!v18)
  {
    v18 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"cell"];
  }

  [v18 setAccessoryType:1];
  v5 = +[UIColor secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v5];

  v6 = [(BuddyActivationOptionsController *)v21 _titleFont];
  v7 = [v18 textLabel];
  [v7 setFont:v6];

  v8 = -[BuddyActivationOptionsController _activationMethodForSection:](v21, "_activationMethodForSection:", [v19 section]);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"USE_MAC_OR_PC" value:&stru_10032F900 table:@"Localizable"];
      v11 = [v18 textLabel];
      [v11 setText:v10];
    }
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = SFLocalizableWAPIStringKeyForKey();
    v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"Localizable"];
    v15 = [v18 textLabel];
    [v15 setText:v14];
  }

  v16 = v18;
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  [location[0] deselectRowAtIndexPath:v20 animated:1];
  v19 = -[BuddyActivationOptionsController _activationMethodForSection:](v22, "_activationMethodForSection:", [v20 section]);
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
      v17 = v22;
      [v18 setSkipWiFi:&v12];
      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_1001B7FD4;
      v10 = &unk_10032B0D0;
      v11 = v22;
      [v18 setUseWiFi:&v7];
      [(BuddyActivationOptionsController *)v22 presentViewController:v18 animated:1 completion:0, v7, v8, v9, v10];
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  else
  {
    v5 = [(BuddyActivationOptionsController *)v22 miscState];
    [(BuddyMiscState *)v5 setUserSelectedCellularActivation:0];

    v6 = [(BuddyActivationOptionsController *)v22 delegate];
    [(BFFFlowItemDelegate *)v6 presentWiFiPaneForFlowItem:v22];
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
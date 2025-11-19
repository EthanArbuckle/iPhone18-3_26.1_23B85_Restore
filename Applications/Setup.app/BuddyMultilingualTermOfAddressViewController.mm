@interface BuddyMultilingualTermOfAddressViewController
+ (BOOL)controllerNeedsToRun;
- (BFFFlowItemDelegate)delegate;
- (BuddyMultilingualTermOfAddressViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_selectionSkipped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMultilingualTermOfAddressViewController

- (BuddyMultilingualTermOfAddressViewController)init
{
  v11 = self;
  v10[1] = a2;
  v2 = +[NSBundle mainBundle];
  v10[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_TERM_OF_ADDRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MULTILINGUAL_TERM_OF_ADDRESS_DETAIL_TEXT"];
  location = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyMultilingualTermOfAddressViewController;
  v11 = [(BuddyMultilingualTermOfAddressViewController *)&v8 initWithTitle:v10[0] detailText:location symbolName:@"globe" adoptTableViewScrollView:1];
  v6 = v11;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)viewDidLoad
{
  v23 = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = BuddyMultilingualTermOfAddressViewController;
  [(BuddyMultilingualTermOfAddressViewController *)&v21 viewDidLoad];
  v2 = +[_NSAttributedStringGrammarInflection presetInflections];
  [(BuddyMultilingualTermOfAddressViewController *)v23 setGenderBackingStore:v2];

  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyMultilingualTermOfAddressViewController *)v23 setTableView:v3];

  v4 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = v23;
  v6 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v6 setDelegate:v5];

  v7 = v23;
  v8 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v8 setDataSource:v7];

  v9 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v10 setEstimatedRowHeight:0.0];

  v11 = +[UIColor clearColor];
  v12 = [(BuddyMultilingualTermOfAddressViewController *)v23 tableView];
  [v12 setBackgroundColor:v11];

  v13 = +[OBLinkTrayButton linkButton];
  [(BuddyMultilingualTermOfAddressViewController *)v23 setSkipButton:v13];

  v14 = [(BuddyMultilingualTermOfAddressViewController *)v23 skipButton];
  [(OBTrayButton *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(BuddyMultilingualTermOfAddressViewController *)v23 skipButton];
  [(OBTrayButton *)v15 addTarget:v23 action:"_selectionSkipped:" forControlEvents:64];

  v16 = +[NSBundle mainBundle];
  location = [(NSBundle *)v16 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_10032F900 table:@"Localizable"];

  v17 = [(BuddyMultilingualTermOfAddressViewController *)v23 skipButton];
  [(OBTrayButton *)v17 setTitle:location forState:0];

  v18 = [(BuddyMultilingualTermOfAddressViewController *)v23 buttonTray];
  v19 = [(BuddyMultilingualTermOfAddressViewController *)v23 skipButton];
  [v18 addButton:v19];

  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyMultilingualTermOfAddressViewController;
  [(BuddyMultilingualTermOfAddressViewController *)&v3 viewWillAppear:a3];
}

- (void)_selectionSkipped:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc_init(_NSAttributedStringGrammarInflection);
  [v3 _setAsGlobalUserInflection];
  v4 = [(BuddyMultilingualTermOfAddressViewController *)v7 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v7];

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [location[0] deselectRowAtIndexPath:v8 animated:1];
  v5 = [(BuddyMultilingualTermOfAddressViewController *)v10 genderBackingStore];
  v6 = -[NSArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [v8 row]);
  [v6 _setAsGlobalUserInflection];

  v7 = [(BuddyMultilingualTermOfAddressViewController *)v10 delegate];
  [(BFFFlowItemDelegate *)v7 flowItemDone:v10];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(BuddyMultilingualTermOfAddressViewController *)v9 genderBackingStore];
  v6 = [(NSArray *)v5 count];

  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] dequeueReusableCellWithIdentifier:@"com.apple.setupassistant.ios.termofaddress"];
  v5 = [(BuddyMultilingualTermOfAddressViewController *)v21 genderBackingStore];
  v17 = -[NSArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [v19 row]);

  if (!v18)
  {
    v18 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.apple.setupassistant.ios.termofaddress"];
  }

  v6 = [v17 localizedShortDescription];
  v7 = [v18 textLabel];
  [v7 setText:v6];

  [v18 setAccessoryType:1];
  v8 = +[UIColor secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v8];

  v16 = 0;
  v9 = [v17 gender];
  if (v9)
  {
    if (v9 == 1)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_MASCULINE");
    }

    else if (v9 == 2)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_FEMININE");
    }

    else if (v9 == 3)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_NEUTER");
    }
  }

  v10 = +[NSBundle mainBundle];
  v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:v16];
  v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
  v13 = [v18 detailTextLabel];
  [v13 setText:v12];

  v14 = v18;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v14;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [_NSAttributedStringGrammarInflection canSelectUserInflection:a2];
  v3 = 0;
  if (v2)
  {
    v3 = +[DMCMultiUserModeUtilities shouldSkipLanguageAndLocaleSetupForNewUsers]^ 1;
  }

  return v3 & 1;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface BuddyMultilingualTermOfAddressViewController
+ (BOOL)controllerNeedsToRun;
- (BFFFlowItemDelegate)delegate;
- (BuddyMultilingualTermOfAddressViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_selectionSkipped:(id)skipped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyMultilingualTermOfAddressViewController

- (BuddyMultilingualTermOfAddressViewController)init
{
  selfCopy = self;
  v10[1] = a2;
  v2 = +[NSBundle mainBundle];
  v10[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_TERM_OF_ADDRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MULTILINGUAL_TERM_OF_ADDRESS_DETAIL_TEXT"];
  location = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyMultilingualTermOfAddressViewController;
  selfCopy = [(BuddyMultilingualTermOfAddressViewController *)&v8 initWithTitle:v10[0] detailText:location symbolName:@"globe" adoptTableViewScrollView:1];
  v6 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = BuddyMultilingualTermOfAddressViewController;
  [(BuddyMultilingualTermOfAddressViewController *)&v21 viewDidLoad];
  v2 = +[_NSAttributedStringGrammarInflection presetInflections];
  [(BuddyMultilingualTermOfAddressViewController *)selfCopy setGenderBackingStore:v2];

  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyMultilingualTermOfAddressViewController *)selfCopy setTableView:v3];

  tableView = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = selfCopy;
  tableView2 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView2 setDelegate:v5];

  v7 = selfCopy;
  tableView3 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView3 setDataSource:v7];

  tableView4 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView4 setRowHeight:UITableViewAutomaticDimension];

  tableView5 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView5 setEstimatedRowHeight:0.0];

  v11 = +[UIColor clearColor];
  tableView6 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy tableView];
  [tableView6 setBackgroundColor:v11];

  v13 = +[OBLinkTrayButton linkButton];
  [(BuddyMultilingualTermOfAddressViewController *)selfCopy setSkipButton:v13];

  skipButton = [(BuddyMultilingualTermOfAddressViewController *)selfCopy skipButton];
  [(OBTrayButton *)skipButton setTranslatesAutoresizingMaskIntoConstraints:0];

  skipButton2 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy skipButton];
  [(OBTrayButton *)skipButton2 addTarget:selfCopy action:"_selectionSkipped:" forControlEvents:64];

  v16 = +[NSBundle mainBundle];
  location = [(NSBundle *)v16 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_10032F900 table:@"Localizable"];

  skipButton3 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy skipButton];
  [(OBTrayButton *)skipButton3 setTitle:location forState:0];

  buttonTray = [(BuddyMultilingualTermOfAddressViewController *)selfCopy buttonTray];
  skipButton4 = [(BuddyMultilingualTermOfAddressViewController *)selfCopy skipButton];
  [buttonTray addButton:skipButton4];

  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = BuddyMultilingualTermOfAddressViewController;
  [(BuddyMultilingualTermOfAddressViewController *)&v3 viewWillAppear:appear];
}

- (void)_selectionSkipped:(id)skipped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, skipped);
  v3 = objc_alloc_init(_NSAttributedStringGrammarInflection);
  [v3 _setAsGlobalUserInflection];
  delegate = [(BuddyMultilingualTermOfAddressViewController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  [location[0] deselectRowAtIndexPath:v8 animated:1];
  genderBackingStore = [(BuddyMultilingualTermOfAddressViewController *)selfCopy genderBackingStore];
  v6 = -[NSArray objectAtIndexedSubscript:](genderBackingStore, "objectAtIndexedSubscript:", [v8 row]);
  [v6 _setAsGlobalUserInflection];

  delegate = [(BuddyMultilingualTermOfAddressViewController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  genderBackingStore = [(BuddyMultilingualTermOfAddressViewController *)selfCopy genderBackingStore];
  v6 = [(NSArray *)genderBackingStore count];

  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v19 = 0;
  objc_storeStrong(&v19, path);
  v18 = [location[0] dequeueReusableCellWithIdentifier:@"com.apple.setupassistant.ios.termofaddress"];
  genderBackingStore = [(BuddyMultilingualTermOfAddressViewController *)selfCopy genderBackingStore];
  v17 = -[NSArray objectAtIndexedSubscript:](genderBackingStore, "objectAtIndexedSubscript:", [v19 row]);

  if (!v18)
  {
    v18 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.apple.setupassistant.ios.termofaddress"];
  }

  localizedShortDescription = [v17 localizedShortDescription];
  textLabel = [v18 textLabel];
  [textLabel setText:localizedShortDescription];

  [v18 setAccessoryType:1];
  v8 = +[UIColor secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v8];

  v16 = 0;
  gender = [v17 gender];
  if (gender)
  {
    if (gender == 1)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_MASCULINE");
    }

    else if (gender == 2)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_FEMININE");
    }

    else if (gender == 3)
    {
      objc_storeStrong(&v16, @"MULTILINGUAL_TERM_OF_ADDRESS_EXEMPLAR_PHRASE_NEUTER");
    }
  }

  v10 = +[NSBundle mainBundle];
  v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:v16];
  v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
  detailTextLabel = [v18 detailTextLabel];
  [detailTextLabel setText:v12];

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
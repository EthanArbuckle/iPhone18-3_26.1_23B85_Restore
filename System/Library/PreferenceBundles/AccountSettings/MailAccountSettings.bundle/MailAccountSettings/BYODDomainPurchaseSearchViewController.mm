@interface BYODDomainPurchaseSearchViewController
+ (id)log;
- (BOOL)textFieldShouldReturn:(id)return;
- (BYODDomainPurchaseSearchViewController)initWithACAccount:(id)account isBuyNewDomainFlow:(BOOL)flow domainPurchaseProviderName:(id)name;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)getOptionsSectionIndex;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_clearResults;
- (void)_createNameInputCell;
- (void)_domainAvailableTapped:(id)tapped;
- (void)_navigateToProvider:(id)provider;
- (void)_nextButtonTapped:(id)tapped;
- (void)_optionTapped:(id)tapped;
- (void)_removeSuggestion:(id)suggestion;
- (void)_requestData:(id)data;
- (void)_showErrorAlert;
- (void)_updateNextButtonState;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)viewDidLoad;
@end

@implementation BYODDomainPurchaseSearchViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3F154;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6520 != -1)
  {
    dispatch_once(&qword_D6520, block);
  }

  v2 = qword_D6518;

  return v2;
}

- (BYODDomainPurchaseSearchViewController)initWithACAccount:(id)account isBuyNewDomainFlow:(BOOL)flow domainPurchaseProviderName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_DETAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
  nameCopy = [NSString localizedStringWithFormat:v12, nameCopy];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18.receiver = self;
  v18.super_class = BYODDomainPurchaseSearchViewController;
  v16 = [(BYODDomainPurchaseSearchViewController *)&v18 initWithTitle:v15 detailText:nameCopy icon:0 adoptTableViewScrollView:1];

  if (v16)
  {
    objc_storeStrong(&v16->_loggedInUserAccount, account);
    v16->_isBuyNewDomainFlow = flow;
    [(BYODDomainPurchaseSearchViewController *)v16 _clearResults];
    [(BYODDomainPurchaseSearchViewController *)v16 _createNameInputCell];
  }

  return v16;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = BYODDomainPurchaseSearchViewController;
  [(BYODDomainPurchaseSearchViewController *)&v22 viewDidLoad];
  isBuyNewDomainFlow = self->_isBuyNewDomainFlow;
  navigationItem = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  v5 = navigationItem;
  if (isBuyNewDomainFlow)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_notNowTapped:"];
    [v5 setLeftBarButtonItem:v6];
  }

  else
  {
    [navigationItem setHidesBackButton:0];
  }

  navigationItem2 = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  v8 = [UIBarButtonItem alloc];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:"_nextButtonTapped:"];
  [navigationItem2 setRightBarButtonItem:v11];

  v12 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODDomainPurchaseSearchViewController *)self setTableView:v12];

  tableView = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = +[UIColor clearColor];
  tableView2 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView2 setBackgroundColor:v14];

  tableView3 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchResultCellID"];

  tableView4 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchOptionCellID"];

  tableView5 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchNoteCellID"];

  tableView6 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODOverlayCellID"];

  tableView7 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView7 setDelegate:self];

  tableView8 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView8 setDataSource:self];

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
}

- (void)_createNameInputCell
{
  v3 = [[UITableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
  nameInputCell = self->_nameInputCell;
  self->_nameInputCell = v3;

  [(UITableViewCell *)self->_nameInputCell setTextFieldOffset:0.0];
  v5 = self->_nameInputCell;
  v14 = +[UIColor secondarySystemBackgroundColor];
  [(UITableViewCell *)v5 setBackgroundColor:?];

  [(UITableViewCell *)self->_nameInputCell setSelectionStyle:0];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  editableTextField = [(UITableViewCell *)self->_nameInputCell editableTextField];
  [editableTextField setFont:v15];

  heightAnchor = [(UITableViewCell *)self->_nameInputCell heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:46.0];
  [v7 setActive:1];

  contentConfiguration = [(UITableViewCell *)self->_nameInputCell contentConfiguration];
  v9 = contentConfiguration;
  if (contentConfiguration)
  {
    defaultContentConfiguration = contentConfiguration;
  }

  else
  {
    defaultContentConfiguration = [(UITableViewCell *)self->_nameInputCell defaultContentConfiguration];
  }

  v17 = defaultContentConfiguration;

  [v17 directionalLayoutMargins];
  [(UITableViewCell *)self->_nameInputCell setDirectionalLayoutMargins:?];
  editableTextField2 = [(UITableViewCell *)self->_nameInputCell editableTextField];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_INPUT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [editableTextField2 setPlaceholder:v13];

  [editableTextField2 setClearButtonMode:1];
  [editableTextField2 setReturnKeyType:6];
  [editableTextField2 setEnablesReturnKeyAutomatically:1];
  [editableTextField2 setAutocapitalizationType:0];
  [editableTextField2 setSpellCheckingType:1];
  [editableTextField2 setAutocorrectionType:1];
  [editableTextField2 _setDataOwnerForPaste:3];
  [editableTextField2 _setDataOwnerForCopy:3];
  [editableTextField2 setDelegate:self];
}

- (void)_nextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selectedDomainName = self->_selectedDomainName;
  if (!selectedDomainName)
  {
    v6 = +[BYODDomainPurchaseSearchViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Domain isn't selected", buf, 2u);
    }

    selectedDomainName = self->_selectedDomainName;
  }

  v7 = selectedDomainName;
  spinner = self->_spinner;
  if (!spinner)
  {
    v9 = [[BYODSpinner alloc] initWithViewController:self];
    v10 = self->_spinner;
    self->_spinner = v9;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  v11 = [BYODGetPurchaseURLRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v14 = [(BYODGetPurchaseURLRequest *)v11 initWithAccount:loggedInUserAccount accountStore:accountStore domain:v7];

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_3FBF0;
  v16[3] = &unk_B9520;
  objc_copyWeak(&v18, buf);
  v15 = v7;
  v17 = v15;
  [(BYODGetPurchaseURLRequest *)v14 performRequestWithCallback:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)_navigateToProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (providerCopy && ([providerCopy purchaseURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_PURCHASE_CONTINUE_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    dnsProviderName = [v5 dnsProviderName];
    v10 = [NSString stringWithFormat:v8, dnsProviderName];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"BYOD_PURCHASE_CONTINUE_ALERT_DETAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v13 = [UIAlertController alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_40378;
    v21[3] = &unk_B9388;
    v22 = v5;
    selfCopy = self;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v21];

    [v13 addAction:v16];
    [v13 addAction:v19];
    [v13 setPreferredAction:v19];
    [(BYODDomainPurchaseSearchViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v20 = +[BYODDomainPurchaseSearchViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Provider URL is null", buf, 2u);
    }

    [(BYODDomainPurchaseSearchViewController *)self _showErrorAlert];
  }
}

- (void)_domainAvailableTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [tappedCopy tag], 1);
  tableView = [(BYODDomainPurchaseSearchViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v4];

  domain = [v6 domain];
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = domain;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  tableView2 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)_optionTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [tappedCopy tag], -[BYODDomainPurchaseSearchViewController getOptionsSectionIndex](self, "getOptionsSectionIndex"));
  tableView = [(BYODDomainPurchaseSearchViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v4];

  domain = [v6 domain];
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = domain;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  tableView2 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)_updateNextButtonState
{
  selectedDomainName = self->_selectedDomainName;
  navigationItem = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:selectedDomainName != 0];
}

- (void)_requestData:(id)data
{
  dataCopy = data;
  spinner = self->_spinner;
  if (!spinner)
  {
    v6 = [[BYODSpinner alloc] initWithViewController:self];
    v7 = self->_spinner;
    self->_spinner = v6;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  self->_isSearchInProgress = 1;
  [(BYODDomainPurchaseSearchViewController *)self _clearResults];
  v8 = [BYODSearchDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v11 = [(BYODSearchDomainRequest *)v8 initWithAccount:loggedInUserAccount accountStore:accountStore domain:dataCopy];

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_408D8;
  v12[3] = &unk_B9548;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [(BYODSearchDomainRequest *)v11 performRequestWithCallback:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v7 = [(BYODGetDomainRequest *)v4 initWithAccount:loggedInUserAccount accountStore:accountStore domain:self->_selectedDomainName];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_40D9C;
  v8[3] = &unk_B9308;
  objc_copyWeak(&v9, &location);
  [(BYODGetDomainRequest *)v7 performRequestWithCallback:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  [(BYODDomainPurchaseSearchViewController *)self _requestData:text];

  return 0;
}

- (void)_removeSuggestion:(id)suggestion
{
  suggestions = self->_suggestions;
  v6 = [NSPredicate predicateWithFormat:@"name == %@", self->_selectedDomainName];
  v5 = [(NSMutableArray *)suggestions filteredArrayUsingPredicate:?];
  [(NSMutableArray *)suggestions removeObjectsInArray:v5];

  tableView = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView reloadData];
}

- (void)_clearResults
{
  self->_showResults = 0;
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = 0;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  tableView = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_showResults)
  {
    if ([(BYODDomainOptionsList *)self->_domainOptions isAvailable:view])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (self->_isSearchInProgress)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]!= section)
  {
    return 1;
  }

  suggestions = self->_suggestions;

  return [(NSMutableArray *)suggestions count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v8 = self->_nameInputCell;
    goto LABEL_15;
  }

  if ([pathCopy section] == &dword_0 + 1 && self->_isSearchInProgress)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"BYODOverlayCellID"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_IN_PROGRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(UITableViewCell *)v8 setNote:v10];

    textLabel = [(UITableViewCell *)v8 textLabel];
    heightAnchor = [textLabel heightAnchor];
    [viewCopy bounds];
    v14 = [heightAnchor constraintEqualToConstant:v13 * 0.5];
    [v14 setActive:1];
LABEL_13:

    goto LABEL_14;
  }

  if ([pathCopy section] != &dword_0 + 1 || !-[BYODDomainOptionsList isAvailable](self->_domainOptions, "isAvailable"))
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"BYODDomainSearchOptionCellID"];
    v21 = -[NSMutableArray objectAtIndexedSubscript:](self->_suggestions, "objectAtIndexedSubscript:", [pathCopy row]);
    textLabel = [v21 name];

    v22 = -[NSMutableArray objectAtIndexedSubscript:](self->_suggestions, "objectAtIndexedSubscript:", [pathCopy row]);
    heightAnchor = [v22 price];

    [(UITableViewCell *)v8 setDomain:textLabel price:heightAnchor];
    selectButton = [(UITableViewCell *)v8 selectButton];
    [selectButton addTarget:self action:"_optionTapped:" forControlEvents:64];

    selectButton2 = [(UITableViewCell *)v8 selectButton];
    [selectButton2 setTag:{objc_msgSend(pathCopy, "row")}];

    domain = [(UITableViewCell *)v8 domain];
    [(UITableViewCell *)v8 setChecked:[(BYODDomainPurchaseSearchViewController *)self _isOptionSelected:domain]];

    contentConfiguration = [(UITableViewCell *)v8 contentConfiguration];
    v27 = contentConfiguration;
    if (contentConfiguration)
    {
      defaultContentConfiguration = contentConfiguration;
    }

    else
    {
      defaultContentConfiguration = [(UITableViewCell *)v8 defaultContentConfiguration];
    }

    v14 = defaultContentConfiguration;

    [v14 directionalLayoutMargins];
    [(UITableViewCell *)v8 setDirectionalLayoutMargins:?];
    goto LABEL_13;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"BYODDomainSearchResultCellID"];
  searchedDomain = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
  name = [searchedDomain name];
  searchedDomain2 = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
  price = [searchedDomain2 price];
  [(UITableViewCell *)v8 setDomain:name price:price];

  selectButton3 = [(UITableViewCell *)v8 selectButton];
  [selectButton3 addTarget:self action:"_domainAvailableTapped:" forControlEvents:64];

  selectButton4 = [(UITableViewCell *)v8 selectButton];
  [selectButton4 setTag:{objc_msgSend(pathCopy, "row")}];

  textLabel = [(UITableViewCell *)v8 domain];
  [(UITableViewCell *)v8 setChecked:[(BYODDomainPurchaseSearchViewController *)self _isOptionSelected:textLabel]];
LABEL_14:

LABEL_15:

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]== section)
  {
    v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"BYODDomainSearchListHeaderID"];
    if (!v7)
    {
      v7 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"BYODDomainSearchListHeaderID"];
    }

    contentConfiguration = [v7 contentConfiguration];
    v9 = contentConfiguration;
    if (contentConfiguration)
    {
      defaultContentConfiguration = contentConfiguration;
    }

    else
    {
      defaultContentConfiguration = [v7 defaultContentConfiguration];
    }

    v11 = defaultContentConfiguration;

    [v11 directionalLayoutMargins];
    v13 = v12;
    v15 = v14;
    if (MUISolariumFeatureEnabled())
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_OPTIONS" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v11 setText:v17];

      [v11 setAxesPreservingSuperviewLayoutMargins:0];
      v18 = 16.0;
      v19 = 10.0;
    }

    else
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_OPTIONS" value:&stru_B9FC8 table:@"AccountPreferences"];
      uppercaseString = [v21 uppercaseString];
      [v11 setText:uppercaseString];

      v18 = 0.0;
      v19 = 20.0;
    }

    [v11 setDirectionalLayoutMargins:{v19, v18, v13, v15}];
    [v7 setContentConfiguration:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0;
  if (!section && self->_showResults)
  {
    if ([(BYODDomainOptionsList *)self->_domainOptions isAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [viewCopy dequeueReusableCellWithIdentifier:@"BYODDomainSearchNoteCellID"];
      if (!v7)
      {
        v7 = [[BYODDomainSearchNoteCellView alloc] initWithStyle:0 reuseIdentifier:@"BYODDomainSearchNoteCellID"];
      }

      if ([(BYODDomainOptionsList *)self->_domainOptions isKeywordSearch])
      {
        searchedDomain = [NSBundle bundleForClass:objc_opt_class()];
        name = [searchedDomain localizedStringForKey:@"BYOD_PURCHASE_SEARCH_KEYWORD_NOTE" value:&stru_B9FC8 table:@"AccountPreferences"];
        [(BYODDomainSearchNoteCellView *)v7 setNote:name];
      }

      else
      {
        searchedDomain = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
        name = [searchedDomain name];
        [(BYODDomainSearchNoteCellView *)v7 setNoteWithDomain:name];
      }
    }
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy sectionHeaderHeight];
  v8 = v7;
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]!= section)
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy sectionFooterHeight];
  v8 = v7;
  if (self->_showResults && [(BYODDomainOptionsList *)self->_domainOptions isAvailable])
  {
    v9 = 32.0;
    if (v8 >= 32.0 || section != 0)
    {
      v9 = v8;
    }

    if (section == 1)
    {
      v8 = 22.0;
    }

    else
    {
      v8 = v9;
    }
  }

  return v8;
}

- (int64_t)getOptionsSectionIndex
{
  if (!self->_showResults)
  {
    return -1;
  }

  if ([(BYODDomainOptionsList *)self->_domainOptions isAvailable:v2])
  {
    return 2;
  }

  return 1;
}

- (void)_showErrorAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v5 addAction:v8];
  selfCopy = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end
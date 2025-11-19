@interface BYODDomainPurchaseSearchViewController
+ (id)log;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BYODDomainPurchaseSearchViewController)initWithACAccount:(id)a3 isBuyNewDomainFlow:(BOOL)a4 domainPurchaseProviderName:(id)a5;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)getOptionsSectionIndex;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_clearResults;
- (void)_createNameInputCell;
- (void)_domainAvailableTapped:(id)a3;
- (void)_navigateToProvider:(id)a3;
- (void)_nextButtonTapped:(id)a3;
- (void)_optionTapped:(id)a3;
- (void)_removeSuggestion:(id)a3;
- (void)_requestData:(id)a3;
- (void)_showErrorAlert;
- (void)_updateNextButtonState;
- (void)safariViewControllerDidFinish:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODDomainPurchaseSearchViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3F154;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6520 != -1)
  {
    dispatch_once(&qword_D6520, block);
  }

  v2 = qword_D6518;

  return v2;
}

- (BYODDomainPurchaseSearchViewController)initWithACAccount:(id)a3 isBuyNewDomainFlow:(BOOL)a4 domainPurchaseProviderName:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_DETAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
  v13 = [NSString localizedStringWithFormat:v12, v10];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18.receiver = self;
  v18.super_class = BYODDomainPurchaseSearchViewController;
  v16 = [(BYODDomainPurchaseSearchViewController *)&v18 initWithTitle:v15 detailText:v13 icon:0 adoptTableViewScrollView:1];

  if (v16)
  {
    objc_storeStrong(&v16->_loggedInUserAccount, a3);
    v16->_isBuyNewDomainFlow = a4;
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
  v4 = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  v5 = v4;
  if (isBuyNewDomainFlow)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_notNowTapped:"];
    [v5 setLeftBarButtonItem:v6];
  }

  else
  {
    [v4 setHidesBackButton:0];
  }

  v7 = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  v8 = [UIBarButtonItem alloc];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:"_nextButtonTapped:"];
  [v7 setRightBarButtonItem:v11];

  v12 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODDomainPurchaseSearchViewController *)self setTableView:v12];

  v13 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = +[UIColor clearColor];
  v15 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v15 setBackgroundColor:v14];

  v16 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchResultCellID"];

  v17 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v17 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchOptionCellID"];

  v18 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v18 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODDomainSearchNoteCellID"];

  v19 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v19 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODOverlayCellID"];

  v20 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v20 setDelegate:self];

  v21 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v21 setDataSource:self];

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
  v6 = [(UITableViewCell *)self->_nameInputCell editableTextField];
  [v6 setFont:v15];

  v16 = [(UITableViewCell *)self->_nameInputCell heightAnchor];
  v7 = [v16 constraintEqualToConstant:46.0];
  [v7 setActive:1];

  v8 = [(UITableViewCell *)self->_nameInputCell contentConfiguration];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(UITableViewCell *)self->_nameInputCell defaultContentConfiguration];
  }

  v17 = v10;

  [v17 directionalLayoutMargins];
  [(UITableViewCell *)self->_nameInputCell setDirectionalLayoutMargins:?];
  v11 = [(UITableViewCell *)self->_nameInputCell editableTextField];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_INPUT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v11 setPlaceholder:v13];

  [v11 setClearButtonMode:1];
  [v11 setReturnKeyType:6];
  [v11 setEnablesReturnKeyAutomatically:1];
  [v11 setAutocapitalizationType:0];
  [v11 setSpellCheckingType:1];
  [v11 setAutocorrectionType:1];
  [v11 _setDataOwnerForPaste:3];
  [v11 _setDataOwnerForCopy:3];
  [v11 setDelegate:self];
}

- (void)_nextButtonTapped:(id)a3
{
  v4 = a3;
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
  v13 = [(ACAccount *)loggedInUserAccount accountStore];
  v14 = [(BYODGetPurchaseURLRequest *)v11 initWithAccount:loggedInUserAccount accountStore:v13 domain:v7];

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

- (void)_navigateToProvider:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 purchaseURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_PURCHASE_CONTINUE_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [v5 dnsProviderName];
    v10 = [NSString stringWithFormat:v8, v9];

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
    v23 = self;
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

- (void)_domainAvailableTapped:(id)a3
{
  v10 = a3;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 tag], 1);
  v5 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  v7 = [v6 domain];
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = v7;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  v9 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v9 reloadData];
}

- (void)_optionTapped:(id)a3
{
  v10 = a3;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 tag], -[BYODDomainPurchaseSearchViewController getOptionsSectionIndex](self, "getOptionsSectionIndex"));
  v5 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  v7 = [v6 domain];
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = v7;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  v9 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v9 reloadData];
}

- (void)_updateNextButtonState
{
  selectedDomainName = self->_selectedDomainName;
  v4 = [(BYODDomainPurchaseSearchViewController *)self navigationItem];
  v3 = [v4 rightBarButtonItem];
  [v3 setEnabled:selectedDomainName != 0];
}

- (void)_requestData:(id)a3
{
  v4 = a3;
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
  v10 = [(ACAccount *)loggedInUserAccount accountStore];
  v11 = [(BYODSearchDomainRequest *)v8 initWithAccount:loggedInUserAccount accountStore:v10 domain:v4];

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

- (void)safariViewControllerDidFinish:(id)a3
{
  v4 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v6 = [(ACAccount *)loggedInUserAccount accountStore];
  v7 = [(BYODGetDomainRequest *)v4 initWithAccount:loggedInUserAccount accountStore:v6 domain:self->_selectedDomainName];

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

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  [(BYODDomainPurchaseSearchViewController *)self _requestData:v4];

  return 0;
}

- (void)_removeSuggestion:(id)a3
{
  suggestions = self->_suggestions;
  v6 = [NSPredicate predicateWithFormat:@"name == %@", self->_selectedDomainName];
  v5 = [(NSMutableArray *)suggestions filteredArrayUsingPredicate:?];
  [(NSMutableArray *)suggestions removeObjectsInArray:v5];

  v7 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v7 reloadData];
}

- (void)_clearResults
{
  self->_showResults = 0;
  selectedDomainName = self->_selectedDomainName;
  self->_selectedDomainName = 0;

  [(BYODDomainPurchaseSearchViewController *)self _updateNextButtonState];
  v4 = [(BYODDomainPurchaseSearchViewController *)self tableView];
  [v4 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_showResults)
  {
    if ([(BYODDomainOptionsList *)self->_domainOptions isAvailable:a3])
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]!= a4)
  {
    return 1;
  }

  suggestions = self->_suggestions;

  return [(NSMutableArray *)suggestions count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v8 = self->_nameInputCell;
    goto LABEL_15;
  }

  if ([v7 section] == &dword_0 + 1 && self->_isSearchInProgress)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"BYODOverlayCellID"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_IN_PROGRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(UITableViewCell *)v8 setNote:v10];

    v11 = [(UITableViewCell *)v8 textLabel];
    v12 = [v11 heightAnchor];
    [v6 bounds];
    v14 = [v12 constraintEqualToConstant:v13 * 0.5];
    [v14 setActive:1];
LABEL_13:

    goto LABEL_14;
  }

  if ([v7 section] != &dword_0 + 1 || !-[BYODDomainOptionsList isAvailable](self->_domainOptions, "isAvailable"))
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"BYODDomainSearchOptionCellID"];
    v21 = -[NSMutableArray objectAtIndexedSubscript:](self->_suggestions, "objectAtIndexedSubscript:", [v7 row]);
    v11 = [v21 name];

    v22 = -[NSMutableArray objectAtIndexedSubscript:](self->_suggestions, "objectAtIndexedSubscript:", [v7 row]);
    v12 = [v22 price];

    [(UITableViewCell *)v8 setDomain:v11 price:v12];
    v23 = [(UITableViewCell *)v8 selectButton];
    [v23 addTarget:self action:"_optionTapped:" forControlEvents:64];

    v24 = [(UITableViewCell *)v8 selectButton];
    [v24 setTag:{objc_msgSend(v7, "row")}];

    v25 = [(UITableViewCell *)v8 domain];
    [(UITableViewCell *)v8 setChecked:[(BYODDomainPurchaseSearchViewController *)self _isOptionSelected:v25]];

    v26 = [(UITableViewCell *)v8 contentConfiguration];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [(UITableViewCell *)v8 defaultContentConfiguration];
    }

    v14 = v28;

    [v14 directionalLayoutMargins];
    [(UITableViewCell *)v8 setDirectionalLayoutMargins:?];
    goto LABEL_13;
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"BYODDomainSearchResultCellID"];
  v15 = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
  v16 = [v15 name];
  v17 = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
  v18 = [v17 price];
  [(UITableViewCell *)v8 setDomain:v16 price:v18];

  v19 = [(UITableViewCell *)v8 selectButton];
  [v19 addTarget:self action:"_domainAvailableTapped:" forControlEvents:64];

  v20 = [(UITableViewCell *)v8 selectButton];
  [v20 setTag:{objc_msgSend(v7, "row")}];

  v11 = [(UITableViewCell *)v8 domain];
  [(UITableViewCell *)v8 setChecked:[(BYODDomainPurchaseSearchViewController *)self _isOptionSelected:v11]];
LABEL_14:

LABEL_15:

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]== a4)
  {
    v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"BYODDomainSearchListHeaderID"];
    if (!v7)
    {
      v7 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"BYODDomainSearchListHeaderID"];
    }

    v8 = [v7 contentConfiguration];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 defaultContentConfiguration];
    }

    v11 = v10;

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
      v22 = [v21 uppercaseString];
      [v11 setText:v22];

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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (!a4 && self->_showResults)
  {
    if ([(BYODDomainOptionsList *)self->_domainOptions isAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 dequeueReusableCellWithIdentifier:@"BYODDomainSearchNoteCellID"];
      if (!v7)
      {
        v7 = [[BYODDomainSearchNoteCellView alloc] initWithStyle:0 reuseIdentifier:@"BYODDomainSearchNoteCellID"];
      }

      if ([(BYODDomainOptionsList *)self->_domainOptions isKeywordSearch])
      {
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_KEYWORD_NOTE" value:&stru_B9FC8 table:@"AccountPreferences"];
        [(BYODDomainSearchNoteCellView *)v7 setNote:v9];
      }

      else
      {
        v8 = [(BYODDomainOptionsList *)self->_domainOptions searchedDomain];
        v9 = [v8 name];
        [(BYODDomainSearchNoteCellView *)v7 setNoteWithDomain:v9];
      }
    }
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  [v6 sectionHeaderHeight];
  v8 = v7;
  if ([(BYODDomainPurchaseSearchViewController *)self getOptionsSectionIndex]!= a4)
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  [v6 sectionFooterHeight];
  v8 = v7;
  if (self->_showResults && [(BYODDomainOptionsList *)self->_domainOptions isAvailable])
  {
    v9 = 32.0;
    if (v8 >= 32.0 || a4 != 0)
    {
      v9 = v8;
    }

    if (a4 == 1)
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
  v12 = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end
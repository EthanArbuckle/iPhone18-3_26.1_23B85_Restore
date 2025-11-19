@interface ContactSearchViewController
- (ContactSearchViewController)initWithInitialContacts:(id)a3 selectionHandler:(id)a4;
- (ContactSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ContactSearchViewController)initWithShortcutEditSession:(id)a3;
- (id)modalHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelAction:(id)a3;
- (void)_contactValuesSelected:(id)a3;
- (void)_doneAction:(id)a3;
- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4;
- (void)clear;
- (void)dealloc;
- (void)fetchContacts;
- (void)loadContaineeHeaderView;
- (void)performAutocompleteSearch;
- (void)prepopulate;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateCapabilityLevelForCell:(id)a3;
- (void)updateTheme;
- (void)viewDidLoad;
@end

@implementation ContactSearchViewController

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSTimer *)self->_autocompleteDelayTimer invalidate];
  if ([v7 length])
  {
    [(ContactSearchViewController *)self clear];
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E010F0;
    v10[3] = &unk_101661BC8;
    objc_copyWeak(&v11, &location);
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:0.5];
    autocompleteDelayTimer = self->_autocompleteDelayTimer;
    self->_autocompleteDelayTimer = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ContactSearchViewController *)self prepopulate];
  }
}

- (void)performAutocompleteSearch
{
  v3 = [(UISearchBar *)self->_searchBar text];
  v4 = v3;
  if (v3 != self->_searchQuery)
  {
    v8 = v3;
    v5 = [(NSString *)v3 isEqualToString:?];
    v4 = v8;
    if ((v5 & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      searchQuery = self->_searchQuery;
      self->_searchQuery = v6;

      [(ContactSearchViewController *)self fetchContacts];
      v4 = v8;
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5.receiver = self;
  v5.super_class = ContactSearchViewController;
  [(ContaineeViewController *)&v5 scrollViewDidScroll:a3];
  v4 = [(ContactSearchViewController *)self view];
  [v4 endEditing:1];
}

- (void)updateCapabilityLevelForCell:(id)a3
{
  v3 = a3;
  v4 = +[MSPSharedTripService sharedInstance];
  v5 = [v3 contactValue];
  v16 = 0;
  v6 = [v4 capabilityTypeForContact:v5 serviceName:&v16 isActiveReceiver:0];
  v7 = v16;

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = +[UIColor systemBlueColor];
      [v3 setCapabilityColor:v14];

      [v3 setUserInteractionEnabled:1];
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"share eta contact search iMessage";
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_12;
      }

      v9 = +[UIColor systemBlueColor];
      [v3 setCapabilityColor:v9];

      [v3 setUserInteractionEnabled:1];
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"share eta contact search Maps";
    }

    v15 = [v10 localizedStringForKey:v12 value:@"localized string not found" table:0];
    [v3 setContactCapability:v15];

LABEL_11:
    goto LABEL_12;
  }

  if (v6 >= 2)
  {
    if (v6 != 2)
    {
      goto LABEL_12;
    }

    v13 = +[UIColor systemGreenColor];
    [v3 setCapabilityColor:v13];

    [v3 setUserInteractionEnabled:1];
    v11 = sub_100D12CE0();
    [v3 setContactCapability:v11];
    goto LABEL_11;
  }

  v8 = +[UIColor secondaryLabelColor];
  [v3 setCapabilityColor:v8];

  [v3 setUserInteractionEnabled:0];
LABEL_12:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  tableView = self->_tableView;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:v8];

  contactValues = self->_contactValues;
  v11 = [v6 row];

  v12 = [(NSArray *)contactValues objectAtIndexedSubscript:v11];
  v13 = [v12 contact];
  v14 = [CNContactFormatter stringFromContact:v13 style:0];
  v15 = [v9 contactNameLabel];
  [v15 setText:v14];

  v16 = [v12 labeledValue];
  v17 = [v16 label];
  v18 = [CNLabeledValue localizedStringForLabel:v17];

  if ([v18 length])
  {
    v19 = [v12 stringValue];
    v20 = [NSString stringWithFormat:@"%@ %@", v18, v19];
    [v9 setContactHandle:v20];
  }

  else
  {
    v19 = [v12 stringValue];
    [v9 setContactHandle:v19];
  }

  [v9 setContactValue:v12];
  [(ContactSearchViewController *)self updateCapabilityLevelForCell:v9];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  self->_userInteracted = 1;
  contactValues = self->_contactValues;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndexedSubscript:](contactValues, "objectAtIndexedSubscript:", [v7 row]);
  [(ContactSearchViewController *)self _contactValuesSelected:v9];
  [v8 deselectRowAtIndexPath:v7 animated:1];

  [GEOAPPortal captureUserAction:9025 target:735 value:0];
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 contactValue];
    if (v7)
    {
      v8 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v8 cancelCapabilityLevelRequestForContact:v7];
    }

    v6 = v9;
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 contactValue];
    if (v6)
    {
      v7 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      v9 = v6;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 requestCapabilityLevelsForContacts:v8];
    }
  }
}

- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(ContactSearchViewController *)self tableView];
  v7 = [v6 visibleCells];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 contactValue];
        v14 = [v13 stringValue];
        v15 = [v5 containsObject:v14];

        if (v15)
        {
          [(ContactSearchViewController *)self updateCapabilityLevelForCell:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_contactValuesSelected:(id)a3
{
  v10 = a3;
  v4 = [(ContactSearchViewController *)self modalHeaderView];
  v5 = [v4 trailingButton];
  [v5 setEnabled:1];

  shortcutEditSession = self->_shortcutEditSession;
  if (shortcutEditSession)
  {
    [(ShortcutEditSession *)shortcutEditSession addSharing:v10];
  }

  else
  {
    selectionHandler = self->_selectionHandler;
    if (selectionHandler)
    {
      v8 = objc_retainBlock(selectionHandler);
      v8[2](v8, v10);
      v9 = self->_selectionHandler;
      self->_selectionHandler = 0;
    }
  }

  [(ContaineeViewController *)self handleDismissAction:0];
}

- (void)fetchContacts
{
  v3 = self->_initialContactValues;
  v4 = sub_100021DB0(v3, &stru_101655660);
  v5 = +[MSPSharedTripService sharedInstance];
  v6 = [v5 sharingIdentity];
  v7 = [v6 aliases];

  v8 = +[AddressBookManager sharedManager];
  v9 = [v8 contactStore];

  v10 = [CNContactFetchRequest alloc];
  v11 = +[AddressBookManager sharedManager];
  v12 = [v11 properties];
  v13 = [v10 initWithKeysToFetch:v12];

  if ([(NSString *)self->_searchQuery length]>= 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v15 = [CNContact predicateForContactsMatchingName:self->_searchQuery options:v14];
  [v13 setPredicate:v15];

  [v13 setSortOrder:1];
  v25 = +[NSMutableArray array];
  v26 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100E01D10;
  v22[3] = &unk_101655688;
  v22[4] = self;
  v23 = v7;
  v24 = v4;
  v16 = v25;
  v17 = v4;
  v18 = v7;
  [v9 enumerateContactsWithFetchRequest:v13 error:&v26 usingBlock:v22];
  v19 = v26;
  v20 = [v16 copy];
  contactValues = self->_contactValues;
  self->_contactValues = v20;

  [(UITableView *)self->_tableView reloadData];
}

- (void)clear
{
  contactValues = self->_contactValues;
  self->_contactValues = 0;

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)prepopulate
{
  v3 = [(SharedTripSuggestionsDataSource *)self->_suggestionDataSource contactsForDisplay];
  contactValues = self->_contactValues;
  self->_contactValues = v3;

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_doneAction:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:41 target:735 value:0];
  [(ContaineeViewController *)self handleDismissAction:v4];
}

- (void)_cancelAction:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:4 target:735 value:0];
  [(ContaineeViewController *)self handleDismissAction:v4];
}

- (void)loadContaineeHeaderView
{
  v3 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Share ETA] Add Person" value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)v3 setTitle:v5];

  v10 = [MapsThemeButton buttonWithType:1];
  [v10 addTarget:self action:"_cancelAction:" forControlEvents:64];
  [(ModalCardHeaderView *)v3 setLeadingButton:v10];
  v6 = [MapsThemeButton buttonWithType:1];
  [v6 addTarget:self action:"_doneAction:" forControlEvents:64];
  [v6 setEnabled:0];
  [(ModalCardHeaderView *)v3 setTrailingButton:v6];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v3;
  v8 = v3;

  v9 = [(ContactSearchViewController *)self view];
  [v9 addSubview:v8];
}

- (id)modalHeaderView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_titleHeaderView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateTheme
{
  v3 = [(ContactSearchViewController *)self theme];
  v4 = [v3 searchBarPlaceHolderColor];
  v5 = [(UITextField *)self->_searchField _placeholderLabel];
  [v5 setTextColor:v4];

  v6 = [(ContactSearchViewController *)self theme];
  -[UITextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [v6 textFieldKeyboardAppearance]);

  tableView = self->_tableView;
  v9 = [(ContactSearchViewController *)self theme];
  v8 = [v9 hairlineColor];
  [(UITableView *)tableView setSeparatorColor:v8];
}

- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)a3
{
  v4 = [(UITextField *)self->_searchField text];
  v5 = [v4 length];

  if (!v5)
  {

    [(ContactSearchViewController *)self prepopulate];
  }
}

- (void)viewDidLoad
{
  v84.receiver = self;
  v84.super_class = ContactSearchViewController;
  [(ContaineeViewController *)&v84 viewDidLoad];
  [(ContactSearchViewController *)self loadContaineeHeaderView];
  v3 = [(ContactSearchViewController *)self view];
  [v3 setAccessibilityIdentifier:@"ContactSearchView"];

  v4 = objc_alloc_init(UISearchBar);
  searchBar = self->_searchBar;
  self->_searchBar = v4;

  [(UISearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(ContactSearchViewController *)self view];
  [v6 addSubview:self->_searchBar];

  [(UISearchBar *)self->_searchBar setDelegate:self];
  v7 = +[UIColor clearColor];
  [(UISearchBar *)self->_searchBar setBackgroundColor:v7];

  v8 = objc_alloc_init(UIImage);
  [(UISearchBar *)self->_searchBar setBackgroundImage:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[Share ETA] Search" value:@"localized string not found" table:0];
  [(UISearchBar *)self->_searchBar setPlaceholder:v10];

  [(UISearchBar *)self->_searchBar setTranslucent:1];
  [(UISearchBar *)self->_searchBar setOpaque:0];
  [(UISearchBar *)self->_searchBar _setBackdropStyle:2005];
  v11 = [(UISearchBar *)self->_searchBar searchTextField];
  searchField = self->_searchField;
  self->_searchField = v11;

  [(UITextField *)self->_searchField setAccessibilityIdentifier:@"ContactsSearchField"];
  v13 = [MKViewWithHairline alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v17 = [v13 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setTopHairlineHidden:1];
  [v17 setBottomHairlineHidden:0];
  v18 = [(ContactSearchViewController *)self view];
  [v18 addSubview:v17];

  v19 = +[UIScreen mainScreen];
  [v19 nativeScale];
  v21 = v20;

  v22 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setRowHeight:UITableViewAutomaticDimension];
  [v22 setEstimatedRowHeight:76.0];
  v23 = +[UIColor clearColor];
  [v22 setBackgroundColor:v23];

  [v22 setPreservesSuperviewLayoutMargins:1];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [v22 registerClass:v24 forCellReuseIdentifier:v26];

  v27 = [(ContactSearchViewController *)self view];
  [v27 addSubview:v22];

  [(ContactSearchViewController *)self setTableView:v22];
  v82 = [(UIView *)self->_titleHeaderView topAnchor];
  v83 = [(ContactSearchViewController *)self view];
  v81 = [v83 topAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v85[0] = v80;
  v78 = [(UIView *)self->_titleHeaderView leadingAnchor];
  v79 = [(ContactSearchViewController *)self view];
  v77 = [v79 leadingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v85[1] = v76;
  v74 = [(UIView *)self->_titleHeaderView trailingAnchor];
  v75 = [(ContactSearchViewController *)self view];
  v73 = [v75 trailingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v85[2] = v72;
  v71 = [(UIView *)self->_titleHeaderView bottomAnchor];
  v70 = [(UISearchBar *)self->_searchBar topAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v85[3] = v69;
  v67 = [(UISearchBar *)self->_searchBar leadingAnchor];
  v68 = [(ContactSearchViewController *)self view];
  v65 = [v68 leadingAnchor];
  v64 = [v67 constraintEqualToAnchor:v65 constant:4.0];
  v85[4] = v64;
  v62 = [(UISearchBar *)self->_searchBar trailingAnchor];
  v63 = [(ContactSearchViewController *)self view];
  v61 = [v63 trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:-4.0];
  v85[5] = v60;
  v58 = [(UISearchBar *)self->_searchBar bottomAnchor];
  v57 = [v17 topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:-12.0];
  v85[6] = v56;
  v55 = [v17 heightAnchor];
  v54 = [v55 constraintEqualToConstant:1.0 / v21];
  v85[7] = v54;
  v52 = [v17 leadingAnchor];
  v53 = [(ContactSearchViewController *)self view];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v85[8] = v50;
  v66 = v17;
  v48 = [v17 trailingAnchor];
  v49 = [(ContactSearchViewController *)self view];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v85[9] = v46;
  v45 = [v22 topAnchor];
  v44 = [v17 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v85[10] = v43;
  v41 = [v22 leadingAnchor];
  v42 = [(ContactSearchViewController *)self view];
  v40 = [v42 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v85[11] = v39;
  v28 = v22;
  v59 = v22;
  v29 = [v22 trailingAnchor];
  v30 = [(ContactSearchViewController *)self view];
  v31 = [v30 trailingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v85[12] = v32;
  v33 = [v28 bottomAnchor];
  v34 = [(ContactSearchViewController *)self view];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v85[13] = v36;
  v37 = [NSArray arrayWithObjects:v85 count:14];
  [NSLayoutConstraint activateConstraints:v37];

  v38 = [(ContactSearchViewController *)self view];
  [v38 layoutIfNeeded];

  [(ContactSearchViewController *)self prepopulate];
  +[KeyboardAvoidingView startObservingKeyboard];
  [(ContactSearchViewController *)self updateTheme];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
}

- (void)dealloc
{
  if (!self->_userInteracted)
  {
    [(SharedTripSuggestionsDataSource *)self->_suggestionDataSource abandon];
  }

  v3 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ContactSearchViewController;
  [(ContactSearchViewController *)&v4 dealloc];
}

- (ContactSearchViewController)initWithInitialContacts:(id)a3 selectionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ContactSearchViewController;
  v9 = [(ContactSearchViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_initialContactValues, a3);
    v11 = [v8 copy];
    selectionHandler = v10->_selectionHandler;
    v10->_selectionHandler = v11;
  }

  return v10;
}

- (ContactSearchViewController)initWithShortcutEditSession:(id)a3
{
  v5 = a3;
  v6 = [(ContactSearchViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutEditSession, a3);
    v8 = [(ShortcutEditSession *)v7->_shortcutEditSession contacts];
    initialContactValues = v7->_initialContactValues;
    v7->_initialContactValues = v8;
  }

  return v7;
}

- (ContactSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v18.receiver = self;
  v18.super_class = ContactSearchViewController;
  v4 = [(ContactSearchViewController *)&v18 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ContaineeViewController *)v4 cardPresentationController];
    [v6 setPresentedModally:1];

    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    [v7 setTakesAvailableHeight:1];

    v8 = +[NSMutableDictionary dictionary];
    destinationsToContactValues = v5->_destinationsToContactValues;
    v5->_destinationsToContactValues = v8;

    v10 = +[AddressBookManager sharedManager];
    v11 = [v10 meCard];
    v12 = [v11 identifier];
    meCardIdentifier = v5->_meCardIdentifier;
    v5->_meCardIdentifier = v12;

    v14 = [[SharedTripSuggestionsDataSource alloc] initWithSoftCellCap:GEOConfigGetUInteger() includeActiveContacts:0];
    suggestionDataSource = v5->_suggestionDataSource;
    v5->_suggestionDataSource = v14;

    [(SharedTripSuggestionsDataSource *)v5->_suggestionDataSource setDelegate:v5];
    v5->_userInteracted = 0;
    v16 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v16 registerObserver:v5];
  }

  return v5;
}

@end
@interface ContactSearchViewController
- (ContactSearchViewController)initWithInitialContacts:(id)contacts selectionHandler:(id)handler;
- (ContactSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ContactSearchViewController)initWithShortcutEditSession:(id)session;
- (id)modalHeaderView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelAction:(id)action;
- (void)_contactValuesSelected:(id)selected;
- (void)_doneAction:(id)action;
- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles;
- (void)clear;
- (void)dealloc;
- (void)fetchContacts;
- (void)loadContaineeHeaderView;
- (void)performAutocompleteSearch;
- (void)prepopulate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateCapabilityLevelForCell:(id)cell;
- (void)updateTheme;
- (void)viewDidLoad;
@end

@implementation ContactSearchViewController

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  [(NSTimer *)self->_autocompleteDelayTimer invalidate];
  if ([changeCopy length])
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
  text = [(UISearchBar *)self->_searchBar text];
  v4 = text;
  if (text != self->_searchQuery)
  {
    v8 = text;
    v5 = [(NSString *)text isEqualToString:?];
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

- (void)scrollViewDidScroll:(id)scroll
{
  v5.receiver = self;
  v5.super_class = ContactSearchViewController;
  [(ContaineeViewController *)&v5 scrollViewDidScroll:scroll];
  view = [(ContactSearchViewController *)self view];
  [view endEditing:1];
}

- (void)updateCapabilityLevelForCell:(id)cell
{
  cellCopy = cell;
  v4 = +[MSPSharedTripService sharedInstance];
  contactValue = [cellCopy contactValue];
  v16 = 0;
  v6 = [v4 capabilityTypeForContact:contactValue serviceName:&v16 isActiveReceiver:0];
  v7 = v16;

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = +[UIColor systemBlueColor];
      [cellCopy setCapabilityColor:v14];

      [cellCopy setUserInteractionEnabled:1];
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
      [cellCopy setCapabilityColor:v9];

      [cellCopy setUserInteractionEnabled:1];
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"share eta contact search Maps";
    }

    v15 = [v10 localizedStringForKey:v12 value:@"localized string not found" table:0];
    [cellCopy setContactCapability:v15];

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
    [cellCopy setCapabilityColor:v13];

    [cellCopy setUserInteractionEnabled:1];
    v11 = sub_100D12CE0();
    [cellCopy setContactCapability:v11];
    goto LABEL_11;
  }

  v8 = +[UIColor secondaryLabelColor];
  [cellCopy setCapabilityColor:v8];

  [cellCopy setUserInteractionEnabled:0];
LABEL_12:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  tableView = self->_tableView;
  pathCopy = path;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:v8];

  contactValues = self->_contactValues;
  v11 = [pathCopy row];

  v12 = [(NSArray *)contactValues objectAtIndexedSubscript:v11];
  contact = [v12 contact];
  v14 = [CNContactFormatter stringFromContact:contact style:0];
  contactNameLabel = [v9 contactNameLabel];
  [contactNameLabel setText:v14];

  labeledValue = [v12 labeledValue];
  label = [labeledValue label];
  v18 = [CNLabeledValue localizedStringForLabel:label];

  if ([v18 length])
  {
    stringValue = [v12 stringValue];
    v20 = [NSString stringWithFormat:@"%@ %@", v18, stringValue];
    [v9 setContactHandle:v20];
  }

  else
  {
    stringValue = [v12 stringValue];
    [v9 setContactHandle:stringValue];
  }

  [v9 setContactValue:v12];
  [(ContactSearchViewController *)self updateCapabilityLevelForCell:v9];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  self->_userInteracted = 1;
  contactValues = self->_contactValues;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](contactValues, "objectAtIndexedSubscript:", [pathCopy row]);
  [(ContactSearchViewController *)self _contactValuesSelected:v9];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  [GEOAPPortal captureUserAction:9025 target:735 value:0];
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = cellCopy;
  if (isKindOfClass)
  {
    contactValue = [cellCopy contactValue];
    if (contactValue)
    {
      v8 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v8 cancelCapabilityLevelRequestForContact:contactValue];
    }

    v6 = cellCopy;
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactValue = [cellCopy contactValue];
    if (contactValue)
    {
      v7 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      v9 = contactValue;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 requestCapabilityLevelsForContacts:v8];
    }
  }
}

- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles
{
  handlesCopy = handles;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(ContactSearchViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v8 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        contactValue = [v12 contactValue];
        stringValue = [contactValue stringValue];
        v15 = [handlesCopy containsObject:stringValue];

        if (v15)
        {
          [(ContactSearchViewController *)self updateCapabilityLevelForCell:v12];
        }
      }

      v9 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_contactValuesSelected:(id)selected
{
  selectedCopy = selected;
  modalHeaderView = [(ContactSearchViewController *)self modalHeaderView];
  trailingButton = [modalHeaderView trailingButton];
  [trailingButton setEnabled:1];

  shortcutEditSession = self->_shortcutEditSession;
  if (shortcutEditSession)
  {
    [(ShortcutEditSession *)shortcutEditSession addSharing:selectedCopy];
  }

  else
  {
    selectionHandler = self->_selectionHandler;
    if (selectionHandler)
    {
      v8 = objc_retainBlock(selectionHandler);
      v8[2](v8, selectedCopy);
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
  sharingIdentity = [v5 sharingIdentity];
  aliases = [sharingIdentity aliases];

  v8 = +[AddressBookManager sharedManager];
  contactStore = [v8 contactStore];

  v10 = [CNContactFetchRequest alloc];
  v11 = +[AddressBookManager sharedManager];
  properties = [v11 properties];
  v13 = [v10 initWithKeysToFetch:properties];

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
  v23 = aliases;
  v24 = v4;
  v16 = v25;
  v17 = v4;
  v18 = aliases;
  [contactStore enumerateContactsWithFetchRequest:v13 error:&v26 usingBlock:v22];
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
  contactsForDisplay = [(SharedTripSuggestionsDataSource *)self->_suggestionDataSource contactsForDisplay];
  contactValues = self->_contactValues;
  self->_contactValues = contactsForDisplay;

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_doneAction:(id)action
{
  actionCopy = action;
  [GEOAPPortal captureUserAction:41 target:735 value:0];
  [(ContaineeViewController *)self handleDismissAction:actionCopy];
}

- (void)_cancelAction:(id)action
{
  actionCopy = action;
  [GEOAPPortal captureUserAction:4 target:735 value:0];
  [(ContaineeViewController *)self handleDismissAction:actionCopy];
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

  view = [(ContactSearchViewController *)self view];
  [view addSubview:v8];
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
  theme = [(ContactSearchViewController *)self theme];
  searchBarPlaceHolderColor = [theme searchBarPlaceHolderColor];
  _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setTextColor:searchBarPlaceHolderColor];

  theme2 = [(ContactSearchViewController *)self theme];
  -[UITextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [theme2 textFieldKeyboardAppearance]);

  tableView = self->_tableView;
  theme3 = [(ContactSearchViewController *)self theme];
  hairlineColor = [theme3 hairlineColor];
  [(UITableView *)tableView setSeparatorColor:hairlineColor];
}

- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display
{
  text = [(UITextField *)self->_searchField text];
  v5 = [text length];

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
  view = [(ContactSearchViewController *)self view];
  [view setAccessibilityIdentifier:@"ContactSearchView"];

  v4 = objc_alloc_init(UISearchBar);
  searchBar = self->_searchBar;
  self->_searchBar = v4;

  [(UISearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(ContactSearchViewController *)self view];
  [view2 addSubview:self->_searchBar];

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
  searchTextField = [(UISearchBar *)self->_searchBar searchTextField];
  searchField = self->_searchField;
  self->_searchField = searchTextField;

  [(UITextField *)self->_searchField setAccessibilityIdentifier:@"ContactsSearchField"];
  v13 = [MKViewWithHairline alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v17 = [v13 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setTopHairlineHidden:1];
  [v17 setBottomHairlineHidden:0];
  view3 = [(ContactSearchViewController *)self view];
  [view3 addSubview:v17];

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

  view4 = [(ContactSearchViewController *)self view];
  [view4 addSubview:v22];

  [(ContactSearchViewController *)self setTableView:v22];
  topAnchor = [(UIView *)self->_titleHeaderView topAnchor];
  view5 = [(ContactSearchViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v80 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v85[0] = v80;
  leadingAnchor = [(UIView *)self->_titleHeaderView leadingAnchor];
  view6 = [(ContactSearchViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v85[1] = v76;
  trailingAnchor = [(UIView *)self->_titleHeaderView trailingAnchor];
  view7 = [(ContactSearchViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v85[2] = v72;
  bottomAnchor = [(UIView *)self->_titleHeaderView bottomAnchor];
  topAnchor3 = [(UISearchBar *)self->_searchBar topAnchor];
  v69 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v85[3] = v69;
  leadingAnchor3 = [(UISearchBar *)self->_searchBar leadingAnchor];
  view8 = [(ContactSearchViewController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
  v85[4] = v64;
  trailingAnchor3 = [(UISearchBar *)self->_searchBar trailingAnchor];
  view9 = [(ContactSearchViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-4.0];
  v85[5] = v60;
  bottomAnchor2 = [(UISearchBar *)self->_searchBar bottomAnchor];
  topAnchor4 = [v17 topAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-12.0];
  v85[6] = v56;
  heightAnchor = [v17 heightAnchor];
  v54 = [heightAnchor constraintEqualToConstant:1.0 / v21];
  v85[7] = v54;
  leadingAnchor5 = [v17 leadingAnchor];
  view10 = [(ContactSearchViewController *)self view];
  leadingAnchor6 = [view10 leadingAnchor];
  v50 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v85[8] = v50;
  v66 = v17;
  trailingAnchor5 = [v17 trailingAnchor];
  view11 = [(ContactSearchViewController *)self view];
  trailingAnchor6 = [view11 trailingAnchor];
  v46 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v85[9] = v46;
  topAnchor5 = [v22 topAnchor];
  bottomAnchor3 = [v17 bottomAnchor];
  v43 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v85[10] = v43;
  leadingAnchor7 = [v22 leadingAnchor];
  view12 = [(ContactSearchViewController *)self view];
  leadingAnchor8 = [view12 leadingAnchor];
  v39 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v85[11] = v39;
  v28 = v22;
  v59 = v22;
  trailingAnchor7 = [v22 trailingAnchor];
  view13 = [(ContactSearchViewController *)self view];
  trailingAnchor8 = [view13 trailingAnchor];
  v32 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v85[12] = v32;
  bottomAnchor4 = [v28 bottomAnchor];
  view14 = [(ContactSearchViewController *)self view];
  bottomAnchor5 = [view14 bottomAnchor];
  v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v85[13] = v36;
  v37 = [NSArray arrayWithObjects:v85 count:14];
  [NSLayoutConstraint activateConstraints:v37];

  view15 = [(ContactSearchViewController *)self view];
  [view15 layoutIfNeeded];

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

- (ContactSearchViewController)initWithInitialContacts:(id)contacts selectionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ContactSearchViewController;
  v9 = [(ContactSearchViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_initialContactValues, contacts);
    v11 = [handlerCopy copy];
    selectionHandler = v10->_selectionHandler;
    v10->_selectionHandler = v11;
  }

  return v10;
}

- (ContactSearchViewController)initWithShortcutEditSession:(id)session
{
  sessionCopy = session;
  v6 = [(ContactSearchViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutEditSession, session);
    contacts = [(ShortcutEditSession *)v7->_shortcutEditSession contacts];
    initialContactValues = v7->_initialContactValues;
    v7->_initialContactValues = contacts;
  }

  return v7;
}

- (ContactSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = ContactSearchViewController;
  v4 = [(ContactSearchViewController *)&v18 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v8 = +[NSMutableDictionary dictionary];
    destinationsToContactValues = v5->_destinationsToContactValues;
    v5->_destinationsToContactValues = v8;

    v10 = +[AddressBookManager sharedManager];
    meCard = [v10 meCard];
    identifier = [meCard identifier];
    meCardIdentifier = v5->_meCardIdentifier;
    v5->_meCardIdentifier = identifier;

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
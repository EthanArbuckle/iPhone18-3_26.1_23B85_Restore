@interface EKLocationEditItemViewController
+ (id)_boldTitleFont;
+ (id)_sectionNameForSection:(unint64_t)section;
- (BOOL)conferenceViewModelRemoved;
- (BOOL)locationViewModelRemoved;
- (BOOL)searchIsFirstResponder;
- (BOOL)shouldIncludeConferenceRoom:(id)room;
- (BOOL)showAvailableConferenceTypesAsRows;
- (BOOL)showingCurrentLocationRow;
- (BOOL)showingTextRow;
- (CGSize)preferredContentSize;
- (EKLocationEditItemViewController)initWithFrame:(CGRect)frame calendarItem:(id)item eventStore:(id)store;
- (id)_cellForConferenceRoom:(id)room atIndexPath:(id)path;
- (id)_focusedTextField;
- (id)_rowNameForIndexPath:(id)path;
- (id)conferenceRoomForRecent:(id)recent;
- (id)contactsImage;
- (id)itemAtIndexPath:(id)path;
- (id)locationArrowImage;
- (id)searchText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)title;
- (int64_t)_accessoryTypeForSection:(unint64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setupViewsAndConstraints;
- (void)kickoffSearchTextChangedIfNonEmpty;
- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error;
- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types;
- (void)pendingVideoConferenceUpdated:(id)updated;
- (void)searchBecomeFirstResponder;
- (void)searchDoneTapped;
- (void)searchResignFirstResponder;
- (void)searchTextChanged:(id)changed allowClearingCheckedVirtualConference:(BOOL)conference;
- (void)selectedRoomType:(id)type;
- (void)selectedTextFieldChanged:(id)changed;
- (void)setSearchText:(id)text;
- (void)setSelectedConferenceRoom:(id)room;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)useAsString:(id)string;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EKLocationEditItemViewController

- (EKLocationEditItemViewController)initWithFrame:(CGRect)frame calendarItem:(id)item eventStore:(id)store
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemCopy = item;
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = EKLocationEditItemViewController;
  height = [(EKEditItemViewController *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v15 = [[EKUILocationSearchModel alloc] initWithEventStore:storeCopy];
    searchModel = height->_searchModel;
    height->_searchModel = v15;

    [(EKUILocationSearchModel *)height->_searchModel setDelegate:height];
    objc_storeStrong(&height->_calendarItem, item);
    height->_autoFillSelectedTextField = 1;
    height->_supportedSearchTypes = 2047;
    height->_shouldShowCheckedVirtualConference = 1;
    calendar = [(EKCalendarItem *)height->_calendarItem calendar];
    source = [calendar source];
    constraints = [source constraints];
    height->_supportsStructuredLocations = [constraints supportsStructuredLocations];

    [(EKLocationEditItemViewController *)height setDefinesPresentationContext:1];
  }

  return height;
}

- (id)title
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Location" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = EKLocationEditItemViewController;
  [(EKEditItemViewController *)&v32 viewDidLoad];
  [(EKLocationEditItemViewController *)self _setupViewsAndConstraints];
  if (self->_supportsStructuredLocations)
  {
    supportedSearchTypes = self->_supportedSearchTypes;
    if (supportedSearchTypes)
    {
      [(EKUILocationSearchModel *)self->_searchModel getCurrentLocation];
      supportedSearchTypes = self->_supportedSearchTypes;
    }

    if ((supportedSearchTypes & 0x10) != 0)
    {
      [(EKUILocationSearchModel *)self->_searchModel updateRecents:0];
    }
  }

  if ((self->_supportedSearchTypes & 0x200) != 0)
  {
    [(EKUILocationSearchModel *)self->_searchModel updateVirtualConferenceRoomOptions:0];
  }

  _singleSearchBar = [(EKLocationEditItemViewController *)self _singleSearchBar];
  locationViewModel = [(EKLocationEditItemViewController *)self locationViewModel];
  location = [locationViewModel location];

  if (!_singleSearchBar)
  {
    conferenceViewModel = [(EKLocationEditItemViewController *)self conferenceViewModel];
    conference = [conferenceViewModel conference];

    conferenceTextFieldSelected = [(EKLocationEditItemViewController *)self autoFillSelectedTextField]|| [(EKLocationEditItemViewController *)self conferenceTextFieldSelected];
    if ([(EKLocationEditItemViewController *)self autoFillSelectedTextField])
    {
      v15 = 1;
      if (!conferenceTextFieldSelected)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = ![(EKLocationEditItemViewController *)self conferenceTextFieldSelected];
      if (!conferenceTextFieldSelected)
      {
        goto LABEL_26;
      }
    }

    address = [location address];

    if (address)
    {
      v17 = MEMORY[0x1E6992FD8];
      title = [location title];
      address2 = [location address];
      title3 = [v17 fullDisplayStringWithTitle:title address:address2];

      locationTextField2 = [title3 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      locationTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
      [locationTextField setText:locationTextField2];
    }

    else
    {
      title2 = [location title];

      if (!title2)
      {
        goto LABEL_26;
      }

      title3 = [location title];
      locationTextField2 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
      [locationTextField2 setText:title3];
    }

LABEL_26:
    if (!v15)
    {
      goto LABEL_32;
    }

    if (conference)
    {
      v25 = MEMORY[0x1E69933C0];
      joinMethods = [conference joinMethods];
      firstObject = [joinMethods firstObject];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __47__EKLocationEditItemViewController_viewDidLoad__block_invoke;
      v31[3] = &unk_1E843EEB0;
      v31[4] = self;
      [v25 displayDetailsForJoinMethod:firstObject completionHandler:v31];

      return;
    }

    conferenceViewModel2 = [(EKLocationEditItemViewController *)self conferenceViewModel];

    if (!conferenceViewModel2)
    {
      goto LABEL_32;
    }

    v12 = EventKitUIBundle();
    v29 = [v12 localizedStringForKey:@"Pending Video Call" value:&stru_1F4EF6790 table:0];
    virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    [virtualConferenceTextField setText:v29];

    goto LABEL_31;
  }

  if (self->_autoFillSelectedTextField)
  {
    address3 = [location address];

    if (address3)
    {
      v8 = MEMORY[0x1E6992FD8];
      title4 = [location title];
      address4 = [location address];
      conference = [v8 fullDisplayStringWithTitle:title4 address:address4];

      v12 = [conference _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      [(EKLocationEditItemViewController *)self setSearchText:v12];
LABEL_31:

      goto LABEL_32;
    }

    title5 = [location title];

    if (title5)
    {
      conference = [location title];
      [(EKLocationEditItemViewController *)self setSearchText:conference];
LABEL_32:
    }
  }

  [(EKLocationEditItemViewController *)self kickoffSearchTextChangedIfNonEmpty];
}

void __47__EKLocationEditItemViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__EKLocationEditItemViewController_viewDidLoad__block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __47__EKLocationEditItemViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 1096) virtualConferenceTextField];
  [v3 setText:v2];

  v4 = *(a1 + 32);

  return [v4 kickoffSearchTextChangedIfNonEmpty];
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EKLocationEditItemViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5.receiver = self;
  v5.super_class = EKLocationEditItemViewController;
  [(EKLocationEditItemViewController *)&v5 viewDidAppear:appearCopy];
}

void __50__EKLocationEditItemViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1162] != 1 || v2[1163] == 1)
  {
    [v2 searchBecomeFirstResponder];
    v2 = *(a1 + 32);
  }

  v2[1162] = 0;
  *(*(a1 + 32) + 1163) = 0;
  v3 = *(*(a1 + 32) + 1072);
  v4 = [v3 indexPathsForVisibleRows];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:5];

  v5 = [*(a1 + 32) viewDidAppearBlock];

  if (v5)
  {
    v7 = [*(a1 + 32) viewDidAppearBlock];
    v6 = [*(a1 + 32) _focusedTextField];
    v7[2](v7, v6);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = EKLocationEditItemViewController;
  [(EKLocationEditItemViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v9);
  self->_rotating = !IsIdentity;
  if (!IsIdentity)
  {
    self->_wasFirstResponder = [(EKLocationEditItemViewController *)self searchIsFirstResponder];
  }
}

- (void)_setupViewsAndConstraints
{
  v92[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v6 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  view = [(EKLocationEditItemViewController *)self view];
  [view addSubview:self->_tableView];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__EKLocationEditItemViewController__setupViewsAndConstraints__block_invoke;
  aBlock[3] = &unk_1E8441600;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_class();
  v8[2](v8, v9);
  v10 = objc_opt_class();
  v8[2](v8, v10);
  v11 = objc_opt_class();
  v8[2](v8, v11);
  v12 = objc_opt_class();
  v89 = v8;
  v8[2](v8, v12);
  if ([(EKLocationEditItemViewController *)self _singleSearchBar])
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    [v13 setObscuresBackgroundDuringPresentation:0];
    [v13 setHidesNavigationBarDuringPresentation:0];
    [v13 setAutomaticallyShowsCancelButton:0];
    navigationItem = [(EKLocationEditItemViewController *)self navigationItem];
    [navigationItem setPreferredSearchBarPlacement:2];

    navigationItem2 = [(EKLocationEditItemViewController *)self navigationItem];
    v87 = v13;
    [navigationItem2 setSearchController:v13];

    navigationItem3 = [(EKLocationEditItemViewController *)self navigationItem];
    [navigationItem3 setHidesSearchBarWhenScrolling:0];

    searchBar = [v13 searchBar];
    searchBar = self->_searchBar;
    self->_searchBar = searchBar;

    [(UISearchBar *)self->_searchBar setAutocorrectionType:0];
    [(UISearchBar *)self->_searchBar setDelegate:self];
    supportedSearchTypes = self->_supportedSearchTypes;
    v20 = EventKitUIBundle();
    v21 = v20;
    if ((supportedSearchTypes & 0x600) != 0)
    {
      v22 = @"Enter Location or Video Call";
    }

    else
    {
      v22 = @"Enter Location";
    }

    v86 = [v20 localizedStringForKey:v22 value:&stru_1F4EF6790 table:0];

    [(UISearchBar *)self->_searchBar setPlaceholder:v86];
    [(UISearchBar *)self->_searchBar setReturnKeyType:9];
    [(UISearchBar *)self->_searchBar setEnablesReturnKeyAutomatically:1];
    [(UISearchBar *)self->_searchBar setTextContentType:*MEMORY[0x1E69DE4C0]];
    [(UISearchBar *)self->_searchBar setSearchBarStyle:2];
    searchField = [(UISearchBar *)self->_searchBar searchField];
    [searchField setAccessibilityIdentifier:@"location-video-call-search-field"];

    v71 = MEMORY[0x1E696ACD8];
    topAnchor = [(UITableView *)self->_tableView topAnchor];
    view2 = [(EKLocationEditItemViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v78 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v92[0] = v78;
    bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
    view3 = [(EKLocationEditItemViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v92[1] = v24;
    leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
    view4 = [(EKLocationEditItemViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v92[2] = v28;
    trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
    view5 = [(EKLocationEditItemViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v92[3] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:4];
    [v71 activateConstraints:v33];

    v34 = v87;
  }

  else
  {
    v35 = objc_alloc_init(EKLocationVirtualConferenceSearchFieldsView);
    searchFieldsView = self->_searchFieldsView;
    self->_searchFieldsView = v35;

    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setDelegate:self];
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView preferredHeight];
    v88 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 0.0, v37 + 15.0}];
    v38 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v88];
    palette = self->_palette;
    self->_palette = v38;

    [(_UINavigationBarPalette *)self->_palette addSubview:self->_searchFieldsView];
    v65 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView topAnchor];
    safeAreaLayoutGuide = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide topAnchor];
    v79 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v91[0] = v79;
    leadingAnchor3 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView leadingAnchor];
    safeAreaLayoutGuide2 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
    v70 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
    v91[1] = v70;
    safeAreaLayoutGuide3 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    trailingAnchor3 = [safeAreaLayoutGuide3 trailingAnchor];
    trailingAnchor4 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView trailingAnchor];
    v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:20.0];
    v91[2] = v66;
    safeAreaLayoutGuide4 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide4 bottomAnchor];
    bottomAnchor4 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView bottomAnchor];
    v61 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:15.0];
    v91[3] = v61;
    topAnchor5 = [(UITableView *)self->_tableView topAnchor];
    view6 = [(EKLocationEditItemViewController *)self view];
    topAnchor6 = [view6 topAnchor];
    v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v91[4] = v57;
    bottomAnchor5 = [(UITableView *)self->_tableView bottomAnchor];
    view7 = [(EKLocationEditItemViewController *)self view];
    bottomAnchor6 = [view7 bottomAnchor];
    v53 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v91[5] = v53;
    leadingAnchor5 = [(UITableView *)self->_tableView leadingAnchor];
    view8 = [(EKLocationEditItemViewController *)self view];
    leadingAnchor6 = [view8 leadingAnchor];
    v43 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v91[6] = v43;
    trailingAnchor5 = [(UITableView *)self->_tableView trailingAnchor];
    view9 = [(EKLocationEditItemViewController *)self view];
    trailingAnchor6 = [view9 trailingAnchor];
    v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v91[7] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [v65 activateConstraints:v48];

    v49 = self->_palette;
    navigationItem4 = [(EKLocationEditItemViewController *)self navigationItem];
    [navigationItem4 _setBottomPalette:v49];

    if ([(EKLocationEditItemViewController *)self conferenceTextFieldSelected]&& ![(EKLocationEditItemViewController *)self disableConferenceTextField])
    {
      virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    }

    else
    {
      virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
    }

    v52 = virtualConferenceTextField;
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setSelectedTextField:virtualConferenceTextField];

    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setDisableConferenceTextField:[(EKLocationEditItemViewController *)self disableConferenceTextField]];
    v34 = v88;
  }
}

void __61__EKLocationEditItemViewController__setupViewsAndConstraints__block_invoke(uint64_t a1, Class aClass)
{
  v4 = NSStringFromClass(aClass);
  [*(*(a1 + 32) + 1072) registerClass:aClass forCellReuseIdentifier:v4];
}

- (BOOL)showingTextRow
{
  searchText = [(EKLocationEditItemViewController *)self searchText];
  v4 = searchText;
  LOBYTE(v5) = 0;
  if ((self->_supportedSearchTypes & 0x80) != 0 && searchText)
  {
    v5 = [searchText isEqualToString:&stru_1F4EF6790] ^ 1;
  }

  return v5;
}

- (BOOL)showingCurrentLocationRow
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Current Location" value:&stru_1F4EF6790 table:0];

  searchText = [(EKLocationEditItemViewController *)self searchText];
  v6 = searchText;
  v7 = searchText && ([searchText isEqualToString:&stru_1F4EF6790] & 1) == 0 && objc_msgSend(v4, "compare:options:", v6, 9) == 0;
  v8 = 0;
  if (self->_searchModelCurrentLocation && !v7)
  {
    v8 = self->_supportedSearchTypes & 1;
  }

  return v8;
}

- (BOOL)showAvailableConferenceTypesAsRows
{
  if (self->_supportedSearchTypes == 1536)
  {
    return 1;
  }

  searchText = [(EKLocationEditItemViewController *)self searchText];
  if ([searchText length])
  {
    v2 = 1;
  }

  else
  {
    traitCollection = [(EKLocationEditItemViewController *)self traitCollection];
    v2 = EKUIUsesLargeTextLayout(traitCollection);
  }

  return v2;
}

- (void)useAsString:(id)string
{
  if ((self->_supportedSearchTypes & 0x80) != 0)
  {
    searchText = [(EKLocationEditItemViewController *)self searchText];
    if ([searchText length])
    {
      v5 = MEMORY[0x1E6966B08];
      searchText2 = [(EKLocationEditItemViewController *)self searchText];
      v7 = [v5 locationWithTitle:searchText2];
      [(EKLocationEditItemViewController *)self setSelectedLocation:v7];
    }

    [(EKLocationEditItemViewController *)self searchResignFirstResponder];
  }
}

- (void)setSelectedConferenceRoom:(id)room
{
  objc_storeStrong(&self->_selectedConferenceRoom, room);
  roomCopy = room;
  searchModel = self->_searchModel;
  calendar = [(EKCalendarItem *)self->_calendarItem calendar];
  source = [calendar source];
  [(EKUILocationSearchModel *)searchModel addConferenceRoomToRecents:roomCopy fromSource:source];
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2)
  {
    v5 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [pathCopy row]);
    recent = [v5 recent];

    location2 = [MEMORY[0x1E6966AA8] locationForRecent:recent];
LABEL_3:
    v8 = location2;
LABEL_4:

LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  if ([pathCopy section] != 5)
  {
    if ([pathCopy section] == 4)
    {
      v18 = 1192;
    }

    else
    {
      if ([pathCopy section] != 6)
      {
        if ([pathCopy section] == 1)
        {
          recent = -[NSArray objectAtIndex:](self->_searchModelVirtualConferenceRoomSearchResults, "objectAtIndex:", [pathCopy row]);
          v28 = MEMORY[0x1E6966B08];
          title = [recent title];
          v8 = [v28 locationWithTitle:title];

          goto LABEL_4;
        }

LABEL_32:
        v22 = 0;
        goto LABEL_33;
      }

      v18 = 1224;
    }

    v19 = *(&self->super.super.super.super.isa + v18);
    v20 = [pathCopy row];
    searchModelFrequentsSearchResults = v19;
LABEL_18:
    location = [(NSArray *)searchModelFrequentsSearchResults objectAtIndex:v20];
    goto LABEL_19;
  }

  v9 = [pathCopy row];
  searchModelLocationFromMapsURL = self->_searchModelLocationFromMapsURL;
  v11 = [(NSArray *)self->_searchModelEventsSearchResults count];
  v12 = searchModelLocationFromMapsURL == 0;
  v13 = searchModelLocationFromMapsURL != 0;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  v15 = [(NSArray *)self->_searchModelFrequentsSearchResults count];
  v16 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
  if (v9 < v13)
  {
    location = [(EKStructuredLocationWithImage *)self->_searchModelLocationFromMapsURL location];
LABEL_19:
    v8 = location;
    goto LABEL_20;
  }

  if (v9 < v14)
  {
    recent = [(NSArray *)self->_searchModelEventsSearchResults objectAtIndex:v9];
    location2 = [recent location];
    goto LABEL_3;
  }

  v26 = v16;
  v27 = v15 + v14;
  if ([pathCopy row] < v27)
  {
    searchModelFrequentsSearchResults = self->_searchModelFrequentsSearchResults;
    v20 = v9 - v14;
    goto LABEL_18;
  }

  if ([pathCopy row] >= (v26 + v27))
  {
    goto LABEL_32;
  }

  v30 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
  if ([pathCopy row] - v27 >= v30)
  {
    goto LABEL_32;
  }

  v22 = [(NSArray *)self->_searchModelMapCompletionSearchResults objectAtIndex:v9 - v27];
LABEL_33:
  v8 = 0;
LABEL_21:
  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23;

  return v23;
}

- (id)conferenceRoomForRecent:(id)recent
{
  recentCopy = recent;
  if (!self->_cachedConferenceRooms)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedConferenceRooms = self->_cachedConferenceRooms;
    self->_cachedConferenceRooms = dictionary;
  }

  calendar = [(EKCalendarItem *)self->_calendarItem calendar];
  source = [calendar source];

  v9 = [MEMORY[0x1E6966AA8] directoryLocationForRecent:recentCopy onSource:source];
  v10 = MEMORY[0x1E696AEC0];
  preferredAddress = [v9 preferredAddress];
  externalID = [source externalID];
  v13 = [v10 stringWithFormat:@"%@.%@", preferredAddress, externalID];

  v14 = [(NSMutableDictionary *)self->_cachedConferenceRooms objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(EKUIConferenceRoom);
    [(EKUIConferenceRoom *)v14 setLocation:v9];
    [(EKUIConferenceRoom *)v14 setAvailability:0];
    constraints = [source constraints];
    -[EKUIConferenceRoom setSupportsAvailability:](v14, "setSupportsAvailability:", [constraints supportsAvailabilityRequests]);

    [(NSMutableDictionary *)self->_cachedConferenceRooms setObject:v14 forKey:v13];
  }

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v25 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = 0;
  if (section <= 2)
  {
    if (section)
    {
      if (section != 1)
      {
        if (section != 2)
        {
          goto LABEL_19;
        }

        v8 = 1200;
        goto LABEL_18;
      }

      showAvailableConferenceTypesAsRows = [(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows];
      v20 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
      if (showAvailableConferenceTypesAsRows)
      {
        v7 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults count]+ v20;
      }

      else
      {
        v7 = v20 != 0;
      }
    }

    else
    {
      LODWORD(v7) = [(EKLocationEditItemViewController *)self showingTextRow];
      showingCurrentLocationRow = [(EKLocationEditItemViewController *)self showingCurrentLocationRow];
      v10 = 1;
      if (v7)
      {
        v10 = 2;
      }

      if (showingCurrentLocationRow)
      {
        v7 = v10;
      }

      else
      {
        v7 = v7;
      }
    }
  }

  else
  {
    if (section <= 4)
    {
      if (section == 3)
      {
        v8 = 1232;
      }

      else
      {
        v8 = 1192;
      }

LABEL_18:
      v7 = [*(&self->super.super.super.super.isa + v8) count];
      goto LABEL_19;
    }

    if (section != 5)
    {
      if (section != 6)
      {
        goto LABEL_19;
      }

      v8 = 1224;
      goto LABEL_18;
    }

    v16 = [(NSArray *)self->_searchModelFrequentsSearchResults count];
    v17 = [(NSArray *)self->_searchModelEventsSearchResults count]+ v16;
    v18 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
    if (self->_searchModelLocationFromMapsURL)
    {
      v7 = v17 + v18 + 1;
    }

    else
    {
      v7 = v17 + v18;
    }
  }

LABEL_19:
  v11 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [objc_opt_class() _sectionNameForSection:section];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v21 = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Number of rows for section [%@]: [%@]", &v21, 0x16u);
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(EKLocationEditItemViewController *)self needsSave])
  {
    [(EKLocationEditItemViewController *)self setNeedsSave:1];
    if (![pathCopy section])
    {
      if ([pathCopy row] || !-[EKLocationEditItemViewController showingTextRow](self, "showingTextRow"))
      {
        if ([(EKLocationEditItemViewController *)self showingCurrentLocationRow])
        {
          [(EKUILocationSearchModel *)self->_searchModel selectCurrentLocation];
        }

        else
        {
          NSLog(&cfstr_UnknownRowTapp.isa);
        }
      }

      else
      {
        [(EKLocationEditItemViewController *)self useAsString:0];
        [(EKEditItemViewController *)self saveAndDismiss];
      }

      goto LABEL_20;
    }

    if ([pathCopy section] == 3)
    {
      recent = -[NSArray objectAtIndex:](self->_searchModelConferenceRoomSearchResults, "objectAtIndex:", [pathCopy row]);
      [(EKLocationEditItemViewController *)self setSelectedConferenceRoom:recent];
      location = [recent location];
      displayName = [location displayName];
      [(EKLocationEditItemViewController *)self setSearchText:displayName];

LABEL_5:
      [(EKLocationEditItemViewController *)self searchResignFirstResponder];
      [(EKEditItemViewController *)self saveAndDismiss];
LABEL_6:

      goto LABEL_20;
    }

    if ([pathCopy section] == 2)
    {
      v8 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [pathCopy row]);
      recent = [v8 recent];

      if ([MEMORY[0x1E6966AA8] recentIsDirectoryLocation:recent])
      {
        v9 = [(EKLocationEditItemViewController *)self conferenceRoomForRecent:recent];
        [(EKLocationEditItemViewController *)self setSelectedConferenceRoom:v9];
        location2 = [v9 location];
        displayName2 = [location2 displayName];
        [(EKLocationEditItemViewController *)self setSearchText:displayName2];

        [(EKLocationEditItemViewController *)self searchResignFirstResponder];
        [(EKEditItemViewController *)self saveAndDismiss];

        goto LABEL_6;
      }

LABEL_24:
      recent = [(EKLocationEditItemViewController *)self itemAtIndexPath:pathCopy];
      EKWeakLinkClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = recent;
        if (!v16)
        {
          goto LABEL_6;
        }

        v17 = v16;
        address = [v16 address];

        if (address)
        {
          [(EKUILocationSearchModel *)self->_searchModel selectLocation:v17];
        }

        else
        {
          title = [v17 title];
          [(EKLocationEditItemViewController *)self setSearchText:title];

          [(EKLocationEditItemViewController *)self useAsString:0];
          [(EKEditItemViewController *)self saveAndDismiss];
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_6;
        }

        v19 = recent;
        if (!v19)
        {
          goto LABEL_6;
        }

        [(EKUILocationSearchModel *)self->_searchModel selectMapSearchCompletion:v19];
      }

      goto LABEL_6;
    }

    if ([pathCopy section] != 1)
    {
      goto LABEL_24;
    }

    if ([(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows])
    {
      v12 = [pathCopy row];
      v13 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
      v14 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults count];
      if (v12 < v13)
      {
        firstObject = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults objectAtIndex:v12];
LABEL_33:
        recent = firstObject;
        [(EKLocationEditItemViewController *)self selectedRoomType:firstObject];
        goto LABEL_6;
      }

      if (v12 < (v14 + v13))
      {
        recent = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults objectAtIndex:v12 - v13];
        [(EKLocationEditItemViewController *)self setSelectedVirtualConference:recent];
        goto LABEL_5;
      }
    }

    else if ([(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count]== 1)
    {
      firstObject = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults firstObject];
      goto LABEL_33;
    }
  }

LABEL_20:
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (section <= 3)
  {
    switch(section)
    {
      case 1:
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Video Call";
        break;
      case 2:
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Recents";
        break;
      case 3:
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Conference Rooms";
        break;
      default:
        goto LABEL_14;
    }
  }

  else
  {
    if (section <= 5)
    {
      v6 = EventKitUIBundle();
      v7 = v6;
      if (section == 4)
      {
        v8 = @"Contacts";
      }

      else
      {
        v8 = @"Map Locations";
      }

      goto LABEL_21;
    }

    if (section != 6)
    {
      if (section == 7)
      {
        v9 = kEKUILogEventEditorHandle;
        if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = 134217984;
          sectionCopy = 7;
          v10 = "Invalid section supplied: [%tu]";
LABEL_16:
          _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, v10, &v16, 0xCu);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

LABEL_14:
      v9 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 134217984;
        sectionCopy = section;
        v10 = "Invalid section supplied: [%ld]";
        goto LABEL_16;
      }

LABEL_17:
      v11 = 0;
      goto LABEL_22;
    }

    v6 = EventKitUIBundle();
    v7 = v6;
    v8 = @"Custom Locations";
  }

LABEL_21:
  v11 = [v6 localizedStringForKey:v8 value:&stru_1F4EF6790 table:0];

LABEL_22:
  v12 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = [objc_opt_class() _sectionNameForSection:section];
    v16 = 138412546;
    sectionCopy = v11;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Returning header name [%@] for section [%@]", &v16, 0x16u);
  }

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v97 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = 0;
  v90 = section;
  v91 = pathCopy;
  if (section > 3)
  {
    if (section > 5)
    {
      selfCopy10 = self;
      if (section != 6)
      {
        if (section == 7)
        {
          v9 = objc_opt_new();
        }

        goto LABEL_41;
      }

      v51 = objc_opt_class();
      v12 = NSStringFromClass(v51);
      v9 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];
      defaultContentConfiguration = [v9 defaultContentConfiguration];
      v33 = -[NSArray objectAtIndex:](self->_searchModelTextualSearchResults, "objectAtIndex:", [pathCopy row]);
      title = [v33 title];
      [defaultContentConfiguration setText:title];

      address = [v33 address];
      [defaultContentConfiguration setSecondaryText:address];

      secondaryText = [defaultContentConfiguration secondaryText];
      v55 = [secondaryText length];

      if (!v55)
      {
LABEL_38:
        [v9 setContentConfiguration:defaultContentConfiguration];

LABEL_39:
        goto LABEL_40;
      }

      _boldTitleFont = [objc_opt_class() _boldTitleFont];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setFont:_boldTitleFont];
      goto LABEL_36;
    }

    selfCopy10 = self;
    if (section == 4)
    {
      v37 = objc_opt_class();
      v12 = NSStringFromClass(v37);
      v9 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];
      defaultContentConfiguration = [v9 defaultContentConfiguration];
      v33 = -[NSArray objectAtIndex:](self->_searchModelContactsSearchResults, "objectAtIndex:", [pathCopy row]);
      contactLabel = [v33 contactLabel];
      [defaultContentConfiguration setText:contactLabel];

      title2 = [v33 title];
      v40 = [title2 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      [defaultContentConfiguration setSecondaryText:v40];

      secondaryText2 = [defaultContentConfiguration secondaryText];
      v42 = [secondaryText2 length];

      if (v42)
      {
        _boldTitleFont2 = [objc_opt_class() _boldTitleFont];
        textProperties2 = [defaultContentConfiguration textProperties];
        [textProperties2 setFont:_boldTitleFont2];
      }

      _boldTitleFont = [(EKLocationEditItemViewController *)self contactsImage];
      [defaultContentConfiguration setImage:_boldTitleFont];
      goto LABEL_37;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v18 forIndexPath:pathCopy];
    defaultContentConfiguration2 = [v9 defaultContentConfiguration];
    v88 = v18;
    v86 = viewCopy;
    v19 = [pathCopy row];
    searchModelLocationFromMapsURL = self->_searchModelLocationFromMapsURL;
    v21 = [(NSArray *)self->_searchModelEventsSearchResults count];
    if (searchModelLocationFromMapsURL)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v21;
    }

    v85 = [(NSArray *)self->_searchModelFrequentsSearchResults count];
    v23 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
    if (v19 >= (searchModelLocationFromMapsURL != 0))
    {
      v76 = v19 - v22;
      if (v19 >= v22)
      {
        v83 = v19 - (v85 + v22);
        selfCopy10 = self;
        if (v19 < (v85 + v22))
        {
          [(NSArray *)self->_searchModelFrequentsSearchResults objectAtIndex:v76];
          viewCopy = v86;
          v25 = defaultContentConfiguration2;
          v27 = v26 = v88;
          title3 = [v27 title];
          address2 = [v27 address];
          v77 = MapPinImage();
          goto LABEL_59;
        }

        v25 = defaultContentConfiguration2;
        v26 = v88;
        if (v19 >= (v23 + v85 + v22) || v83 >= [(NSArray *)selfCopy10->_searchModelMapCompletionSearchResults count])
        {
          v77 = 0;
          address2 = 0;
          title3 = 0;
          viewCopy = v86;
          goto LABEL_60;
        }

        [(NSArray *)selfCopy10->_searchModelMapCompletionSearchResults objectAtIndex:v83];
        v27 = viewCopy = v86;
        title3 = [v27 title];
        address2 = [v27 subtitle];
        mapItem = [v27 mapItem];
        image = ImageForMapItem(mapItem);
      }

      else
      {
        selfCopy10 = self;
        [(NSArray *)self->_searchModelEventsSearchResults objectAtIndex:v19];
        viewCopy = v86;
        v25 = defaultContentConfiguration2;
        v27 = v26 = v88;
        mapItem = [v27 location];
        title3 = [(EKStructuredLocationWithImage *)mapItem title];
        address2 = [(EKStructuredLocationWithImage *)mapItem address];
        image = [v27 image];
      }
    }

    else
    {
      mapItem = self->_searchModelLocationFromMapsURL;
      [(EKStructuredLocationWithImage *)mapItem location];
      viewCopy = v86;
      v25 = defaultContentConfiguration2;
      v27 = v26 = v88;
      title3 = [v27 title];
      address2 = [v27 address];
      image = [(EKStructuredLocationWithImage *)mapItem image];
    }

    v77 = image;

LABEL_59:
LABEL_60:
    [v25 setText:title3];
    [v25 setSecondaryText:address2];
    [v25 setImage:v77];
    secondaryText3 = [v25 secondaryText];
    v79 = [secondaryText3 length];

    if (v79)
    {
      _boldTitleFont3 = [objc_opt_class() _boldTitleFont];
      textProperties3 = [v25 textProperties];
      [textProperties3 setFont:_boldTitleFont3];
    }

    [v9 setContentConfiguration:v25];

    goto LABEL_41;
  }

  if (section > 1)
  {
    selfCopy10 = self;
    if (section != 2)
    {
      v12 = -[NSArray objectAtIndex:](self->_searchModelConferenceRoomSearchResults, "objectAtIndex:", [pathCopy row]);
      v9 = [(EKLocationEditItemViewController *)self _cellForConferenceRoom:v12 atIndexPath:pathCopy];
LABEL_40:

      goto LABEL_41;
    }

    v89 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [pathCopy row]);
    recent = [v89 recent];
    if ([MEMORY[0x1E6966AA8] recentIsDirectoryLocation:recent])
    {
      v46 = [(EKLocationEditItemViewController *)self conferenceRoomForRecent:recent];
      selfCopy10 = self;
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:v48 forIndexPath:pathCopy];
      if ([v46 supportsAvailability] && (objc_msgSend(v46, "availabilityRequestInProgress") & 1) == 0 && !objc_msgSend(v46, "availability"))
      {
        objc_initWeak(location, self);
        searchModel = self->_searchModel;
        calendarItem = self->_calendarItem;
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __68__EKLocationEditItemViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v92[3] = &unk_1E843F080;
        objc_copyWeak(&v93, location);
        [(EKUILocationSearchModel *)searchModel updateConferenceRoomAvailability:v46 duringEvent:calendarItem completionBlock:v92];
        objc_destroyWeak(&v93);
        objc_destroyWeak(location);
      }

      [v9 reloadWithConferenceRoom:v46];
    }

    else
    {
      v65 = [MEMORY[0x1E6966AA8] locationForRecent:recent];
      selfCopy10 = self;
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v9 = [viewCopy dequeueReusableCellWithIdentifier:v67 forIndexPath:pathCopy];
      defaultContentConfiguration3 = [v9 defaultContentConfiguration];
      title4 = [v65 title];
      [defaultContentConfiguration3 setText:title4];

      address3 = [v65 address];
      [defaultContentConfiguration3 setSecondaryText:address3];

      secondaryText4 = [defaultContentConfiguration3 secondaryText];
      v72 = [secondaryText4 length];

      if (v72)
      {
        _boldTitleFont4 = [objc_opt_class() _boldTitleFont];
        textProperties4 = [defaultContentConfiguration3 textProperties];
        [textProperties4 setFont:_boldTitleFont4];
      }

      contactLabel2 = [v65 contactLabel];

      if (contactLabel2)
      {
        [(EKLocationEditItemViewController *)selfCopy10 contactsImage];
      }

      else
      {
        [v89 image];
      }
      v84 = ;
      [defaultContentConfiguration3 setImage:v84];

      [v9 setContentConfiguration:defaultContentConfiguration3];
    }

    goto LABEL_41;
  }

  selfCopy10 = self;
  if (!section)
  {
    v31 = objc_opt_class();
    v12 = NSStringFromClass(v31);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];
    if ([pathCopy row] || !-[EKLocationEditItemViewController showingTextRow](self, "showingTextRow"))
    {
      if (![(EKLocationEditItemViewController *)self showingCurrentLocationRow])
      {
        goto LABEL_40;
      }

      defaultContentConfiguration = [v9 defaultContentConfiguration];
      v58 = EventKitUIBundle();
      v59 = [v58 localizedStringForKey:@"Current Location" value:&stru_1F4EF6790 table:0];
      [defaultContentConfiguration setText:v59];

      locationArrowImage = [(EKLocationEditItemViewController *)self locationArrowImage];
      [defaultContentConfiguration setImage:locationArrowImage];

      [v9 setContentConfiguration:defaultContentConfiguration];
      goto LABEL_39;
    }

    defaultContentConfiguration = [v9 defaultContentConfiguration];
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];

    v34 = MEMORY[0x1E696AEC0];
    _boldTitleFont = [(EKLocationEditItemViewController *)self searchText];
    textProperties = [v34 localizedStringWithFormat:v33, _boldTitleFont];
    [defaultContentConfiguration setText:textProperties];
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (section != 1)
  {
    goto LABEL_41;
  }

  if ([(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];
    [v9 setAccessoryType:0];
    v13 = [pathCopy row];
    v14 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
    v15 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults count];
    if (v13 >= v14)
    {
      selfCopy10 = self;
      if (v13 >= (v15 + v14))
      {
        goto LABEL_40;
      }

      defaultContentConfiguration = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults objectAtIndex:v13 - v14];
      [v9 updateWithCustomVirtualConference:defaultContentConfiguration];
    }

    else
    {
      defaultContentConfiguration = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults objectAtIndex:v13];
      selfCopy10 = self;
      [v9 updateWithRoomType:defaultContentConfiguration];
      if (self->_shouldShowCheckedVirtualConference && [defaultContentConfiguration isEqual:self->_checkedRoomType])
      {
        [v9 setAccessoryType:3];
      }
    }

    goto LABEL_39;
  }

  v61 = self->_searchModelVirtualConferenceRoomSearchResults;
  if ([(NSArray *)v61 count]== 1)
  {
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v63 forIndexPath:pathCopy];
    [v9 setAccessoryType:0];
    firstObject = [(NSArray *)v61 firstObject];
    [v9 updateWithRoomType:firstObject];
  }

  else
  {
    v82 = objc_opt_class();
    v63 = NSStringFromClass(v82);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v63 forIndexPath:pathCopy];
    [v9 setDelegate:self];
    [v9 setRoomTypes:v61];
  }

LABEL_41:
  if (![v9 accessoryType])
  {
    [v9 setAccessoryType:{-[EKLocationEditItemViewController _accessoryTypeForSection:](selfCopy10, "_accessoryTypeForSection:", v90)}];
  }

  v56 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    *location = 138412546;
    *&location[4] = v91;
    v95 = 2112;
    v96 = v9;
    _os_log_impl(&dword_1D3400000, v56, OS_LOG_TYPE_DEBUG, "Returning cell for index path [%@]: [%@]", location, 0x16u);
  }

  return v9;
}

void __68__EKLocationEditItemViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EKLocationEditItemViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_1E843F080;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __68__EKLocationEditItemViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[134] reloadData];
    WeakRetained = v2;
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v37[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v36 = [(EKLocationEditItemViewController *)self itemAtIndexPath:pathCopy];
  v35 = [(EKLocationEditItemViewController *)self _rowNameForIndexPath:pathCopy];

  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row name: %@\n\nData description:\n%@", v35, v36];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setNumberOfLines:0];
  [v6 setText:v33];
  v7 = objc_alloc_init(MEMORY[0x1E69DD258]);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [v7 view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [v7 view];
  [view2 addSubview:v6];

  v23 = MEMORY[0x1E696ACD8];
  view3 = [v7 view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  leadingAnchor2 = [v6 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[0] = v28;
  view4 = [v7 view];
  layoutMarginsGuide2 = [view4 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [v6 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[1] = v22;
  view5 = [v7 view];
  layoutMarginsGuide3 = [view5 layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide3 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[2] = v12;
  view6 = [v7 view];
  layoutMarginsGuide4 = [view6 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v23 activateConstraints:v18];

  [(EKLocationEditItemViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (int64_t)_accessoryTypeForSection:(unint64_t)section
{
  if (_accessoryTypeForSection__onceToken != -1)
  {
    [EKLocationEditItemViewController _accessoryTypeForSection:];
  }

  v5 = section == 5 || section == 2;
  if ((v5 & _accessoryTypeForSection__showsAccessoryButtons) != 0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

void __61__EKLocationEditItemViewController__accessoryTypeForSection___block_invoke()
{
  v0 = [MEMORY[0x1E6993470] sharedPreferences];
  _accessoryTypeForSection__showsAccessoryButtons = [v0 debugLocationSearchResults];
}

+ (id)_boldTitleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:2 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2)
  {
    v6 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [pathCopy row]);
    recent = [v6 recent];

    [(EKUILocationSearchModel *)self->_searchModel removeRecentLocation:recent];
  }
}

- (id)locationArrowImage
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v12[0] = systemBlueColor;
  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  v12[1] = systemGray4Color;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [v2 _configurationWithHierarchicalColors:v5];

  v7 = MEMORY[0x1E69DCAD8];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v8 = [v7 configurationWithPointSize:?];
  v9 = [v8 configurationByApplyingConfiguration:v6];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"location.circle.fill" withConfiguration:v9];

  return v10;
}

- (id)contactsImage
{
  v2 = MEMORY[0x1E69DCAD8];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v3 = [v2 configurationWithPointSize:?];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.fill" withConfiguration:v3];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v6 = [v4 imageWithTintColor:systemGrayColor renderingMode:1];

  return v6;
}

- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error
{
  locationCopy = location;
  v8 = locationCopy;
  if (!locationCopy || error)
  {
    v12 = MEMORY[0x1E69DC650];
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Address Not Recognized" value:&stru_1F4EF6790 table:0];
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"The address could not be located. If you use this address you won’t be able to get maps value:travel time table:{or time to leave alerts.", &stru_1F4EF6790, 0}];
    v17 = [v12 alertControllerWithTitle:v14 message:v16 preferredStyle:1];

    v18 = MEMORY[0x1E69DC648];
    v19 = EventKitUIBundle();
    v20 = [v19 localizedStringForKey:@"Use Anyway" value:&stru_1F4EF6790 table:0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83__EKLocationEditItemViewController_locationSearchModel_selectedLocation_withError___block_invoke;
    v27[3] = &unk_1E843EB98;
    v27[4] = self;
    v21 = [v18 actionWithTitle:v20 style:0 handler:v27];
    [v17 addAction:v21];

    v22 = MEMORY[0x1E69DC648];
    v23 = EventKitUIBundle();
    v24 = [v23 localizedStringForKey:@"Cancel - location search model - selected location" value:@"Cancel" table:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __83__EKLocationEditItemViewController_locationSearchModel_selectedLocation_withError___block_invoke_2;
    v26[3] = &unk_1E843EB98;
    v26[4] = self;
    v25 = [v22 actionWithTitle:v24 style:0 handler:v26];
    [v17 addAction:v25];

    [(EKLocationEditItemViewController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    title = [locationCopy title];

    if (!title)
    {
      address = [v8 address];
      [v8 setTitle:address];
    }

    [(EKLocationEditItemViewController *)self setSelectedLocation:v8];
    title2 = [v8 title];
    [(EKLocationEditItemViewController *)self setSearchText:title2];

    [(EKLocationEditItemViewController *)self searchResignFirstResponder];
    [(EKEditItemViewController *)self saveAndDismiss];
  }
}

void __83__EKLocationEditItemViewController_locationSearchModel_selectedLocation_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[134] indexPathForSelectedRow];
  v14 = [v2 itemAtIndexPath:v3];

  v4 = v14;
  if (v14)
  {
    EKWeakLinkClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v14;
      v6 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_10;
      }

      v6 = v14;
      v7 = MEMORY[0x1E6966B08];
      v8 = [v6 displayLines];
      v9 = [v8 objectAtIndex:0];
      v5 = [v7 locationWithTitle:v9];

      v10 = [v6 displayLines];
      v11 = [v10 count];

      if (v11 >= 2)
      {
        v12 = [v6 displayLines];
        v13 = [v12 objectAtIndex:1];
        [v5 setAddress:v13];
      }

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    [*(a1 + 32) setSelectedLocation:v5];
    [*(a1 + 32) searchResignFirstResponder];
    [*(a1 + 32) saveAndDismiss];
LABEL_10:

    v4 = v14;
  }
}

void __83__EKLocationEditItemViewController_locationSearchModel_selectedLocation_withError___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1072);
  v2 = [v1 indexPathForSelectedRow];
  [v1 deselectRowAtIndexPath:v2 animated:1];
}

- (BOOL)shouldIncludeConferenceRoom:(id)room
{
  roomCopy = room;
  location = [roomCopy location];
  displayName = [location displayName];
  location2 = [(EKUILocationRowModel *)self->_locationViewModel location];
  title = [location2 title];
  v9 = [displayName isEqualToString:title];

  v10 = 1;
  if ((v9 & 1) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    attendees = [(EKCalendarItem *)self->_calendarItem attendees];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__EKLocationEditItemViewController_shouldIncludeConferenceRoom___block_invoke;
    v13[3] = &unk_1E8441628;
    v14 = roomCopy;
    selfCopy = self;
    v16 = &v17;
    [attendees enumerateObjectsUsingBlock:v13];

    v10 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  return v10 & 1;
}

void __64__EKLocationEditItemViewController_shouldIncludeConferenceRoom___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([v13 participantType] == 2)
  {
    v6 = [v13 name];
    v7 = [*(a1 + 32) location];
    v8 = [v7 displayName];
    if ([v6 isEqualToString:v8])
    {
      v9 = [v13 name];
      v10 = [*(*(a1 + 40) + 1272) location];
      v11 = [v10 title];
      v12 = [v9 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types
{
  typesCopy = types;
  modelCopy = model;
  v7 = modelCopy;
  if (typesCopy)
  {
    currentLocation = [modelCopy currentLocation];
    v9 = [currentLocation copy];
    searchModelCurrentLocation = self->_searchModelCurrentLocation;
    self->_searchModelCurrentLocation = v9;

    if ((typesCopy & 4) == 0)
    {
LABEL_3:
      if ((typesCopy & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((typesCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  mapCompletionSearchResults = [v7 mapCompletionSearchResults];
  v12 = [mapCompletionSearchResults copy];
  searchModelMapCompletionSearchResults = self->_searchModelMapCompletionSearchResults;
  self->_searchModelMapCompletionSearchResults = v12;

  if ((typesCopy & 2) == 0)
  {
LABEL_4:
    if ((typesCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  locationFromMapsURL = [v7 locationFromMapsURL];
  searchModelLocationFromMapsURL = self->_searchModelLocationFromMapsURL;
  self->_searchModelLocationFromMapsURL = locationFromMapsURL;

  if ((typesCopy & 8) == 0)
  {
LABEL_5:
    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  contactsSearchResults = [v7 contactsSearchResults];
  v17 = [contactsSearchResults copy];
  searchModelContactsSearchResults = self->_searchModelContactsSearchResults;
  self->_searchModelContactsSearchResults = v17;

  if ((typesCopy & 0x10) == 0)
  {
LABEL_6:
    if ((typesCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  recentsSearchResults = [v7 recentsSearchResults];
  v20 = [recentsSearchResults copy];
  searchModelRecentsSearchResults = self->_searchModelRecentsSearchResults;
  self->_searchModelRecentsSearchResults = v20;

  if ((typesCopy & 0x20) == 0)
  {
LABEL_7:
    if ((typesCopy & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  frequentsSearchResults = [v7 frequentsSearchResults];
  v23 = [frequentsSearchResults copy];
  searchModelFrequentsSearchResults = self->_searchModelFrequentsSearchResults;
  self->_searchModelFrequentsSearchResults = v23;

  if ((typesCopy & 0x40) == 0)
  {
LABEL_8:
    if ((typesCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  eventsSearchResults = [v7 eventsSearchResults];
  v26 = [eventsSearchResults copy];
  searchModelEventsSearchResults = self->_searchModelEventsSearchResults;
  self->_searchModelEventsSearchResults = v26;

  if ((typesCopy & 0x80) == 0)
  {
LABEL_9:
    if ((typesCopy & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  textualSearchResults = [v7 textualSearchResults];
  v29 = [textualSearchResults copy];
  searchModelTextualSearchResults = self->_searchModelTextualSearchResults;
  self->_searchModelTextualSearchResults = v29;

  if ((typesCopy & 0x100) == 0)
  {
LABEL_10:
    if ((typesCopy & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  conferenceRoomSearchResults = [v7 conferenceRoomSearchResults];
  v32 = [conferenceRoomSearchResults copy];
  searchModelConferenceRoomSearchResults = self->_searchModelConferenceRoomSearchResults;
  self->_searchModelConferenceRoomSearchResults = v32;

  if ((typesCopy & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  virtualConferenceRoomSearchResults = [v7 virtualConferenceRoomSearchResults];
  v35 = [virtualConferenceRoomSearchResults copy];
  searchModelVirtualConferenceRoomSearchResults = self->_searchModelVirtualConferenceRoomSearchResults;
  self->_searchModelVirtualConferenceRoomSearchResults = v35;

  conference = [(EKUILocationRowModel *)self->_conferenceViewModel conference];
  if (conference)
  {
    shouldShowCheckedVirtualConference = self->_shouldShowCheckedVirtualConference;

    if (shouldShowCheckedVirtualConference)
    {
      v39 = MEMORY[0x1E69669E0];
      conference2 = [(EKUILocationRowModel *)self->_conferenceViewModel conference];
      v41 = self->_searchModelVirtualConferenceRoomSearchResults;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __75__EKLocationEditItemViewController_locationSearchModel_updatedSearchTypes___block_invoke;
      v45[3] = &unk_1E8441650;
      v45[4] = self;
      [v39 virtualConference:conference2 likelyCameFromRoomTypes:v41 completionHandler:v45];
    }
  }

LABEL_24:
  if ((typesCopy & 0x400) != 0)
  {
    virtualConferenceCustomSearchResults = [v7 virtualConferenceCustomSearchResults];
    v43 = [virtualConferenceCustomSearchResults copy];
    searchModelVirtualConferenceCustomSearchResults = self->_searchModelVirtualConferenceCustomSearchResults;
    self->_searchModelVirtualConferenceCustomSearchResults = v43;
  }

  [(UITableView *)self->_tableView reloadData];
}

void __75__EKLocationEditItemViewController_locationSearchModel_updatedSearchTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__EKLocationEditItemViewController_locationSearchModel_updatedSearchTypes___block_invoke_2;
  v5[3] = &unk_1E843EFB8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __75__EKLocationEditItemViewController_locationSearchModel_updatedSearchTypes___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1120), *(a1 + 40));
  v2 = *(*(a1 + 32) + 1072);

  return [v2 reloadData];
}

+ (id)_sectionNameForSection:(unint64_t)section
{
  if (section > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8441698[section];
  }
}

- (id)_rowNameForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [objc_opt_class() _sectionNameForSection:{objc_msgSend(pathCopy, "section")}];
  if ([pathCopy section] == 5)
  {
    v6 = [pathCopy row];
    searchModelLocationFromMapsURL = self->_searchModelLocationFromMapsURL;
    v8 = [(NSArray *)self->_searchModelEventsSearchResults count];
    v9 = searchModelLocationFromMapsURL != 0;
    if (searchModelLocationFromMapsURL)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = [(NSArray *)self->_searchModelFrequentsSearchResults count];
    v12 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
    if (v6 < v9)
    {
      v13 = @"Maps URL";
LABEL_13:
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v5, v13];
      goto LABEL_15;
    }

    if (v6 < v10)
    {
      v13 = @"Events Search Results";
      goto LABEL_13;
    }

    v14 = v12;
    if ([pathCopy row] < (v11 + v10))
    {
      v13 = @"Frequents Search Results";
      goto LABEL_13;
    }

    if ([pathCopy row] < (v14 + v11 + v10))
    {
      v13 = @"Map Search Results";
      goto LABEL_13;
    }
  }

  v15 = v5;
LABEL_15:
  v16 = v15;

  return v16;
}

- (id)_cellForConferenceRoom:(id)room atIndexPath:(id)path
{
  pathCopy = path;
  roomCopy = room;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 reloadWithConferenceRoom:roomCopy];

  return v10;
}

- (BOOL)locationViewModelRemoved
{
  searchFieldsView = self->_searchFieldsView;
  if (!searchFieldsView)
  {
    return 0;
  }

  locationTextField = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView locationTextField];
  text = [locationTextField text];
  v6 = ![text length] && !self->_selectedConferenceRoom && self->_selectedLocation == 0;

  return v6;
}

- (BOOL)conferenceViewModelRemoved
{
  searchFieldsView = self->_searchFieldsView;
  if (!searchFieldsView)
  {
    return 0;
  }

  virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView virtualConferenceTextField];
  text = [virtualConferenceTextField text];
  if ([text length])
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_selectedVirtualConference == 0;
  }

  return v6;
}

- (id)_focusedTextField
{
  if (self->_searchFieldsView)
  {
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
  }

  else
  {
    [(UISearchBar *)self->_searchBar searchTextField];
  }
  v2 = ;

  return v2;
}

- (void)setSearchText:(id)text
{
  searchFieldsView = self->_searchFieldsView;
  if (searchFieldsView)
  {
    textCopy = text;
    textCopy2 = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView selectedTextField];
    [textCopy2 setText:textCopy];
  }

  else
  {
    searchBar = self->_searchBar;
    textCopy2 = text;
    [(UISearchBar *)searchBar setText:?];
  }
}

- (id)searchText
{
  if (self->_searchFieldsView)
  {
    selectedTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    text = [selectedTextField text];
  }

  else
  {
    text = [(UISearchBar *)self->_searchBar text];
  }

  return text;
}

- (BOOL)searchIsFirstResponder
{
  if (self->_searchFieldsView)
  {
    selectedTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    isFirstResponder = [selectedTextField isFirstResponder];

    return isFirstResponder;
  }

  else
  {
    searchBar = self->_searchBar;

    return [(UISearchBar *)searchBar isFirstResponder];
  }
}

- (void)searchResignFirstResponder
{
  if (self->_searchFieldsView)
  {
    selectedTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    [selectedTextField resignFirstResponder];
  }

  else
  {
    searchBar = self->_searchBar;

    [(UISearchBar *)searchBar resignFirstResponder];
  }
}

- (void)searchBecomeFirstResponder
{
  if (self->_searchFieldsView)
  {
    selectedTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    [selectedTextField becomeFirstResponder];
  }

  else
  {
    searchBar = self->_searchBar;

    [(UISearchBar *)searchBar becomeFirstResponder];
  }
}

- (void)kickoffSearchTextChangedIfNonEmpty
{
  searchText = [(EKLocationEditItemViewController *)self searchText];
  v4 = [searchText length];

  if (v4)
  {
    searchText2 = [(EKLocationEditItemViewController *)self searchText];
    [(EKLocationEditItemViewController *)self searchTextChanged:searchText2 allowClearingCheckedVirtualConference:0];
  }
}

- (void)searchTextChanged:(id)changed allowClearingCheckedVirtualConference:(BOOL)conference
{
  conferenceCopy = conference;
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (conferenceCopy)
  {
    _focusedTextField = [(EKLocationEditItemViewController *)self _focusedTextField];
    virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];

    if (_focusedTextField == virtualConferenceTextField)
    {
      self->_shouldShowCheckedVirtualConference = 0;
    }
  }

  if (![(EKLocationEditItemViewController *)self needsSave])
  {
    if (self->_supportsStructuredLocations)
    {
      if (!changedCopy || [changedCopy isEqualToString:&stru_1F4EF6790])
      {
        [(EKUILocationSearchModel *)self->_searchModel cancelSearch];
        [(EKLocationEditItemViewController *)self setSelectedLocation:0];
        [(EKUILocationSearchModel *)self->_searchModel updateRecents:0];
        searchModel = self->_searchModel;
        v10 = 0;
LABEL_14:
        [(EKUILocationSearchModel *)searchModel updateVirtualConferenceRoomOptions:v10];
        goto LABEL_18;
      }

      searchText = [(EKLocationEditItemViewController *)self searchText];
      v13 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = searchText;
        _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Beginning search for term: [%@]", &v14, 0xCu);
      }

      [(EKUILocationSearchModel *)self->_searchModel beginSearchForTerm:searchText];
    }

    else
    {
      [(UITableView *)self->_tableView reloadData];
      if ((self->_supportedSearchTypes & 0x200) != 0)
      {
        v11 = self->_searchModel;
        if ([changedCopy length])
        {
          v10 = changedCopy;
        }

        else
        {
          v10 = 0;
        }

        searchModel = v11;
        goto LABEL_14;
      }
    }
  }

LABEL_18:
}

- (void)searchDoneTapped
{
  selfCopy = self;
  v29 = *MEMORY[0x1E69E9840];
  [(EKLocationEditItemViewController *)self setNeedsSave:1];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = selfCopy->_searchModelVirtualConferenceCustomSearchResults;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {

    v6 = 0;
LABEL_14:
    [(EKLocationEditItemViewController *)selfCopy useAsString:0];
    goto LABEL_15;
  }

  v5 = v4;
  v6 = 0;
  v22 = 0;
  v7 = *v25;
  obj = v3;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      joinMethods = [v9 joinMethods];
      firstObject = [joinMethods firstObject];
      v12 = [firstObject URL];

      absoluteString = [v12 absoluteString];
      v14 = selfCopy;
      searchText = [(EKLocationEditItemViewController *)selfCopy searchText];
      v16 = [absoluteString rangeOfString:searchText];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v9;

        v22 = 1;
        v6 = v17;
      }

      selfCopy = v14;
    }

    v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v5);

  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = MEMORY[0x1E6992F40];
  joinMethods2 = [v6 joinMethods];
  firstObject2 = [joinMethods2 firstObject];
  v21 = [firstObject2 URL];
  LODWORD(v18) = [v18 isPreferredURL:v21];

  if (!v18)
  {
    goto LABEL_14;
  }

  [(EKLocationEditItemViewController *)v14 setSelectedVirtualConference:v6];
  [(EKLocationEditItemViewController *)v14 searchResignFirstResponder];
LABEL_15:
  [(EKEditItemViewController *)selfCopy saveAndDismiss];
}

- (void)selectedTextFieldChanged:(id)changed
{
  searchModel = self->_searchModel;
  changedCopy = changed;
  [(EKUILocationSearchModel *)searchModel cancelSearch];
  locationTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];

  if (locationTextField == changedCopy)
  {
    v7 = 511;
  }

  else
  {
    v7 = 1536;
  }

  [(EKLocationEditItemViewController *)self setSupportedSearchTypes:v7];
  if (self->_supportsStructuredLocations)
  {
    supportedSearchTypes = self->_supportedSearchTypes;
    if (supportedSearchTypes)
    {
      [(EKUILocationSearchModel *)self->_searchModel getCurrentLocation];
      supportedSearchTypes = self->_supportedSearchTypes;
    }

    if ((supportedSearchTypes & 0x10) != 0)
    {
      [(EKUILocationSearchModel *)self->_searchModel updateRecents:0];
    }
  }

  if ((self->_supportedSearchTypes & 0x200) != 0)
  {
    [(EKUILocationSearchModel *)self->_searchModel updateVirtualConferenceRoomOptions:0];
  }

  [(EKLocationEditItemViewController *)self locationSearchModel:self->_searchModel updatedSearchTypes:2047];

  [(EKLocationEditItemViewController *)self kickoffSearchTextChangedIfNonEmpty];
}

- (void)selectedRoomType:(id)type
{
  typeCopy = type;
  [(EKLocationEditItemViewController *)self setNeedsSave:1];
  [(EKUILocationSearchModel *)self->_searchModel selectVirtualConferenceRoomType:typeCopy];
  v5 = MEMORY[0x1E6966B38];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__EKLocationEditItemViewController_selectedRoomType___block_invoke;
  v7[3] = &unk_1E8441678;
  v7[4] = self;
  v6 = dispatch_get_global_queue(2, 0);
  [v5 virtualConferenceForRoomType:typeCopy completion:v7 queue:v6];

  [(EKLocationEditItemViewController *)self setPendingVirtualConference:1];
  [(EKEditItemViewController *)self saveAndDismiss];
  [(EKLocationEditItemViewController *)self searchResignFirstResponder];
}

void __53__EKLocationEditItemViewController_selectedRoomType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EKLocationEditItemViewController_selectedRoomType___block_invoke_2;
  block[3] = &unk_1E843EC38;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__EKLocationEditItemViewController_selectedRoomType___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPendingVirtualConference:0];
  [*(a1 + 32) setSelectedVirtualConference:*(a1 + 40)];
  [*(a1 + 32) setPendingVirtualConferenceError:*(a1 + 48)];
  v2 = [*(a1 + 32) editDelegate];
  [v2 editItemPendingVideoConferenceCompleted:*(a1 + 32)];
}

- (void)pendingVideoConferenceUpdated:(id)updated
{
  updatedCopy = updated;
  if (updatedCopy)
  {
    [(EKLocationEditItemViewController *)self setSelectedVirtualConference:updatedCopy];
    v5 = MEMORY[0x1E69933C0];
    joinMethods = [updatedCopy joinMethods];
    firstObject = [joinMethods firstObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__EKLocationEditItemViewController_pendingVideoConferenceUpdated___block_invoke;
    v9[3] = &unk_1E843EEB0;
    v9[4] = self;
    [v5 displayDetailsForJoinMethod:firstObject completionHandler:v9];
  }

  else
  {
    virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    [virtualConferenceTextField setText:&stru_1F4EF6790];

    [(EKLocationEditItemViewController *)self setDisableConferenceTextField:0];
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setDisableConferenceTextField:0];
  }
}

void __66__EKLocationEditItemViewController_pendingVideoConferenceUpdated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKLocationEditItemViewController_pendingVideoConferenceUpdated___block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __66__EKLocationEditItemViewController_pendingVideoConferenceUpdated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 1096) virtualConferenceTextField];
  [v3 setText:v2];

  [*(a1 + 32) setDisableConferenceTextField:0];
  v4 = *(*(a1 + 32) + 1096);

  return [v4 setDisableConferenceTextField:0];
}

@end
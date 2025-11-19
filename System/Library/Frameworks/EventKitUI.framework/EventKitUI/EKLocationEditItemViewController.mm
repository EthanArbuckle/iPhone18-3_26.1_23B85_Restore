@interface EKLocationEditItemViewController
+ (id)_boldTitleFont;
+ (id)_sectionNameForSection:(unint64_t)a3;
- (BOOL)conferenceViewModelRemoved;
- (BOOL)locationViewModelRemoved;
- (BOOL)searchIsFirstResponder;
- (BOOL)shouldIncludeConferenceRoom:(id)a3;
- (BOOL)showAvailableConferenceTypesAsRows;
- (BOOL)showingCurrentLocationRow;
- (BOOL)showingTextRow;
- (CGSize)preferredContentSize;
- (EKLocationEditItemViewController)initWithFrame:(CGRect)a3 calendarItem:(id)a4 eventStore:(id)a5;
- (id)_cellForConferenceRoom:(id)a3 atIndexPath:(id)a4;
- (id)_focusedTextField;
- (id)_rowNameForIndexPath:(id)a3;
- (id)conferenceRoomForRecent:(id)a3;
- (id)contactsImage;
- (id)itemAtIndexPath:(id)a3;
- (id)locationArrowImage;
- (id)searchText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)title;
- (int64_t)_accessoryTypeForSection:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupViewsAndConstraints;
- (void)kickoffSearchTextChangedIfNonEmpty;
- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5;
- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4;
- (void)pendingVideoConferenceUpdated:(id)a3;
- (void)searchBecomeFirstResponder;
- (void)searchDoneTapped;
- (void)searchResignFirstResponder;
- (void)searchTextChanged:(id)a3 allowClearingCheckedVirtualConference:(BOOL)a4;
- (void)selectedRoomType:(id)a3;
- (void)selectedTextFieldChanged:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setSelectedConferenceRoom:(id)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)useAsString:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation EKLocationEditItemViewController

- (EKLocationEditItemViewController)initWithFrame:(CGRect)a3 calendarItem:(id)a4 eventStore:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = EKLocationEditItemViewController;
  v14 = [(EKEditItemViewController *)&v21 initWithFrame:x, y, width, height];
  if (v14)
  {
    v15 = [[EKUILocationSearchModel alloc] initWithEventStore:v13];
    searchModel = v14->_searchModel;
    v14->_searchModel = v15;

    [(EKUILocationSearchModel *)v14->_searchModel setDelegate:v14];
    objc_storeStrong(&v14->_calendarItem, a4);
    v14->_autoFillSelectedTextField = 1;
    v14->_supportedSearchTypes = 2047;
    v14->_shouldShowCheckedVirtualConference = 1;
    v17 = [(EKCalendarItem *)v14->_calendarItem calendar];
    v18 = [v17 source];
    v19 = [v18 constraints];
    v14->_supportsStructuredLocations = [v19 supportsStructuredLocations];

    [(EKLocationEditItemViewController *)v14 setDefinesPresentationContext:1];
  }

  return v14;
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

  v4 = [(EKLocationEditItemViewController *)self _singleSearchBar];
  v5 = [(EKLocationEditItemViewController *)self locationViewModel];
  v6 = [v5 location];

  if (!v4)
  {
    v13 = [(EKLocationEditItemViewController *)self conferenceViewModel];
    v11 = [v13 conference];

    v14 = [(EKLocationEditItemViewController *)self autoFillSelectedTextField]|| [(EKLocationEditItemViewController *)self conferenceTextFieldSelected];
    if ([(EKLocationEditItemViewController *)self autoFillSelectedTextField])
    {
      v15 = 1;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = ![(EKLocationEditItemViewController *)self conferenceTextFieldSelected];
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v16 = [v6 address];

    if (v16)
    {
      v17 = MEMORY[0x1E6992FD8];
      v18 = [v6 title];
      v19 = [v6 address];
      v20 = [v17 fullDisplayStringWithTitle:v18 address:v19];

      v21 = [v20 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      v22 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
      [v22 setText:v21];
    }

    else
    {
      v24 = [v6 title];

      if (!v24)
      {
        goto LABEL_26;
      }

      v20 = [v6 title];
      v21 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
      [v21 setText:v20];
    }

LABEL_26:
    if (!v15)
    {
      goto LABEL_32;
    }

    if (v11)
    {
      v25 = MEMORY[0x1E69933C0];
      v26 = [v11 joinMethods];
      v27 = [v26 firstObject];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __47__EKLocationEditItemViewController_viewDidLoad__block_invoke;
      v31[3] = &unk_1E843EEB0;
      v31[4] = self;
      [v25 displayDetailsForJoinMethod:v27 completionHandler:v31];

      return;
    }

    v28 = [(EKLocationEditItemViewController *)self conferenceViewModel];

    if (!v28)
    {
      goto LABEL_32;
    }

    v12 = EventKitUIBundle();
    v29 = [v12 localizedStringForKey:@"Pending Video Call" value:&stru_1F4EF6790 table:0];
    v30 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    [v30 setText:v29];

    goto LABEL_31;
  }

  if (self->_autoFillSelectedTextField)
  {
    v7 = [v6 address];

    if (v7)
    {
      v8 = MEMORY[0x1E6992FD8];
      v9 = [v6 title];
      v10 = [v6 address];
      v11 = [v8 fullDisplayStringWithTitle:v9 address:v10];

      v12 = [v11 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      [(EKLocationEditItemViewController *)self setSearchText:v12];
LABEL_31:

      goto LABEL_32;
    }

    v23 = [v6 title];

    if (v23)
    {
      v11 = [v6 title];
      [(EKLocationEditItemViewController *)self setSearchText:v11];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EKLocationEditItemViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5.receiver = self;
  v5.super_class = EKLocationEditItemViewController;
  [(EKLocationEditItemViewController *)&v5 viewDidAppear:v3];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = EKLocationEditItemViewController;
  [(EKLocationEditItemViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
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
  v7 = [(EKLocationEditItemViewController *)self view];
  [v7 addSubview:self->_tableView];

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
    v14 = [(EKLocationEditItemViewController *)self navigationItem];
    [v14 setPreferredSearchBarPlacement:2];

    v15 = [(EKLocationEditItemViewController *)self navigationItem];
    v87 = v13;
    [v15 setSearchController:v13];

    v16 = [(EKLocationEditItemViewController *)self navigationItem];
    [v16 setHidesSearchBarWhenScrolling:0];

    v17 = [v13 searchBar];
    searchBar = self->_searchBar;
    self->_searchBar = v17;

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
    v23 = [(UISearchBar *)self->_searchBar searchField];
    [v23 setAccessibilityIdentifier:@"location-video-call-search-field"];

    v71 = MEMORY[0x1E696ACD8];
    v82 = [(UITableView *)self->_tableView topAnchor];
    v84 = [(EKLocationEditItemViewController *)self view];
    v80 = [v84 topAnchor];
    v78 = [v82 constraintEqualToAnchor:v80];
    v92[0] = v78;
    v74 = [(UITableView *)self->_tableView bottomAnchor];
    v76 = [(EKLocationEditItemViewController *)self view];
    v72 = [v76 bottomAnchor];
    v24 = [v74 constraintEqualToAnchor:v72];
    v92[1] = v24;
    v25 = [(UITableView *)self->_tableView leadingAnchor];
    v26 = [(EKLocationEditItemViewController *)self view];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v92[2] = v28;
    v29 = [(UITableView *)self->_tableView trailingAnchor];
    v30 = [(EKLocationEditItemViewController *)self view];
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
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
    v83 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView topAnchor];
    v85 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    v81 = [v85 topAnchor];
    v79 = [v83 constraintEqualToAnchor:v81];
    v91[0] = v79;
    v75 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView leadingAnchor];
    v77 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    v73 = [v77 leadingAnchor];
    v70 = [v75 constraintEqualToAnchor:v73 constant:20.0];
    v91[1] = v70;
    v69 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    v68 = [v69 trailingAnchor];
    v67 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:20.0];
    v91[2] = v66;
    v64 = [(_UINavigationBarPalette *)self->_palette safeAreaLayoutGuide];
    v63 = [v64 bottomAnchor];
    v62 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView bottomAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:15.0];
    v91[3] = v61;
    v59 = [(UITableView *)self->_tableView topAnchor];
    v60 = [(EKLocationEditItemViewController *)self view];
    v58 = [v60 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v91[4] = v57;
    v55 = [(UITableView *)self->_tableView bottomAnchor];
    v56 = [(EKLocationEditItemViewController *)self view];
    v54 = [v56 bottomAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v91[5] = v53;
    v40 = [(UITableView *)self->_tableView leadingAnchor];
    v41 = [(EKLocationEditItemViewController *)self view];
    v42 = [v41 leadingAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    v91[6] = v43;
    v44 = [(UITableView *)self->_tableView trailingAnchor];
    v45 = [(EKLocationEditItemViewController *)self view];
    v46 = [v45 trailingAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    v91[7] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [v65 activateConstraints:v48];

    v49 = self->_palette;
    v50 = [(EKLocationEditItemViewController *)self navigationItem];
    [v50 _setBottomPalette:v49];

    if ([(EKLocationEditItemViewController *)self conferenceTextFieldSelected]&& ![(EKLocationEditItemViewController *)self disableConferenceTextField])
    {
      v51 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    }

    else
    {
      v51 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];
    }

    v52 = v51;
    [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView setSelectedTextField:v51];

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
  v3 = [(EKLocationEditItemViewController *)self searchText];
  v4 = v3;
  LOBYTE(v5) = 0;
  if ((self->_supportedSearchTypes & 0x80) != 0 && v3)
  {
    v5 = [v3 isEqualToString:&stru_1F4EF6790] ^ 1;
  }

  return v5;
}

- (BOOL)showingCurrentLocationRow
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Current Location" value:&stru_1F4EF6790 table:0];

  v5 = [(EKLocationEditItemViewController *)self searchText];
  v6 = v5;
  v7 = v5 && ([v5 isEqualToString:&stru_1F4EF6790] & 1) == 0 && objc_msgSend(v4, "compare:options:", v6, 9) == 0;
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

  v4 = [(EKLocationEditItemViewController *)self searchText];
  if ([v4 length])
  {
    v2 = 1;
  }

  else
  {
    v5 = [(EKLocationEditItemViewController *)self traitCollection];
    v2 = EKUIUsesLargeTextLayout(v5);
  }

  return v2;
}

- (void)useAsString:(id)a3
{
  if ((self->_supportedSearchTypes & 0x80) != 0)
  {
    v8 = [(EKLocationEditItemViewController *)self searchText];
    if ([v8 length])
    {
      v5 = MEMORY[0x1E6966B08];
      v6 = [(EKLocationEditItemViewController *)self searchText];
      v7 = [v5 locationWithTitle:v6];
      [(EKLocationEditItemViewController *)self setSelectedLocation:v7];
    }

    [(EKLocationEditItemViewController *)self searchResignFirstResponder];
  }
}

- (void)setSelectedConferenceRoom:(id)a3
{
  objc_storeStrong(&self->_selectedConferenceRoom, a3);
  v5 = a3;
  searchModel = self->_searchModel;
  v8 = [(EKCalendarItem *)self->_calendarItem calendar];
  v7 = [v8 source];
  [(EKUILocationSearchModel *)searchModel addConferenceRoomToRecents:v5 fromSource:v7];
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 2)
  {
    v5 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [v4 row]);
    v6 = [v5 recent];

    v7 = [MEMORY[0x1E6966AA8] locationForRecent:v6];
LABEL_3:
    v8 = v7;
LABEL_4:

LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  if ([v4 section] != 5)
  {
    if ([v4 section] == 4)
    {
      v18 = 1192;
    }

    else
    {
      if ([v4 section] != 6)
      {
        if ([v4 section] == 1)
        {
          v6 = -[NSArray objectAtIndex:](self->_searchModelVirtualConferenceRoomSearchResults, "objectAtIndex:", [v4 row]);
          v28 = MEMORY[0x1E6966B08];
          v29 = [v6 title];
          v8 = [v28 locationWithTitle:v29];

          goto LABEL_4;
        }

LABEL_32:
        v22 = 0;
        goto LABEL_33;
      }

      v18 = 1224;
    }

    v19 = *(&self->super.super.super.super.isa + v18);
    v20 = [v4 row];
    searchModelFrequentsSearchResults = v19;
LABEL_18:
    v17 = [(NSArray *)searchModelFrequentsSearchResults objectAtIndex:v20];
    goto LABEL_19;
  }

  v9 = [v4 row];
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
    v17 = [(EKStructuredLocationWithImage *)self->_searchModelLocationFromMapsURL location];
LABEL_19:
    v8 = v17;
    goto LABEL_20;
  }

  if (v9 < v14)
  {
    v6 = [(NSArray *)self->_searchModelEventsSearchResults objectAtIndex:v9];
    v7 = [v6 location];
    goto LABEL_3;
  }

  v26 = v16;
  v27 = v15 + v14;
  if ([v4 row] < v27)
  {
    searchModelFrequentsSearchResults = self->_searchModelFrequentsSearchResults;
    v20 = v9 - v14;
    goto LABEL_18;
  }

  if ([v4 row] >= (v26 + v27))
  {
    goto LABEL_32;
  }

  v30 = [(NSArray *)self->_searchModelMapCompletionSearchResults count];
  if ([v4 row] - v27 >= v30)
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

- (id)conferenceRoomForRecent:(id)a3
{
  v4 = a3;
  if (!self->_cachedConferenceRooms)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    cachedConferenceRooms = self->_cachedConferenceRooms;
    self->_cachedConferenceRooms = v5;
  }

  v7 = [(EKCalendarItem *)self->_calendarItem calendar];
  v8 = [v7 source];

  v9 = [MEMORY[0x1E6966AA8] directoryLocationForRecent:v4 onSource:v8];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v9 preferredAddress];
  v12 = [v8 externalID];
  v13 = [v10 stringWithFormat:@"%@.%@", v11, v12];

  v14 = [(NSMutableDictionary *)self->_cachedConferenceRooms objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(EKUIConferenceRoom);
    [(EKUIConferenceRoom *)v14 setLocation:v9];
    [(EKUIConferenceRoom *)v14 setAvailability:0];
    v15 = [v8 constraints];
    -[EKUIConferenceRoom setSupportsAvailability:](v14, "setSupportsAvailability:", [v15 supportsAvailabilityRequests]);

    [(NSMutableDictionary *)self->_cachedConferenceRooms setObject:v14 forKey:v13];
  }

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        if (a4 != 2)
        {
          goto LABEL_19;
        }

        v8 = 1200;
        goto LABEL_18;
      }

      v19 = [(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows];
      v20 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
      if (v19)
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
      v9 = [(EKLocationEditItemViewController *)self showingCurrentLocationRow];
      v10 = 1;
      if (v7)
      {
        v10 = 2;
      }

      if (v9)
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
    if (a4 <= 4)
    {
      if (a4 == 3)
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

    if (a4 != 5)
    {
      if (a4 != 6)
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
    v13 = [objc_opt_class() _sectionNameForSection:a4];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v21 = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Number of rows for section [%@]: [%@]", &v21, 0x16u);
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = a4;
  if (![(EKLocationEditItemViewController *)self needsSave])
  {
    [(EKLocationEditItemViewController *)self setNeedsSave:1];
    if (![v21 section])
    {
      if ([v21 row] || !-[EKLocationEditItemViewController showingTextRow](self, "showingTextRow"))
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

    if ([v21 section] == 3)
    {
      v5 = -[NSArray objectAtIndex:](self->_searchModelConferenceRoomSearchResults, "objectAtIndex:", [v21 row]);
      [(EKLocationEditItemViewController *)self setSelectedConferenceRoom:v5];
      v6 = [v5 location];
      v7 = [v6 displayName];
      [(EKLocationEditItemViewController *)self setSearchText:v7];

LABEL_5:
      [(EKLocationEditItemViewController *)self searchResignFirstResponder];
      [(EKEditItemViewController *)self saveAndDismiss];
LABEL_6:

      goto LABEL_20;
    }

    if ([v21 section] == 2)
    {
      v8 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [v21 row]);
      v5 = [v8 recent];

      if ([MEMORY[0x1E6966AA8] recentIsDirectoryLocation:v5])
      {
        v9 = [(EKLocationEditItemViewController *)self conferenceRoomForRecent:v5];
        [(EKLocationEditItemViewController *)self setSelectedConferenceRoom:v9];
        v10 = [v9 location];
        v11 = [v10 displayName];
        [(EKLocationEditItemViewController *)self setSearchText:v11];

        [(EKLocationEditItemViewController *)self searchResignFirstResponder];
        [(EKEditItemViewController *)self saveAndDismiss];

        goto LABEL_6;
      }

LABEL_24:
      v5 = [(EKLocationEditItemViewController *)self itemAtIndexPath:v21];
      EKWeakLinkClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v5;
        if (!v16)
        {
          goto LABEL_6;
        }

        v17 = v16;
        v18 = [v16 address];

        if (v18)
        {
          [(EKUILocationSearchModel *)self->_searchModel selectLocation:v17];
        }

        else
        {
          v20 = [v17 title];
          [(EKLocationEditItemViewController *)self setSearchText:v20];

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

        v19 = v5;
        if (!v19)
        {
          goto LABEL_6;
        }

        [(EKUILocationSearchModel *)self->_searchModel selectMapSearchCompletion:v19];
      }

      goto LABEL_6;
    }

    if ([v21 section] != 1)
    {
      goto LABEL_24;
    }

    if ([(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows])
    {
      v12 = [v21 row];
      v13 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
      v14 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults count];
      if (v12 < v13)
      {
        v15 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults objectAtIndex:v12];
LABEL_33:
        v5 = v15;
        [(EKLocationEditItemViewController *)self selectedRoomType:v15];
        goto LABEL_6;
      }

      if (v12 < (v14 + v13))
      {
        v5 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults objectAtIndex:v12 - v13];
        [(EKLocationEditItemViewController *)self setSelectedVirtualConference:v5];
        goto LABEL_5;
      }
    }

    else if ([(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count]== 1)
    {
      v15 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults firstObject];
      goto LABEL_33;
    }
  }

LABEL_20:
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 <= 3)
  {
    switch(a4)
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
    if (a4 <= 5)
    {
      v6 = EventKitUIBundle();
      v7 = v6;
      if (a4 == 4)
      {
        v8 = @"Contacts";
      }

      else
      {
        v8 = @"Map Locations";
      }

      goto LABEL_21;
    }

    if (a4 != 6)
    {
      if (a4 == 7)
      {
        v9 = kEKUILogEventEditorHandle;
        if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = 134217984;
          v17 = 7;
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
        v17 = a4;
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
    v14 = [objc_opt_class() _sectionNameForSection:a4];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Returning header name [%@] for section [%@]", &v16, 0x16u);
  }

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = 0;
  v90 = v8;
  v91 = v7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      v10 = self;
      if (v8 != 6)
      {
        if (v8 == 7)
        {
          v9 = objc_opt_new();
        }

        goto LABEL_41;
      }

      v51 = objc_opt_class();
      v12 = NSStringFromClass(v51);
      v9 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
      v16 = [v9 defaultContentConfiguration];
      v33 = -[NSArray objectAtIndex:](self->_searchModelTextualSearchResults, "objectAtIndex:", [v7 row]);
      v52 = [v33 title];
      [v16 setText:v52];

      v53 = [v33 address];
      [v16 setSecondaryText:v53];

      v54 = [v16 secondaryText];
      v55 = [v54 length];

      if (!v55)
      {
LABEL_38:
        [v9 setContentConfiguration:v16];

LABEL_39:
        goto LABEL_40;
      }

      v35 = [objc_opt_class() _boldTitleFont];
      v36 = [v16 textProperties];
      [v36 setFont:v35];
      goto LABEL_36;
    }

    v10 = self;
    if (v8 == 4)
    {
      v37 = objc_opt_class();
      v12 = NSStringFromClass(v37);
      v9 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
      v16 = [v9 defaultContentConfiguration];
      v33 = -[NSArray objectAtIndex:](self->_searchModelContactsSearchResults, "objectAtIndex:", [v7 row]);
      v38 = [v33 contactLabel];
      [v16 setText:v38];

      v39 = [v33 title];
      v40 = [v39 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];
      [v16 setSecondaryText:v40];

      v41 = [v16 secondaryText];
      v42 = [v41 length];

      if (v42)
      {
        v43 = [objc_opt_class() _boldTitleFont];
        v44 = [v16 textProperties];
        [v44 setFont:v43];
      }

      v35 = [(EKLocationEditItemViewController *)self contactsImage];
      [v16 setImage:v35];
      goto LABEL_37;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v9 = [v6 dequeueReusableCellWithIdentifier:v18 forIndexPath:v7];
    v87 = [v9 defaultContentConfiguration];
    v88 = v18;
    v86 = v6;
    v19 = [v7 row];
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
        v10 = self;
        if (v19 < (v85 + v22))
        {
          [(NSArray *)self->_searchModelFrequentsSearchResults objectAtIndex:v76];
          v6 = v86;
          v25 = v87;
          v27 = v26 = v88;
          v28 = [v27 title];
          v29 = [v27 address];
          v77 = MapPinImage();
          goto LABEL_59;
        }

        v25 = v87;
        v26 = v88;
        if (v19 >= (v23 + v85 + v22) || v83 >= [(NSArray *)v10->_searchModelMapCompletionSearchResults count])
        {
          v77 = 0;
          v29 = 0;
          v28 = 0;
          v6 = v86;
          goto LABEL_60;
        }

        [(NSArray *)v10->_searchModelMapCompletionSearchResults objectAtIndex:v83];
        v27 = v6 = v86;
        v28 = [v27 title];
        v29 = [v27 subtitle];
        v24 = [v27 mapItem];
        v30 = ImageForMapItem(v24);
      }

      else
      {
        v10 = self;
        [(NSArray *)self->_searchModelEventsSearchResults objectAtIndex:v19];
        v6 = v86;
        v25 = v87;
        v27 = v26 = v88;
        v24 = [v27 location];
        v28 = [(EKStructuredLocationWithImage *)v24 title];
        v29 = [(EKStructuredLocationWithImage *)v24 address];
        v30 = [v27 image];
      }
    }

    else
    {
      v24 = self->_searchModelLocationFromMapsURL;
      [(EKStructuredLocationWithImage *)v24 location];
      v6 = v86;
      v25 = v87;
      v27 = v26 = v88;
      v28 = [v27 title];
      v29 = [v27 address];
      v30 = [(EKStructuredLocationWithImage *)v24 image];
    }

    v77 = v30;

LABEL_59:
LABEL_60:
    [v25 setText:v28];
    [v25 setSecondaryText:v29];
    [v25 setImage:v77];
    v78 = [v25 secondaryText];
    v79 = [v78 length];

    if (v79)
    {
      v80 = [objc_opt_class() _boldTitleFont];
      v81 = [v25 textProperties];
      [v81 setFont:v80];
    }

    [v9 setContentConfiguration:v25];

    goto LABEL_41;
  }

  if (v8 > 1)
  {
    v10 = self;
    if (v8 != 2)
    {
      v12 = -[NSArray objectAtIndex:](self->_searchModelConferenceRoomSearchResults, "objectAtIndex:", [v7 row]);
      v9 = [(EKLocationEditItemViewController *)self _cellForConferenceRoom:v12 atIndexPath:v7];
LABEL_40:

      goto LABEL_41;
    }

    v89 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [v7 row]);
    v45 = [v89 recent];
    if ([MEMORY[0x1E6966AA8] recentIsDirectoryLocation:v45])
    {
      v46 = [(EKLocationEditItemViewController *)self conferenceRoomForRecent:v45];
      v10 = self;
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:v48 forIndexPath:v7];
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
      v65 = [MEMORY[0x1E6966AA8] locationForRecent:v45];
      v10 = self;
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v9 = [v6 dequeueReusableCellWithIdentifier:v67 forIndexPath:v7];
      v68 = [v9 defaultContentConfiguration];
      v69 = [v65 title];
      [v68 setText:v69];

      v70 = [v65 address];
      [v68 setSecondaryText:v70];

      v71 = [v68 secondaryText];
      v72 = [v71 length];

      if (v72)
      {
        v73 = [objc_opt_class() _boldTitleFont];
        v74 = [v68 textProperties];
        [v74 setFont:v73];
      }

      v75 = [v65 contactLabel];

      if (v75)
      {
        [(EKLocationEditItemViewController *)v10 contactsImage];
      }

      else
      {
        [v89 image];
      }
      v84 = ;
      [v68 setImage:v84];

      [v9 setContentConfiguration:v68];
    }

    goto LABEL_41;
  }

  v10 = self;
  if (!v8)
  {
    v31 = objc_opt_class();
    v12 = NSStringFromClass(v31);
    v9 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
    if ([v7 row] || !-[EKLocationEditItemViewController showingTextRow](self, "showingTextRow"))
    {
      if (![(EKLocationEditItemViewController *)self showingCurrentLocationRow])
      {
        goto LABEL_40;
      }

      v16 = [v9 defaultContentConfiguration];
      v58 = EventKitUIBundle();
      v59 = [v58 localizedStringForKey:@"Current Location" value:&stru_1F4EF6790 table:0];
      [v16 setText:v59];

      v60 = [(EKLocationEditItemViewController *)self locationArrowImage];
      [v16 setImage:v60];

      [v9 setContentConfiguration:v16];
      goto LABEL_39;
    }

    v16 = [v9 defaultContentConfiguration];
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];

    v34 = MEMORY[0x1E696AEC0];
    v35 = [(EKLocationEditItemViewController *)self searchText];
    v36 = [v34 localizedStringWithFormat:v33, v35];
    [v16 setText:v36];
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (v8 != 1)
  {
    goto LABEL_41;
  }

  if ([(EKLocationEditItemViewController *)self showAvailableConferenceTypesAsRows])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
    [v9 setAccessoryType:0];
    v13 = [v7 row];
    v14 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults count];
    v15 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults count];
    if (v13 >= v14)
    {
      v10 = self;
      if (v13 >= (v15 + v14))
      {
        goto LABEL_40;
      }

      v16 = [(NSArray *)self->_searchModelVirtualConferenceCustomSearchResults objectAtIndex:v13 - v14];
      [v9 updateWithCustomVirtualConference:v16];
    }

    else
    {
      v16 = [(NSArray *)self->_searchModelVirtualConferenceRoomSearchResults objectAtIndex:v13];
      v10 = self;
      [v9 updateWithRoomType:v16];
      if (self->_shouldShowCheckedVirtualConference && [v16 isEqual:self->_checkedRoomType])
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
    v9 = [v6 dequeueReusableCellWithIdentifier:v63 forIndexPath:v7];
    [v9 setAccessoryType:0];
    v64 = [(NSArray *)v61 firstObject];
    [v9 updateWithRoomType:v64];
  }

  else
  {
    v82 = objc_opt_class();
    v63 = NSStringFromClass(v82);
    v9 = [v6 dequeueReusableCellWithIdentifier:v63 forIndexPath:v7];
    [v9 setDelegate:self];
    [v9 setRoomTypes:v61];
  }

LABEL_41:
  if (![v9 accessoryType])
  {
    [v9 setAccessoryType:{-[EKLocationEditItemViewController _accessoryTypeForSection:](v10, "_accessoryTypeForSection:", v90)}];
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

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v36 = [(EKLocationEditItemViewController *)self itemAtIndexPath:v5];
  v35 = [(EKLocationEditItemViewController *)self _rowNameForIndexPath:v5];

  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row name: %@\n\nData description:\n%@", v35, v36];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setNumberOfLines:0];
  [v6 setText:v33];
  v7 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v9 = [v7 view];
  [v9 setBackgroundColor:v8];

  v10 = [v7 view];
  [v10 addSubview:v6];

  v23 = MEMORY[0x1E696ACD8];
  v32 = [v7 view];
  v31 = [v32 layoutMarginsGuide];
  v30 = [v31 leadingAnchor];
  v29 = [v6 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v37[0] = v28;
  v27 = [v7 view];
  v26 = [v27 layoutMarginsGuide];
  v25 = [v26 trailingAnchor];
  v24 = [v6 trailingAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v37[1] = v22;
  v21 = [v7 view];
  v20 = [v21 layoutMarginsGuide];
  v19 = [v20 topAnchor];
  v11 = [v6 topAnchor];
  v12 = [v19 constraintEqualToAnchor:v11];
  v37[2] = v12;
  v13 = [v7 view];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v6 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v37[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v23 activateConstraints:v18];

  [(EKLocationEditItemViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (int64_t)_accessoryTypeForSection:(unint64_t)a3
{
  if (_accessoryTypeForSection__onceToken != -1)
  {
    [EKLocationEditItemViewController _accessoryTypeForSection:];
  }

  v5 = a3 == 5 || a3 == 2;
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  if ([v8 section] == 2)
  {
    v6 = -[NSArray objectAtIndex:](self->_searchModelRecentsSearchResults, "objectAtIndex:", [v8 row]);
    v7 = [v6 recent];

    [(EKUILocationSearchModel *)self->_searchModel removeRecentLocation:v7];
  }
}

- (id)locationArrowImage
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  v12[0] = v3;
  v4 = [MEMORY[0x1E69DC888] systemGray4Color];
  v12[1] = v4;
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
  v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  return v6;
}

- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (!v7 || a5)
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
    v9 = [v7 title];

    if (!v9)
    {
      v10 = [v8 address];
      [v8 setTitle:v10];
    }

    [(EKLocationEditItemViewController *)self setSelectedLocation:v8];
    v11 = [v8 title];
    [(EKLocationEditItemViewController *)self setSearchText:v11];

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

- (BOOL)shouldIncludeConferenceRoom:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  v6 = [v5 displayName];
  v7 = [(EKUILocationRowModel *)self->_locationViewModel location];
  v8 = [v7 title];
  v9 = [v6 isEqualToString:v8];

  v10 = 1;
  if ((v9 & 1) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v11 = [(EKCalendarItem *)self->_calendarItem attendees];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__EKLocationEditItemViewController_shouldIncludeConferenceRoom___block_invoke;
    v13[3] = &unk_1E8441628;
    v14 = v4;
    v15 = self;
    v16 = &v17;
    [v11 enumerateObjectsUsingBlock:v13];

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

- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 currentLocation];
    v9 = [v8 copy];
    searchModelCurrentLocation = self->_searchModelCurrentLocation;
    self->_searchModelCurrentLocation = v9;

    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v11 = [v7 mapCompletionSearchResults];
  v12 = [v11 copy];
  searchModelMapCompletionSearchResults = self->_searchModelMapCompletionSearchResults;
  self->_searchModelMapCompletionSearchResults = v12;

  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = [v7 locationFromMapsURL];
  searchModelLocationFromMapsURL = self->_searchModelLocationFromMapsURL;
  self->_searchModelLocationFromMapsURL = v14;

  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v16 = [v7 contactsSearchResults];
  v17 = [v16 copy];
  searchModelContactsSearchResults = self->_searchModelContactsSearchResults;
  self->_searchModelContactsSearchResults = v17;

  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v19 = [v7 recentsSearchResults];
  v20 = [v19 copy];
  searchModelRecentsSearchResults = self->_searchModelRecentsSearchResults;
  self->_searchModelRecentsSearchResults = v20;

  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22 = [v7 frequentsSearchResults];
  v23 = [v22 copy];
  searchModelFrequentsSearchResults = self->_searchModelFrequentsSearchResults;
  self->_searchModelFrequentsSearchResults = v23;

  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v25 = [v7 eventsSearchResults];
  v26 = [v25 copy];
  searchModelEventsSearchResults = self->_searchModelEventsSearchResults;
  self->_searchModelEventsSearchResults = v26;

  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v28 = [v7 textualSearchResults];
  v29 = [v28 copy];
  searchModelTextualSearchResults = self->_searchModelTextualSearchResults;
  self->_searchModelTextualSearchResults = v29;

  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v31 = [v7 conferenceRoomSearchResults];
  v32 = [v31 copy];
  searchModelConferenceRoomSearchResults = self->_searchModelConferenceRoomSearchResults;
  self->_searchModelConferenceRoomSearchResults = v32;

  if ((v4 & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v34 = [v7 virtualConferenceRoomSearchResults];
  v35 = [v34 copy];
  searchModelVirtualConferenceRoomSearchResults = self->_searchModelVirtualConferenceRoomSearchResults;
  self->_searchModelVirtualConferenceRoomSearchResults = v35;

  v37 = [(EKUILocationRowModel *)self->_conferenceViewModel conference];
  if (v37)
  {
    shouldShowCheckedVirtualConference = self->_shouldShowCheckedVirtualConference;

    if (shouldShowCheckedVirtualConference)
    {
      v39 = MEMORY[0x1E69669E0];
      v40 = [(EKUILocationRowModel *)self->_conferenceViewModel conference];
      v41 = self->_searchModelVirtualConferenceRoomSearchResults;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __75__EKLocationEditItemViewController_locationSearchModel_updatedSearchTypes___block_invoke;
      v45[3] = &unk_1E8441650;
      v45[4] = self;
      [v39 virtualConference:v40 likelyCameFromRoomTypes:v41 completionHandler:v45];
    }
  }

LABEL_24:
  if ((v4 & 0x400) != 0)
  {
    v42 = [v7 virtualConferenceCustomSearchResults];
    v43 = [v42 copy];
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

+ (id)_sectionNameForSection:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8441698[a3];
  }
}

- (id)_rowNameForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _sectionNameForSection:{objc_msgSend(v4, "section")}];
  if ([v4 section] == 5)
  {
    v6 = [v4 row];
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
    if ([v4 row] < (v11 + v10))
    {
      v13 = @"Frequents Search Results";
      goto LABEL_13;
    }

    if ([v4 row] < (v14 + v11 + v10))
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

- (id)_cellForConferenceRoom:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 reloadWithConferenceRoom:v7];

  return v10;
}

- (BOOL)locationViewModelRemoved
{
  searchFieldsView = self->_searchFieldsView;
  if (!searchFieldsView)
  {
    return 0;
  }

  v4 = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView locationTextField];
  v5 = [v4 text];
  v6 = ![v5 length] && !self->_selectedConferenceRoom && self->_selectedLocation == 0;

  return v6;
}

- (BOOL)conferenceViewModelRemoved
{
  searchFieldsView = self->_searchFieldsView;
  if (!searchFieldsView)
  {
    return 0;
  }

  v4 = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView virtualConferenceTextField];
  v5 = [v4 text];
  if ([v5 length])
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

- (void)setSearchText:(id)a3
{
  searchFieldsView = self->_searchFieldsView;
  if (searchFieldsView)
  {
    v4 = a3;
    v6 = [(EKLocationVirtualConferenceSearchFieldsView *)searchFieldsView selectedTextField];
    [v6 setText:v4];
  }

  else
  {
    searchBar = self->_searchBar;
    v6 = a3;
    [(UISearchBar *)searchBar setText:?];
  }
}

- (id)searchText
{
  if (self->_searchFieldsView)
  {
    v2 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    v3 = [v2 text];
  }

  else
  {
    v3 = [(UISearchBar *)self->_searchBar text];
  }

  return v3;
}

- (BOOL)searchIsFirstResponder
{
  if (self->_searchFieldsView)
  {
    v3 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    v4 = [v3 isFirstResponder];

    return v4;
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
    v4 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    [v4 resignFirstResponder];
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
    v4 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView selectedTextField];
    [v4 becomeFirstResponder];
  }

  else
  {
    searchBar = self->_searchBar;

    [(UISearchBar *)searchBar becomeFirstResponder];
  }
}

- (void)kickoffSearchTextChangedIfNonEmpty
{
  v3 = [(EKLocationEditItemViewController *)self searchText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(EKLocationEditItemViewController *)self searchText];
    [(EKLocationEditItemViewController *)self searchTextChanged:v5 allowClearingCheckedVirtualConference:0];
  }
}

- (void)searchTextChanged:(id)a3 allowClearingCheckedVirtualConference:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = [(EKLocationEditItemViewController *)self _focusedTextField];
    v8 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];

    if (v7 == v8)
    {
      self->_shouldShowCheckedVirtualConference = 0;
    }
  }

  if (![(EKLocationEditItemViewController *)self needsSave])
  {
    if (self->_supportsStructuredLocations)
    {
      if (!v6 || [v6 isEqualToString:&stru_1F4EF6790])
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

      v12 = [(EKLocationEditItemViewController *)self searchText];
      v13 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Beginning search for term: [%@]", &v14, 0xCu);
      }

      [(EKUILocationSearchModel *)self->_searchModel beginSearchForTerm:v12];
    }

    else
    {
      [(UITableView *)self->_tableView reloadData];
      if ((self->_supportedSearchTypes & 0x200) != 0)
      {
        v11 = self->_searchModel;
        if ([v6 length])
        {
          v10 = v6;
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
  v2 = self;
  v29 = *MEMORY[0x1E69E9840];
  [(EKLocationEditItemViewController *)self setNeedsSave:1];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v2->_searchModelVirtualConferenceCustomSearchResults;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {

    v6 = 0;
LABEL_14:
    [(EKLocationEditItemViewController *)v2 useAsString:0];
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
      v10 = [v9 joinMethods];
      v11 = [v10 firstObject];
      v12 = [v11 URL];

      v13 = [v12 absoluteString];
      v14 = v2;
      v15 = [(EKLocationEditItemViewController *)v2 searchText];
      v16 = [v13 rangeOfString:v15];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v9;

        v22 = 1;
        v6 = v17;
      }

      v2 = v14;
    }

    v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v5);

  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = MEMORY[0x1E6992F40];
  v19 = [v6 joinMethods];
  v20 = [v19 firstObject];
  v21 = [v20 URL];
  LODWORD(v18) = [v18 isPreferredURL:v21];

  if (!v18)
  {
    goto LABEL_14;
  }

  [(EKLocationEditItemViewController *)v14 setSelectedVirtualConference:v6];
  [(EKLocationEditItemViewController *)v14 searchResignFirstResponder];
LABEL_15:
  [(EKEditItemViewController *)v2 saveAndDismiss];
}

- (void)selectedTextFieldChanged:(id)a3
{
  searchModel = self->_searchModel;
  v5 = a3;
  [(EKUILocationSearchModel *)searchModel cancelSearch];
  v6 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView locationTextField];

  if (v6 == v5)
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

- (void)selectedRoomType:(id)a3
{
  v4 = a3;
  [(EKLocationEditItemViewController *)self setNeedsSave:1];
  [(EKUILocationSearchModel *)self->_searchModel selectVirtualConferenceRoomType:v4];
  v5 = MEMORY[0x1E6966B38];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__EKLocationEditItemViewController_selectedRoomType___block_invoke;
  v7[3] = &unk_1E8441678;
  v7[4] = self;
  v6 = dispatch_get_global_queue(2, 0);
  [v5 virtualConferenceForRoomType:v4 completion:v7 queue:v6];

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

- (void)pendingVideoConferenceUpdated:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(EKLocationEditItemViewController *)self setSelectedVirtualConference:v4];
    v5 = MEMORY[0x1E69933C0];
    v6 = [v4 joinMethods];
    v7 = [v6 firstObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__EKLocationEditItemViewController_pendingVideoConferenceUpdated___block_invoke;
    v9[3] = &unk_1E843EEB0;
    v9[4] = self;
    [v5 displayDetailsForJoinMethod:v7 completionHandler:v9];
  }

  else
  {
    v8 = [(EKLocationVirtualConferenceSearchFieldsView *)self->_searchFieldsView virtualConferenceTextField];
    [v8 setText:&stru_1F4EF6790];

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
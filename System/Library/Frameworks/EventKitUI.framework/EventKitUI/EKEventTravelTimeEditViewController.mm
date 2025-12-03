@interface EKEventTravelTimeEditViewController
+ (id)_cannotProvideDirectionsLocalizedString;
+ (id)_directionsCouldNotBeFoundLocalizedString;
+ (id)_okLocalizedString;
+ (id)_startingLocationLocalizedString;
+ (id)_travelTimeLocalizedString;
- (BOOL)editItemViewControllerSave:(id)save;
- (BOOL)setTravelTimeSelectedChoiceEstimatedRowAtIndex:(unint64_t)index;
- (EKEventTravelTimeEditViewController)initWithFrame:(CGRect)frame calendarItem:(id)item eventStore:(id)store;
- (NSString)description;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_errorStringForMapKitErrorCode:(unint64_t)code;
- (id)_indexPathForSelectedTravelTime;
- (id)_routeEstimationControler;
- (id)_stringForOriginLocation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_cellStyleForIndexPath:(id)path;
- (int64_t)_numberOfEstimatedTravelTimeResultRows;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_customTravelTimeSection;
- (unint64_t)_estimatedTravelTimeSection;
- (unint64_t)_externallySetValueTravelTimeSection;
- (void)_autoselectFromAvailableChoices;
- (void)_checkItemAtIndexPath:(id)path;
- (void)_contentCategorySizeChanged:(id)changed;
- (void)_handleEstimationControllerTravelTimeLookupErrors;
- (void)_handleOriginLocationErrorsWithAlert:(BOOL)alert;
- (void)_layoutShadowView;
- (void)_locationsChanged;
- (void)_originLocationButtonWasTapped;
- (void)_setEstimationActive:(BOOL)active;
- (void)_showRouteEstimationAlert;
- (void)_travelTimeActivationSwitchChanged:(id)changed;
- (void)_updateTableView;
- (void)_updateVisibleSections;
- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)routeEstimationControllerDidBeginTravelTimeLookup:(id)lookup;
- (void)routeEstimationControllerDidFinishOriginLocationLookup:(id)lookup;
- (void)routeEstimationControllerDidFinishTravelTimeLookup:(id)lookup;
- (void)setArrivalDate:(id)date;
- (void)setCell:(id)cell checked:(BOOL)checked;
- (void)setDestinationStructuredLocation:(id)location;
- (void)setOriginStructuredLocation:(id)location;
- (void)setTravelTimeSelectedChoice:(int64_t)choice;
- (void)setTravelTimeSelectedChoiceToFirstValidEstimatedRow;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKEventTravelTimeEditViewController

- (EKEventTravelTimeEditViewController)initWithFrame:(CGRect)frame calendarItem:(id)item eventStore:(id)store
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = EKEventTravelTimeEditViewController;
  height = [(EKEditItemViewController *)&v25 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    height->_initFrame.origin.x = x;
    height->_initFrame.origin.y = y;
    height->_initFrame.size.width = width;
    height->_initFrame.size.height = height;
    objc_storeStrong(&height->_eventStore, store);
    objc_storeStrong(&v15->_calendarItem, item);
    v15->_isOriginSelectionVisible = 0;
    routeEstimationErrorMessage = v15->_routeEstimationErrorMessage;
    v15->_routeEstimationErrorMessage = 0;

    v15->_suppressErrors = 1;
    _travelTimeLocalizedString = [objc_opt_class() _travelTimeLocalizedString];
    [(EKEventTravelTimeEditViewController *)v15 setTitle:_travelTimeLocalizedString];

    v15->_travelTimeSelectedChoice = 7;
    _routeEstimationControler = [(EKEventTravelTimeEditViewController *)v15 _routeEstimationControler];
    objc_initWeak(&location, v15);
    v26[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__EKEventTravelTimeEditViewController_initWithFrame_calendarItem_eventStore___block_invoke;
    v22[3] = &unk_1E843EBE8;
    objc_copyWeak(&v23, &location);
    v20 = [(EKEventTravelTimeEditViewController *)v15 registerForTraitChanges:v19 withHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __77__EKEventTravelTimeEditViewController_initWithFrame_calendarItem_eventStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E6992FD8] routeTypeStringForCalLocationRoutingMode:{-[EKEventTravelTimeEditViewController selectedRoutingMode](self, "selectedRoutingMode")}];
  originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  title = [originStructuredLocation title];
  destinationStructuredLocation = [(EKEventTravelTimeEditViewController *)self destinationStructuredLocation];
  title2 = [destinationStructuredLocation title];
  [(EKEventTravelTimeEditViewController *)self selectedTravelTime];
  v10 = CUIKDisplayStringForTravelTimeUsingShortFormat();
  v11 = [v3 stringWithFormat:@"%@ [%p] - %@ from %@ to %@, taking %@", v4, self, v5, title, title2, v10];

  return v11;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = EKEventTravelTimeEditViewController;
  [(EKEventTravelTimeEditViewController *)&v8 loadView];
  [(EKEventTravelTimeEditViewController *)self _handleOriginLocationErrorsWithAlert:0];
  self->_originalSelectedTravelTime = self->_selectedTravelTime;
  self->_originalSelectedRoutingMode = self->_selectedRoutingMode;
  v3 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  switchControl = self->_switchControl;
  self->_switchControl = v3;

  [(UISwitch *)self->_switchControl addTarget:self action:sel__travelTimeActivationSwitchChanged_ forControlEvents:4096];
  [(UISwitch *)self->_switchControl setOn:[(EKEventTravelTimeEditViewController *)self _showingOptionsInitialState] animated:0];
  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  table = self->_table;
  self->_table = v6;

  [(UITableView *)self->_table setDataSource:self];
  [(UITableView *)self->_table setDelegate:self];
  [(UITableView *)self->_table setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(EKEventTravelTimeEditViewController *)self resetBackgroundColor];
  if (EKUIUnscaledCatalyst())
  {
    [(UITableView *)self->_table setRowHeight:EKUIUnscaledCatalystTableRowHeightDefault()];
    [(UITableView *)self->_table setSeparatorStyle:1];
  }

  [(EKEventTravelTimeEditViewController *)self setView:self->_table];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  table = self->_table;
  if (isPresentedInsidePopover)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v5 = ;
  [(UITableView *)table setBackgroundColor:v5];
}

- (void)viewDidLoad
{
  [(EKEventTravelTimeEditViewController *)self selectedTravelTime];
  self->_customTravelTimeDuration = v3;
  v4.receiver = self;
  v4.super_class = EKEventTravelTimeEditViewController;
  [(EKEditItemViewController *)&v4 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EKEventTravelTimeEditViewController;
  [(EKEditItemViewController *)&v6 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  [(EKEventTravelTimeEditViewController *)self _updateVisibleSections];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EKEventTravelTimeEditViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = EKEventTravelTimeEditViewController;
  [(EKEventTravelTimeEditViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = EKEventTravelTimeEditViewController;
  [(EKEditItemViewController *)&v5 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKEventTravelTimeEditViewController;
  [(EKEventTravelTimeEditViewController *)&v3 viewDidLayoutSubviews];
  [(EKEventTravelTimeEditViewController *)self _layoutShadowView];
}

- (void)_contentCategorySizeChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__EKEventTravelTimeEditViewController__contentCategorySizeChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (id)_travelTimeLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Travel Time" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)_layoutShadowView
{
  _numberOfEstimatedTravelTimeResultRows = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
  customTimesGroupIsShowing = self->_customTimesGroupIsShowing;
  table = self->_table;
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[EKEventTravelTimeEditViewController _numberOfEstimatedTravelTimeResultRows](self inSection:{"_numberOfEstimatedTravelTimeResultRows") - 1, -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
  v24 = [(UITableView *)table cellForRowAtIndexPath:v6];

  if (!customTimesGroupIsShowing || _numberOfEstimatedTravelTimeResultRows == 0 || v24 == 0)
  {
    [(UIView *)self->_shadowView removeFromSuperview];
  }

  else
  {
    v9 = self->_table;
    [v24 bounds];
    [(UITableView *)v9 convertRect:v24 fromView:?];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v14 = CGRectGetMaxY(v26) + -1.0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v15 = CGRectGetWidth(v27);
    v16 = EKUIScaleFactor();
    shadowView = self->_shadowView;
    v18 = 2.0 / v16;
    if (!shadowView)
    {
      v19 = objc_alloc(MEMORY[0x1E69DD250]);
      v20 = [v19 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
      v21 = self->_shadowView;
      self->_shadowView = v20;

      v22 = self->_shadowView;
      v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.788235294 alpha:1.0];
      [(UIView *)v22 setBackgroundColor:v23];

      [(UIView *)self->_shadowView setAutoresizingMask:2];
      shadowView = self->_shadowView;
    }

    [(UIView *)shadowView setFrame:x, v14, v15, v18];
    [(UITableView *)self->_table addSubview:self->_shadowView];
    [(UITableView *)self->_table bringSubviewToFront:self->_shadowView];
  }
}

- (void)_updateVisibleSections
{
  checkedItem = self->_checkedItem;
  self->_checkedItem = 0;

  _showingOptions = [(EKEventTravelTimeEditViewController *)self _showingOptions];
  externallySetValueGroupIsShowing = self->_externallySetValueGroupIsShowing;
  if (!_showingOptions)
  {
    externallySetValueGroupIsShowing = 0;
  }

  self->_externallySetValueGroupIsShowing = externallySetValueGroupIsShowing;
  self->_customTimesGroupIsShowing = _showingOptions;
  self->_estimationGroupIsShowing &= _showingOptions;
  originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  if (!originStructuredLocation || (v7 = originStructuredLocation, -[EKEventTravelTimeEditViewController originStructuredLocation](self, "originStructuredLocation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isStructured], v8, v7, (v9 & 1) == 0))
  {
    routeEstimationControler = self->_routeEstimationControler;
    arrivalDate = [(EKEventTravelTimeEditViewController *)self arrivalDate];
    [(EKTravelRouteEstimationController *)routeEstimationControler setArrivalDate:arrivalDate];

    _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    [_routeEstimationControler beginOriginLocationEstimationLookup];
  }

  [(EKEventTravelTimeEditViewController *)self _locationsChanged];
}

- (void)_autoselectFromAvailableChoices
{
  self->_estimatedRowIsChecked = 0;
  self->_externallySetValueGroupIsShowing = 0;
  if ([(EKEventTravelTimeEditViewController *)self _showingOptions])
  {
    _indexPathForSelectedTravelTime = [(EKEventTravelTimeEditViewController *)self _indexPathForSelectedTravelTime];
    v12 = _indexPathForSelectedTravelTime;
    if (_indexPathForSelectedTravelTime)
    {
      if (self->_estimationGroupIsShowing)
      {
        section = [_indexPathForSelectedTravelTime section];
        v5 = section == [(EKEventTravelTimeEditViewController *)self _customTravelTimeSection];
        _indexPathForSelectedTravelTime = v12;
        if (v5)
        {
          v6 = [v12 row];
          v7 = v6 < [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
          _indexPathForSelectedTravelTime = v12;
          if (v7)
          {
            self->_estimatedRowIsChecked = 1;
            [(EKEventTravelTimeEditViewController *)self setTravelTimeSelectedChoice:6];
            [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v12];
LABEL_17:

            return;
          }
        }
      }

      v8 = [_indexPathForSelectedTravelTime row];
      v9 = v8 - [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
      selfCopy3 = self;
    }

    else
    {
      [(EKEventTravelTimeEditViewController *)self selectedTravelTime];
      if (v11 <= 0.0)
      {
        selfCopy3 = self;
        v9 = 2;
      }

      else
      {
        self->_externallySetValueGroupIsShowing = 1;
        selfCopy3 = self;
        v9 = 6;
      }
    }

    [(EKEventTravelTimeEditViewController *)selfCopy3 setTravelTimeSelectedChoice:v9];
    goto LABEL_17;
  }

  [(EKEventTravelTimeEditViewController *)self setTravelTimeSelectedChoice:7];
}

- (void)_updateTableView
{
  if (self->_isAnimatingTableSections)
  {
    self->_pendingReloadData = 1;
  }

  else
  {
    self->_pendingReloadData = 0;
    [(UITableView *)self->_table reloadData];

    [(EKEventTravelTimeEditViewController *)self _layoutShadowView];
  }
}

- (void)setArrivalDate:(id)date
{
  objc_storeStrong(&self->_arrivalDate, date);
  dateCopy = date;
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [_routeEstimationControler setArrivalDate:dateCopy];
}

- (void)setDestinationStructuredLocation:(id)location
{
  objc_storeStrong(&self->_destinationStructuredLocation, location);
  locationCopy = location;
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [_routeEstimationControler setDestinationStructuredLocation:locationCopy];
}

- (void)setOriginStructuredLocation:(id)location
{
  objc_storeStrong(&self->_originStructuredLocation, location);
  locationCopy = location;
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [_routeEstimationControler setOriginStructuredLocation:locationCopy];

  [(EKEventTravelTimeEditViewController *)self _updateTableView];
}

+ (id)_startingLocationLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Starting Location" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)_stringForOriginLocation
{
  originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  title = [originStructuredLocation title];
  v4 = [title length];

  if (v4)
  {
    title2 = [originStructuredLocation title];
  }

  else
  {
    address = [originStructuredLocation address];
    v7 = [address length];

    if (!v7)
    {
      v10 = EventKitUIBundle();
      v11 = v10;
      if (originStructuredLocation)
      {
        v12 = @"Previous Location";
        v13 = &stru_1F4EF6790;
      }

      else
      {
        v12 = @"Travel editor no start location";
        v13 = @"None";
      }

      v8 = [v10 localizedStringForKey:v12 value:v13 table:0];

      goto LABEL_6;
    }

    title2 = [originStructuredLocation address];
  }

  v8 = title2;
LABEL_6:

  return v8;
}

- (void)_originLocationButtonWasTapped
{
  v21 = [[EKLocationEditItemViewController alloc] initWithFrame:self->_calendarItem calendarItem:self->_eventStore eventStore:self->_initFrame.origin.x, self->_initFrame.origin.y, self->_initFrame.size.width, self->_initFrame.size.height];
  [(EKEditItemViewController *)v21 setEditDelegate:self];
  _startingLocationLocalizedString = [objc_opt_class() _startingLocationLocalizedString];
  [(EKLocationEditItemViewController *)v21 setTitle:_startingLocationLocalizedString];

  [(EKEditItemViewController *)v21 setModal:1];
  [(EKEditItemViewController *)v21 setShowsDoneButton:0];
  [(EKLocationEditItemViewController *)v21 setSupportedSearchTypes:7];
  [(EKLocationEditItemViewController *)v21 setForceSingleTextField:1];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v21 action:sel_cancel];
  navigationItem = [(EKLocationEditItemViewController *)v21 navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];

  if (originStructuredLocation)
  {
    v7 = [EKUILocationRowModel alloc];
    originStructuredLocation2 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    v9 = [(EKUILocationRowModel *)v7 initWithStructuredLocation:originStructuredLocation2];
    [(EKLocationEditItemViewController *)v21 setLocationViewModel:v9];
  }

  presentingViewController = [(EKEventTravelTimeEditViewController *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  v12 = presentedViewController;
  if (presentedViewController)
  {
    v13 = presentedViewController;
  }

  else
  {
    presentingViewController2 = [(EKEventTravelTimeEditViewController *)self presentingViewController];
    v15 = presentingViewController2;
    if (presentingViewController2)
    {
      selfCopy = presentingViewController2;
    }

    else
    {
      selfCopy = self;
    }

    v13 = selfCopy;
  }

  v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v21];
  view = [(EKEventTravelTimeEditViewController *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view);

  if (IsCompactInViewHierarchy)
  {
    v20 = 6;
  }

  else
  {
    v20 = 3;
  }

  [v17 setModalPresentationStyle:v20];
  self->_isOriginSelectionVisible = 1;
  self->_suppressErrors = 0;
  [(EKEventTravelTimeEditViewController *)v13 presentViewController:v17 animated:1 completion:0];
}

- (void)_locationsChanged
{
  geoLocation = [(EKStructuredLocation *)self->_destinationStructuredLocation geoLocation];
  v4 = geoLocation != 0;

  [(EKEventTravelTimeEditViewController *)self _setEstimationActive:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EKEventTravelTimeEditViewController__locationsChanged__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)editItemViewControllerSave:(id)save
{
  selectedLocation = [save selectedLocation];
  if ([selectedLocation isStructured])
  {
    duplicate = [selectedLocation duplicate];
    [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:duplicate];

    [(EKEventTravelTimeEditViewController *)self _handleOriginLocationErrorsWithAlert:1];
    [(EKEventTravelTimeEditViewController *)self _locationsChanged];
  }

  return 1;
}

- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action
{
  controllerCopy = controller;
  if ([controllerCopy modal] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    navigationController = [controllerCopy navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__EKEventTravelTimeEditViewController_editItemViewController_didCompleteWithAction___block_invoke;
    v9[3] = &unk_1E843EC60;
    v9[4] = self;
    [navigationController dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    navigationController2 = [(EKEventTravelTimeEditViewController *)self navigationController];
    v8 = [navigationController2 popViewControllerAnimated:1];
  }
}

void __84__EKEventTravelTimeEditViewController_editItemViewController_didCompleteWithAction___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__EKEventTravelTimeEditViewController_editItemViewController_didCompleteWithAction___block_invoke_2;
  aBlock[3] = &unk_1E843EC60;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  if (*(*(a1 + 32) + 1178) == 1)
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = [objc_opt_class() _cannotProvideDirectionsLocalizedString];
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Cannot get directions to and from the same location." value:&stru_1F4EF6790 table:0];
    v7 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

    v8 = MEMORY[0x1E69DC648];
    v9 = [objc_opt_class() _okLocalizedString];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__EKEventTravelTimeEditViewController_editItemViewController_didCompleteWithAction___block_invoke_3;
    v11[3] = &unk_1E8441E90;
    v11[4] = *(a1 + 32);
    v12 = v2;
    v10 = [v8 actionWithTitle:v9 style:1 handler:v11];

    [v7 addAction:v10];
    [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v2[2](v2);
  }
}

- (void)routeEstimationControllerDidFinishOriginLocationLookup:(id)lookup
{
  evaluatedOriginLocation = [lookup evaluatedOriginLocation];
  [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:evaluatedOriginLocation];

  [(EKEventTravelTimeEditViewController *)self _locationsChanged];
}

+ (id)_cannotProvideDirectionsLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cannot Provide Directions" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)_handleOriginLocationErrorsWithAlert:(BOOL)alert
{
  originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  v6 = [originStructuredLocation isEqualToLocation:self->_destinationStructuredLocation];

  if (v6)
  {
    [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:0];
    self->_needsShowOriginAlert = alert;
  }
}

+ (id)_okLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)_routeEstimationControler
{
  routeEstimationControler = self->_routeEstimationControler;
  if (!routeEstimationControler)
  {
    v4 = [EKTravelRouteEstimationController alloc];
    destinationStructuredLocation = [(EKEventTravelTimeEditViewController *)self destinationStructuredLocation];
    v6 = [(EKTravelRouteEstimationController *)v4 initWithDestinationStructuredLocation:destinationStructuredLocation eventStore:self->_eventStore];
    v7 = self->_routeEstimationControler;
    self->_routeEstimationControler = v6;

    [(EKTravelRouteEstimationController *)self->_routeEstimationControler setDelegate:self];
    routeEstimationControler = self->_routeEstimationControler;
  }

  return routeEstimationControler;
}

- (void)_showRouteEstimationAlert
{
  if (self->_routeEstimationErrorMessage)
  {
    if (!self->_isOriginSelectionVisible)
    {
      v3 = MEMORY[0x1E69DC650];
      _cannotProvideDirectionsLocalizedString = [objc_opt_class() _cannotProvideDirectionsLocalizedString];
      v5 = [v3 alertControllerWithTitle:_cannotProvideDirectionsLocalizedString message:self->_routeEstimationErrorMessage preferredStyle:1];

      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69DC648];
      _okLocalizedString = [objc_opt_class() _okLocalizedString];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __64__EKEventTravelTimeEditViewController__showRouteEstimationAlert__block_invoke;
      v12 = &unk_1E8440A70;
      objc_copyWeak(&v13, &location);
      v8 = [v6 actionWithTitle:_okLocalizedString style:1 handler:&v9];
      [v5 addAction:{v8, v9, v10, v11, v12}];

      [(EKEventTravelTimeEditViewController *)self presentViewController:v5 animated:1 completion:0];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __64__EKEventTravelTimeEditViewController__showRouteEstimationAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setOriginStructuredLocation:0];
    v2 = v3[146];
    v3[146] = 0;

    WeakRetained = v3;
  }
}

- (void)_setEstimationActive:(BOOL)active
{
  if (active)
  {
    _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    arrivalDate = [(EKEventTravelTimeEditViewController *)self arrivalDate];
    [_routeEstimationControler setArrivalDate:arrivalDate];

    _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    originStructuredLocation = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    [_routeEstimationControler2 setOriginStructuredLocation:originStructuredLocation];

    originStructuredLocation2 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    LODWORD(originStructuredLocation) = [originStructuredLocation2 isStructured];

    if (originStructuredLocation)
    {
      _routeEstimationControler3 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      [_routeEstimationControler3 beginTravelTimeEstimationLookup];
    }

    _showingOptions = [(EKEventTravelTimeEditViewController *)self _showingOptions];
  }

  else
  {
    _showingOptions = 0;
  }

  self->_estimationGroupIsShowing = _showingOptions;
}

- (void)_travelTimeActivationSwitchChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__EKEventTravelTimeEditViewController__travelTimeActivationSwitchChanged___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __74__EKEventTravelTimeEditViewController__travelTimeActivationSwitchChanged___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isOn] & 1) == 0)
  {
    *(*(a1 + 40) + 1208) = 0;
    *(*(a1 + 40) + 1200) = 0;
  }

  [*(a1 + 40) _updateVisibleSections];
  v2 = *(a1 + 40);

  return [v2 _autoselectFromAvailableChoices];
}

- (void)routeEstimationControllerDidBeginTravelTimeLookup:(id)lookup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__EKEventTravelTimeEditViewController_routeEstimationControllerDidBeginTravelTimeLookup___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)routeEstimationControllerDidFinishTravelTimeLookup:(id)lookup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__EKEventTravelTimeEditViewController_routeEstimationControllerDidFinishTravelTimeLookup___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__EKEventTravelTimeEditViewController_routeEstimationControllerDidFinishTravelTimeLookup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleEstimationControllerTravelTimeLookupErrors];
  [*(a1 + 32) _updateTableView];
  result = [*(a1 + 32) _showingOptions];
  if (result)
  {
    if ([*(a1 + 32) _shouldAutoSelectEstimatedTravelTimeOnLookupCompletion])
    {
      [*(a1 + 32) setTravelTimeSelectedChoiceToFirstValidEstimatedRow];
    }

    v3 = *(a1 + 32);

    return [v3 _autoselectFromAvailableChoices];
  }

  return result;
}

- (void)_handleEstimationControllerTravelTimeLookupErrors
{
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v6 = [_routeEstimationControler estimatedTravelTimeRowErrorAtRowIndex:0];

  v4 = v6;
  if (v6)
  {
    if (self->_suppressErrors)
    {
      v5 = 0;
    }

    else
    {
      v5 = -[EKEventTravelTimeEditViewController _errorStringForMapKitErrorCode:](self, "_errorStringForMapKitErrorCode:", [v6 code]);
      v4 = v6;
    }

    if ([v4 code] != 5)
    {
      [v6 code];
    }

    if (v5)
    {
      objc_storeStrong(&self->_routeEstimationErrorMessage, v5);
      [(EKEventTravelTimeEditViewController *)self _showRouteEstimationAlert];
    }

    [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:0];

    v4 = v6;
  }
}

+ (id)_directionsCouldNotBeFoundLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Travel lookup error - directions not found" value:@"Directions could not be found." table:0];

  return v3;
}

- (id)_errorStringForMapKitErrorCode:(unint64_t)code
{
  if (code <= 3)
  {
    if (code != 1)
    {
      if (code == 2)
      {
        v3 = EventKitUIBundle();
        v4 = v3;
        v5 = @"Travel lookup error - server failure";
        goto LABEL_14;
      }

      if (code == 3)
      {
        v3 = EventKitUIBundle();
        v4 = v3;
        v5 = @"Travel lookup error - network throttled";
LABEL_14:
        v7 = @"Network lost.";
        goto LABEL_15;
      }

LABEL_12:
      v3 = EventKitUIBundle();
      v4 = v3;
      v5 = @"An unknown error occurred.";
      v7 = &stru_1F4EF6790;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (code != 4)
  {
    if (code != 5)
    {
      if (code == 1001)
      {
        v3 = EventKitUIBundle();
        v4 = v3;
        v5 = @"Travel lookup error - server timeout";
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    _directionsCouldNotBeFoundLocalizedString = [objc_opt_class() _directionsCouldNotBeFoundLocalizedString];
    goto LABEL_16;
  }

  v3 = EventKitUIBundle();
  v4 = v3;
  v5 = @"Travel lookup error - place not found";
  v7 = @"Directions could not be found.";
LABEL_15:
  _directionsCouldNotBeFoundLocalizedString = [v3 localizedStringForKey:v5 value:v7 table:0];

LABEL_16:

  return _directionsCouldNotBeFoundLocalizedString;
}

- (void)_checkItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(NSIndexPath *)self->_checkedItem isEqual:pathCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_checkedItem, path);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EKEventTravelTimeEditViewController__checkItemAtIndexPath___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setTravelTimeSelectedChoiceToFirstValidEstimatedRow
{
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  numberOfOutputRows = [_routeEstimationControler numberOfOutputRows];

  if (numberOfOutputRows)
  {
    v5 = 0;
    do
    {
      if ([(EKEventTravelTimeEditViewController *)self setTravelTimeSelectedChoiceEstimatedRowAtIndex:v5])
      {
        break;
      }

      ++v5;
      _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      numberOfOutputRows2 = [_routeEstimationControler2 numberOfOutputRows];
    }

    while (v5 < numberOfOutputRows2);
  }
}

- (BOOL)setTravelTimeSelectedChoiceEstimatedRowAtIndex:(unint64_t)index
{
  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v6 = [_routeEstimationControler estimatedTravelTimeRowHasErrorAtRowIndex:index];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:{-[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
    [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v7];

    _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    [_routeEstimationControler2 estimatedTravelTimeValueAtRowIndex:index];
    [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:?];

    _routeEstimationControler3 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    self->_selectedRoutingMode = [_routeEstimationControler3 estimatedTravelTimeRoutingModeAtRowIndex:index];
  }

  return v6 ^ 1;
}

- (void)setTravelTimeSelectedChoice:(int64_t)choice
{
  if (choice == 6)
  {
    if (self->_estimatedRowIsChecked)
    {
      _indexPathForSelectedTravelTime = [(EKEventTravelTimeEditViewController *)self _indexPathForSelectedTravelTime];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:_indexPathForSelectedTravelTime];
      _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      [_routeEstimationControler estimatedTravelTimeValueAtRowIndex:{objc_msgSend(_indexPathForSelectedTravelTime, "row")}];
      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:?];
    }

    else
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[EKEventTravelTimeEditViewController _externallySetValueTravelTimeSection](self, "_externallySetValueTravelTimeSection")}];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v7];

      customTravelTimeDuration = self->_customTravelTimeDuration;

      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:customTravelTimeDuration];
    }
  }

  else
  {
    if (choice == 7)
    {
      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:0.0];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:0];
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[EKEventTravelTimeEditViewController _numberOfEstimatedTravelTimeResultRows](self inSection:{"_numberOfEstimatedTravelTimeResultRows") + choice, -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v6];

      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:_travelTimeDurations[choice]];
    }

    self->_selectedRoutingMode = 0;
  }
}

- (id)_indexPathForSelectedTravelTime
{
  if (self->_selectedTravelTime == 0.0)
  {
    v2 = 0;
  }

  else
  {
    if (self->_estimationGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows]>= 1)
    {
      for (i = 0; [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows]> i; ++i)
      {
        _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        v6 = [_routeEstimationControler estimatedTravelTimeRowHasErrorAtRowIndex:i];

        if ((v6 & 1) == 0)
        {
          _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
          [_routeEstimationControler2 estimatedTravelTimeValueAtRowIndex:i];
          v9 = v8;

          _routeEstimationControler3 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
          v11 = [_routeEstimationControler3 estimatedTravelTimeRoutingModeAtRowIndex:i];

          v12 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:{-[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
          v2 = v12;
          if (v11 == self->_selectedRoutingMode && v9 == self->_selectedTravelTime)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v13 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v14 = 0;
    selectedTravelTime = self->_selectedTravelTime;
    if (selectedTravelTime == 300.0)
    {
LABEL_15:
      v18 = [MEMORY[0x1E696AC88] indexPathForRow:-[EKEventTravelTimeEditViewController _numberOfEstimatedTravelTimeResultRows](self inSection:{"_numberOfEstimatedTravelTimeResultRows") + v14, -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];

      v2 = v18;
      v13 = v2;
    }

    else
    {
      v16 = 0;
      while (v16 != 6)
      {
        v14 = v16 + 1;
        v17 = _travelTimeDurations[++v16];
        if (v17 == selectedTravelTime)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
    }
  }

LABEL_17:

  return v2;
}

- (unint64_t)_estimatedTravelTimeSection
{
  if (self->_estimationGroupIsShowing)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)_customTravelTimeSection
{
  v2 = 2;
  if (self->_estimationGroupIsShowing)
  {
    v2 = 3;
  }

  v3 = 1;
  if (self->_estimationGroupIsShowing)
  {
    v3 = 2;
  }

  if (self->_externallySetValueGroupIsShowing)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_externallySetValueTravelTimeSection
{
  v2 = 1;
  if (self->_estimationGroupIsShowing)
  {
    v2 = 2;
  }

  if (self->_externallySetValueGroupIsShowing)
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(EKEventTravelTimeEditViewController *)self _toggleSwitchSection]== section)
  {
    if (![(UISwitch *)self->_switchControl isOn])
    {
      v6 = @"Add travel time for this event to your calendar. Event alerts will take this time into account and your calendar will be blocked during this time.";
LABEL_7:
      v7 = EventKitUIBundle();
      v8 = [v7 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

      goto LABEL_9;
    }
  }

  else if (self->_estimationGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection]== section)
  {
    v6 = @"Select a starting location to automatically determine travel time, or select a time below.";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    contentView = [footerViewCopy contentView];
    [contentView setBackgroundColor:backgroundColor];
  }
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = EKUIUnscaledCatalyst();
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 45.0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = 1;
  if (self->_estimationGroupIsShowing)
  {
    v3 = 2;
  }

  return v3 + self->_customTimesGroupIsShowing + self->_externallySetValueGroupIsShowing;
}

- (int64_t)_numberOfEstimatedTravelTimeResultRows
{
  if (!self->_estimationGroupIsShowing)
  {
    return 0;
  }

  _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  numberOfOutputRows = [_routeEstimationControler numberOfOutputRows];

  return numberOfOutputRows;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(EKEventTravelTimeEditViewController *)self _toggleSwitchSection]== section || self->_estimationGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection]== section || self->_externallySetValueGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _externallySetValueTravelTimeSection]== section)
  {
    return 1;
  }

  if ([(EKEventTravelTimeEditViewController *)self _customTravelTimeSection]!= section)
  {
    return 0;
  }

  if (self->_estimationGroupIsShowing)
  {
    return [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows]+ 6;
  }

  return 6;
}

- (void)setCell:(id)cell checked:(BOOL)checked
{
  checkedCopy = checked;
  v5 = MEMORY[0x1E69DC888];
  cellCopy = cell;
  labelColor = [v5 labelColor];
  textLabel = [cellCopy textLabel];
  [textLabel setTextColor:labelColor];

  [cellCopy setChecked:checkedCopy];
}

- (int64_t)_cellStyleForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (self->_estimationGroupIsShowing && (v6 = [pathCopy section], v6 == -[EKEventTravelTimeEditViewController _estimatedTravelTimeSection](self, "_estimatedTravelTimeSection")))
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(EKEventTravelTimeEditViewController *)self _cellStyleForIndexPath:pathCopy];
  section = [pathCopy section];
  if (section == [(EKEventTravelTimeEditViewController *)self _toggleSwitchSection])
  {
    v10 = [[EKUITableViewCell alloc] initWithStyle:v8 reuseIdentifier:0];
    [(EKEventStandardTravelTimeCell *)v10 setSelectionStyle:0];
    _travelTimeLocalizedString = [objc_opt_class() _travelTimeLocalizedString];
    textLabel = [(EKEventStandardTravelTimeCell *)v10 textLabel];
    [textLabel setText:_travelTimeLocalizedString];

    [(EKEventStandardTravelTimeCell *)v10 setAccessoryView:self->_switchControl];
    goto LABEL_19;
  }

  if (self->_estimationGroupIsShowing)
  {
    section2 = [pathCopy section];
    if (section2 == [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection])
    {
      v10 = [[EKUITableViewCell alloc] initWithStyle:v8 reuseIdentifier:0];
      _startingLocationLocalizedString = [objc_opt_class() _startingLocationLocalizedString];
      textLabel2 = [(EKEventStandardTravelTimeCell *)v10 textLabel];
      [textLabel2 setText:_startingLocationLocalizedString];

      _stringForOriginLocation = [(EKEventTravelTimeEditViewController *)self _stringForOriginLocation];
      detailTextLabel = [(EKEventStandardTravelTimeCell *)v10 detailTextLabel];
      [detailTextLabel setText:_stringForOriginLocation];

      [(EKCalendarChooserCell *)v10 setAccessoryType:1];
      goto LABEL_19;
    }
  }

  if (self->_externallySetValueGroupIsShowing && (v18 = [pathCopy section], v18 == -[EKEventTravelTimeEditViewController _externallySetValueTravelTimeSection](self, "_externallySetValueTravelTimeSection")))
  {
    v10 = [(EKCalendarChooserCell *)[EKEventStandardTravelTimeCell alloc] initWithStyle:v8 reuseIdentifier:0];
    v19 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    textLabel3 = [(EKEventStandardTravelTimeCell *)v10 textLabel];
    [textLabel3 setText:v19];
  }

  else
  {
    if (!self->_customTimesGroupIsShowing || (v21 = [pathCopy section], v21 != -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")))
    {
      v10 = 0;
      goto LABEL_19;
    }

    _numberOfEstimatedTravelTimeResultRows = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
    if (self->_estimationGroupIsShowing && [pathCopy row] < _numberOfEstimatedTravelTimeResultRows)
    {
      _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      v10 = [_routeEstimationControler estimatedTravelTimeTableViewCellWithRowIndex:objc_msgSend(pathCopy tableView:{"row"), viewCopy}];

      v24 = [EKCalendarChooserCellLayoutManager sharedLayoutManagerForStyle:[(EKEventStandardTravelTimeCell *)v10 style]];
      [(EKEventStandardTravelTimeCell *)v10 setLayoutManager:v24];

      _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      v26 = [_routeEstimationControler2 estimatedTravelTimeRowHasErrorAtRowIndex:{objc_msgSend(pathCopy, "row")}];

      if (v26)
      {
        [(EKEventStandardTravelTimeCell *)v10 setSelectionStyle:0];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    [pathCopy row];
    v10 = [(EKCalendarChooserCell *)[EKEventStandardTravelTimeCell alloc] initWithStyle:0 reuseIdentifier:0];
    v19 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    [(EKCalendarChooserCell *)v10 setTextLabelText:v19];
  }

LABEL_18:
  [(EKEventTravelTimeEditViewController *)self setCell:v10 checked:[(NSIndexPath *)self->_checkedItem isEqual:pathCopy]];
LABEL_19:
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [(EKEventStandardTravelTimeCell *)v10 setBackgroundColor:backgroundColor];
  }

  if (self->_sampleSizingCell)
  {
    if (v10)
    {
LABEL_23:
      v28 = v10;
      goto LABEL_26;
    }
  }

  else
  {
    objc_storeStrong(&self->_sampleSizingCell, v10);
    if (v10)
    {
      goto LABEL_23;
    }
  }

  v28 = objc_opt_new();
LABEL_26:
  v29 = v28;

  return v29;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sampleSizingCell = self->_sampleSizingCell;
  if (sampleSizingCell)
  {
    v9 = sampleSizingCell;
  }

  else
  {
    v9 = [(EKEventTravelTimeEditViewController *)self tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  v10 = v9;
  v11 = [(EKEventTravelTimeEditViewController *)self _cellStyleForIndexPath:pathCopy];
  textLabel = [(UITableViewCell *)v10 textLabel];
  font = [textLabel font];

  detailTextLabel = [(UITableViewCell *)v10 detailTextLabel];
  font2 = [detailTextLabel font];

  [font _scaledValueForValue:46.0];
  v17 = v16;
  if (v11 == 3)
  {
    [font2 _scaledValueForValue:15.0];
    v17 = v17 + v18;
  }

  CalRoundToScreenScale(v17);
  v20 = v19;

  return v20;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_estimationGroupIsShowing)
  {
    section = [pathCopy section];
    if (section == [(EKEventTravelTimeEditViewController *)self _customTravelTimeSection])
    {
      v10 = [v8 row];
      if (v10 < [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows])
      {
        _routeEstimationControler = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        if ([_routeEstimationControler estimatedTravelTimeRowHasErrorAtRowIndex:{objc_msgSend(v8, "row")}])
        {

LABEL_7:
          v15 = 0;
          goto LABEL_9;
        }

        _routeEstimationControler2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        [_routeEstimationControler2 estimatedTravelTimeValueAtRowIndex:{objc_msgSend(v8, "row")}];
        v14 = v13;

        if (v14 == 0.0)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v15 = v8;
LABEL_9:

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = section == [(EKEventTravelTimeEditViewController *)self _toggleSwitchSection];
  v7 = pathCopy;
  if (!v6)
  {
    if (self->_estimationGroupIsShowing)
    {
      section2 = [pathCopy section];
      if (section2 == [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection])
      {
        [(EKEventTravelTimeEditViewController *)self _originLocationButtonWasTapped];
LABEL_13:
        v7 = pathCopy;
        goto LABEL_14;
      }
    }

    if (self->_externallySetValueGroupIsShowing && (v9 = [pathCopy section], v9 == -[EKEventTravelTimeEditViewController _externallySetValueTravelTimeSection](self, "_externallySetValueTravelTimeSection")))
    {
      selfCopy2 = self;
      v11 = 6;
    }

    else
    {
      _numberOfEstimatedTravelTimeResultRows = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
      v13 = [pathCopy row];
      if (self->_estimationGroupIsShowing && [pathCopy row] < _numberOfEstimatedTravelTimeResultRows)
      {
        -[EKEventTravelTimeEditViewController setTravelTimeSelectedChoiceEstimatedRowAtIndex:](self, "setTravelTimeSelectedChoiceEstimatedRowAtIndex:", [pathCopy row]);
        goto LABEL_13;
      }

      v11 = v13 - _numberOfEstimatedTravelTimeResultRows;
      selfCopy2 = self;
    }

    [(EKEventTravelTimeEditViewController *)selfCopy2 setTravelTimeSelectedChoice:v11];
    goto LABEL_13;
  }

LABEL_14:
}

@end
@interface EKEventTravelTimeEditViewController
+ (id)_cannotProvideDirectionsLocalizedString;
+ (id)_directionsCouldNotBeFoundLocalizedString;
+ (id)_okLocalizedString;
+ (id)_startingLocationLocalizedString;
+ (id)_travelTimeLocalizedString;
- (BOOL)editItemViewControllerSave:(id)a3;
- (BOOL)setTravelTimeSelectedChoiceEstimatedRowAtIndex:(unint64_t)a3;
- (EKEventTravelTimeEditViewController)initWithFrame:(CGRect)a3 calendarItem:(id)a4 eventStore:(id)a5;
- (NSString)description;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_errorStringForMapKitErrorCode:(unint64_t)a3;
- (id)_indexPathForSelectedTravelTime;
- (id)_routeEstimationControler;
- (id)_stringForOriginLocation;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_cellStyleForIndexPath:(id)a3;
- (int64_t)_numberOfEstimatedTravelTimeResultRows;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_customTravelTimeSection;
- (unint64_t)_estimatedTravelTimeSection;
- (unint64_t)_externallySetValueTravelTimeSection;
- (void)_autoselectFromAvailableChoices;
- (void)_checkItemAtIndexPath:(id)a3;
- (void)_contentCategorySizeChanged:(id)a3;
- (void)_handleEstimationControllerTravelTimeLookupErrors;
- (void)_handleOriginLocationErrorsWithAlert:(BOOL)a3;
- (void)_layoutShadowView;
- (void)_locationsChanged;
- (void)_originLocationButtonWasTapped;
- (void)_setEstimationActive:(BOOL)a3;
- (void)_showRouteEstimationAlert;
- (void)_travelTimeActivationSwitchChanged:(id)a3;
- (void)_updateTableView;
- (void)_updateVisibleSections;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)routeEstimationControllerDidBeginTravelTimeLookup:(id)a3;
- (void)routeEstimationControllerDidFinishOriginLocationLookup:(id)a3;
- (void)routeEstimationControllerDidFinishTravelTimeLookup:(id)a3;
- (void)setArrivalDate:(id)a3;
- (void)setCell:(id)a3 checked:(BOOL)a4;
- (void)setDestinationStructuredLocation:(id)a3;
- (void)setOriginStructuredLocation:(id)a3;
- (void)setTravelTimeSelectedChoice:(int64_t)a3;
- (void)setTravelTimeSelectedChoiceToFirstValidEstimatedRow;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKEventTravelTimeEditViewController

- (EKEventTravelTimeEditViewController)initWithFrame:(CGRect)a3 calendarItem:(id)a4 eventStore:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v25.receiver = self;
  v25.super_class = EKEventTravelTimeEditViewController;
  v14 = [(EKEditItemViewController *)&v25 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    v14->_initFrame.origin.x = x;
    v14->_initFrame.origin.y = y;
    v14->_initFrame.size.width = width;
    v14->_initFrame.size.height = height;
    objc_storeStrong(&v14->_eventStore, a5);
    objc_storeStrong(&v15->_calendarItem, a4);
    v15->_isOriginSelectionVisible = 0;
    routeEstimationErrorMessage = v15->_routeEstimationErrorMessage;
    v15->_routeEstimationErrorMessage = 0;

    v15->_suppressErrors = 1;
    v17 = [objc_opt_class() _travelTimeLocalizedString];
    [(EKEventTravelTimeEditViewController *)v15 setTitle:v17];

    v15->_travelTimeSelectedChoice = 7;
    v18 = [(EKEventTravelTimeEditViewController *)v15 _routeEstimationControler];
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
  v6 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  v7 = [v6 title];
  v8 = [(EKEventTravelTimeEditViewController *)self destinationStructuredLocation];
  v9 = [v8 title];
  [(EKEventTravelTimeEditViewController *)self selectedTravelTime];
  v10 = CUIKDisplayStringForTravelTimeUsingShortFormat();
  v11 = [v3 stringWithFormat:@"%@ [%p] - %@ from %@ to %@, taking %@", v4, self, v5, v7, v9, v10];

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
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  table = self->_table;
  if (v3)
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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EKEventTravelTimeEditViewController;
  [(EKEditItemViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  [(EKEventTravelTimeEditViewController *)self _updateVisibleSections];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EKEventTravelTimeEditViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = EKEventTravelTimeEditViewController;
  [(EKEventTravelTimeEditViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKEventTravelTimeEditViewController;
  [(EKEditItemViewController *)&v5 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKEventTravelTimeEditViewController;
  [(EKEventTravelTimeEditViewController *)&v3 viewDidLayoutSubviews];
  [(EKEventTravelTimeEditViewController *)self _layoutShadowView];
}

- (void)_contentCategorySizeChanged:(id)a3
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
  v3 = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
  customTimesGroupIsShowing = self->_customTimesGroupIsShowing;
  table = self->_table;
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[EKEventTravelTimeEditViewController _numberOfEstimatedTravelTimeResultRows](self inSection:{"_numberOfEstimatedTravelTimeResultRows") - 1, -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
  v24 = [(UITableView *)table cellForRowAtIndexPath:v6];

  if (!customTimesGroupIsShowing || v3 == 0 || v24 == 0)
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

  v4 = [(EKEventTravelTimeEditViewController *)self _showingOptions];
  externallySetValueGroupIsShowing = self->_externallySetValueGroupIsShowing;
  if (!v4)
  {
    externallySetValueGroupIsShowing = 0;
  }

  self->_externallySetValueGroupIsShowing = externallySetValueGroupIsShowing;
  self->_customTimesGroupIsShowing = v4;
  self->_estimationGroupIsShowing &= v4;
  v6 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  if (!v6 || (v7 = v6, -[EKEventTravelTimeEditViewController originStructuredLocation](self, "originStructuredLocation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isStructured], v8, v7, (v9 & 1) == 0))
  {
    routeEstimationControler = self->_routeEstimationControler;
    v11 = [(EKEventTravelTimeEditViewController *)self arrivalDate];
    [(EKTravelRouteEstimationController *)routeEstimationControler setArrivalDate:v11];

    v12 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    [v12 beginOriginLocationEstimationLookup];
  }

  [(EKEventTravelTimeEditViewController *)self _locationsChanged];
}

- (void)_autoselectFromAvailableChoices
{
  self->_estimatedRowIsChecked = 0;
  self->_externallySetValueGroupIsShowing = 0;
  if ([(EKEventTravelTimeEditViewController *)self _showingOptions])
  {
    v3 = [(EKEventTravelTimeEditViewController *)self _indexPathForSelectedTravelTime];
    v12 = v3;
    if (v3)
    {
      if (self->_estimationGroupIsShowing)
      {
        v4 = [v3 section];
        v5 = v4 == [(EKEventTravelTimeEditViewController *)self _customTravelTimeSection];
        v3 = v12;
        if (v5)
        {
          v6 = [v12 row];
          v7 = v6 < [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
          v3 = v12;
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

      v8 = [v3 row];
      v9 = v8 - [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
      v10 = self;
    }

    else
    {
      [(EKEventTravelTimeEditViewController *)self selectedTravelTime];
      if (v11 <= 0.0)
      {
        v10 = self;
        v9 = 2;
      }

      else
      {
        self->_externallySetValueGroupIsShowing = 1;
        v10 = self;
        v9 = 6;
      }
    }

    [(EKEventTravelTimeEditViewController *)v10 setTravelTimeSelectedChoice:v9];
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

- (void)setArrivalDate:(id)a3
{
  objc_storeStrong(&self->_arrivalDate, a3);
  v5 = a3;
  v6 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [v6 setArrivalDate:v5];
}

- (void)setDestinationStructuredLocation:(id)a3
{
  objc_storeStrong(&self->_destinationStructuredLocation, a3);
  v5 = a3;
  v6 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [v6 setDestinationStructuredLocation:v5];
}

- (void)setOriginStructuredLocation:(id)a3
{
  objc_storeStrong(&self->_originStructuredLocation, a3);
  v5 = a3;
  v6 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  [v6 setOriginStructuredLocation:v5];

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
  v2 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  v3 = [v2 title];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 title];
  }

  else
  {
    v6 = [v2 address];
    v7 = [v6 length];

    if (!v7)
    {
      v10 = EventKitUIBundle();
      v11 = v10;
      if (v2)
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

    v5 = [v2 address];
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (void)_originLocationButtonWasTapped
{
  v21 = [[EKLocationEditItemViewController alloc] initWithFrame:self->_calendarItem calendarItem:self->_eventStore eventStore:self->_initFrame.origin.x, self->_initFrame.origin.y, self->_initFrame.size.width, self->_initFrame.size.height];
  [(EKEditItemViewController *)v21 setEditDelegate:self];
  v3 = [objc_opt_class() _startingLocationLocalizedString];
  [(EKLocationEditItemViewController *)v21 setTitle:v3];

  [(EKEditItemViewController *)v21 setModal:1];
  [(EKEditItemViewController *)v21 setShowsDoneButton:0];
  [(EKLocationEditItemViewController *)v21 setSupportedSearchTypes:7];
  [(EKLocationEditItemViewController *)v21 setForceSingleTextField:1];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v21 action:sel_cancel];
  v5 = [(EKLocationEditItemViewController *)v21 navigationItem];
  [v5 setRightBarButtonItem:v4];

  v6 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];

  if (v6)
  {
    v7 = [EKUILocationRowModel alloc];
    v8 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    v9 = [(EKUILocationRowModel *)v7 initWithStructuredLocation:v8];
    [(EKLocationEditItemViewController *)v21 setLocationViewModel:v9];
  }

  v10 = [(EKEventTravelTimeEditViewController *)self presentingViewController];
  v11 = [v10 presentedViewController];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(EKEventTravelTimeEditViewController *)self presentingViewController];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = self;
    }

    v13 = v16;
  }

  v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v21];
  v18 = [(EKEventTravelTimeEditViewController *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v18);

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
  v3 = [(EKStructuredLocation *)self->_destinationStructuredLocation geoLocation];
  v4 = v3 != 0;

  [(EKEventTravelTimeEditViewController *)self _setEstimationActive:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EKEventTravelTimeEditViewController__locationsChanged__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)editItemViewControllerSave:(id)a3
{
  v4 = [a3 selectedLocation];
  if ([v4 isStructured])
  {
    v5 = [v4 duplicate];
    [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:v5];

    [(EKEventTravelTimeEditViewController *)self _handleOriginLocationErrorsWithAlert:1];
    [(EKEventTravelTimeEditViewController *)self _locationsChanged];
  }

  return 1;
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v5 = a3;
  if ([v5 modal] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__EKEventTravelTimeEditViewController_editItemViewController_didCompleteWithAction___block_invoke;
    v9[3] = &unk_1E843EC60;
    v9[4] = self;
    [v6 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    v7 = [(EKEventTravelTimeEditViewController *)self navigationController];
    v8 = [v7 popViewControllerAnimated:1];
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

- (void)routeEstimationControllerDidFinishOriginLocationLookup:(id)a3
{
  v4 = [a3 evaluatedOriginLocation];
  [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:v4];

  [(EKEventTravelTimeEditViewController *)self _locationsChanged];
}

+ (id)_cannotProvideDirectionsLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cannot Provide Directions" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)_handleOriginLocationErrorsWithAlert:(BOOL)a3
{
  v5 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
  v6 = [v5 isEqualToLocation:self->_destinationStructuredLocation];

  if (v6)
  {
    [(EKEventTravelTimeEditViewController *)self setOriginStructuredLocation:0];
    self->_needsShowOriginAlert = a3;
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
    v5 = [(EKEventTravelTimeEditViewController *)self destinationStructuredLocation];
    v6 = [(EKTravelRouteEstimationController *)v4 initWithDestinationStructuredLocation:v5 eventStore:self->_eventStore];
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
      v4 = [objc_opt_class() _cannotProvideDirectionsLocalizedString];
      v5 = [v3 alertControllerWithTitle:v4 message:self->_routeEstimationErrorMessage preferredStyle:1];

      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69DC648];
      v7 = [objc_opt_class() _okLocalizedString];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __64__EKEventTravelTimeEditViewController__showRouteEstimationAlert__block_invoke;
      v12 = &unk_1E8440A70;
      objc_copyWeak(&v13, &location);
      v8 = [v6 actionWithTitle:v7 style:1 handler:&v9];
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

- (void)_setEstimationActive:(BOOL)a3
{
  if (a3)
  {
    v4 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    v5 = [(EKEventTravelTimeEditViewController *)self arrivalDate];
    [v4 setArrivalDate:v5];

    v6 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    v7 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    [v6 setOriginStructuredLocation:v7];

    v8 = [(EKEventTravelTimeEditViewController *)self originStructuredLocation];
    LODWORD(v7) = [v8 isStructured];

    if (v7)
    {
      v9 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      [v9 beginTravelTimeEstimationLookup];
    }

    v10 = [(EKEventTravelTimeEditViewController *)self _showingOptions];
  }

  else
  {
    v10 = 0;
  }

  self->_estimationGroupIsShowing = v10;
}

- (void)_travelTimeActivationSwitchChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__EKEventTravelTimeEditViewController__travelTimeActivationSwitchChanged___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)routeEstimationControllerDidBeginTravelTimeLookup:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__EKEventTravelTimeEditViewController_routeEstimationControllerDidBeginTravelTimeLookup___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)routeEstimationControllerDidFinishTravelTimeLookup:(id)a3
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
  v3 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v6 = [v3 estimatedTravelTimeRowErrorAtRowIndex:0];

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

- (id)_errorStringForMapKitErrorCode:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v3 = EventKitUIBundle();
        v4 = v3;
        v5 = @"Travel lookup error - server failure";
        goto LABEL_14;
      }

      if (a3 == 3)
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

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      if (a3 == 1001)
      {
        v3 = EventKitUIBundle();
        v4 = v3;
        v5 = @"Travel lookup error - server timeout";
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    v6 = [objc_opt_class() _directionsCouldNotBeFoundLocalizedString];
    goto LABEL_16;
  }

  v3 = EventKitUIBundle();
  v4 = v3;
  v5 = @"Travel lookup error - place not found";
  v7 = @"Directions could not be found.";
LABEL_15:
  v6 = [v3 localizedStringForKey:v5 value:v7 table:0];

LABEL_16:

  return v6;
}

- (void)_checkItemAtIndexPath:(id)a3
{
  v5 = a3;
  if (([(NSIndexPath *)self->_checkedItem isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_checkedItem, a3);
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
  v3 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v4 = [v3 numberOfOutputRows];

  if (v4)
  {
    v5 = 0;
    do
    {
      if ([(EKEventTravelTimeEditViewController *)self setTravelTimeSelectedChoiceEstimatedRowAtIndex:v5])
      {
        break;
      }

      ++v5;
      v6 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      v7 = [v6 numberOfOutputRows];
    }

    while (v5 < v7);
  }
}

- (BOOL)setTravelTimeSelectedChoiceEstimatedRowAtIndex:(unint64_t)a3
{
  v5 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v6 = [v5 estimatedTravelTimeRowHasErrorAtRowIndex:a3];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:{-[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
    [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v7];

    v8 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    [v8 estimatedTravelTimeValueAtRowIndex:a3];
    [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:?];

    v9 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
    self->_selectedRoutingMode = [v9 estimatedTravelTimeRoutingModeAtRowIndex:a3];
  }

  return v6 ^ 1;
}

- (void)setTravelTimeSelectedChoice:(int64_t)a3
{
  if (a3 == 6)
  {
    if (self->_estimatedRowIsChecked)
    {
      v9 = [(EKEventTravelTimeEditViewController *)self _indexPathForSelectedTravelTime];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v9];
      v5 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      [v5 estimatedTravelTimeValueAtRowIndex:{objc_msgSend(v9, "row")}];
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
    if (a3 == 7)
    {
      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:0.0];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:0];
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[EKEventTravelTimeEditViewController _numberOfEstimatedTravelTimeResultRows](self inSection:{"_numberOfEstimatedTravelTimeResultRows") + a3, -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")}];
      [(EKEventTravelTimeEditViewController *)self _checkItemAtIndexPath:v6];

      [(EKEventTravelTimeEditViewController *)self setSelectedTravelTime:_travelTimeDurations[a3]];
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
        v5 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        v6 = [v5 estimatedTravelTimeRowHasErrorAtRowIndex:i];

        if ((v6 & 1) == 0)
        {
          v7 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
          [v7 estimatedTravelTimeValueAtRowIndex:i];
          v9 = v8;

          v10 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
          v11 = [v10 estimatedTravelTimeRoutingModeAtRowIndex:i];

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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(EKEventTravelTimeEditViewController *)self _toggleSwitchSection]== a4)
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

  else if (self->_estimationGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection]== a4)
  {
    v6 = @"Select a starting location to automatically determine travel time, or select a time below.";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v9 = a3;
  v6 = a4;
  if (EKUICatalyst())
  {
    v7 = [v9 backgroundColor];
    v8 = [v6 contentView];
    [v8 setBackgroundColor:v7];
  }
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = EKUIUnscaledCatalyst();
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 45.0;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

  v2 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
  v3 = [v2 numberOfOutputRows];

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(EKEventTravelTimeEditViewController *)self _toggleSwitchSection]== a4 || self->_estimationGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection]== a4 || self->_externallySetValueGroupIsShowing && [(EKEventTravelTimeEditViewController *)self _externallySetValueTravelTimeSection]== a4)
  {
    return 1;
  }

  if ([(EKEventTravelTimeEditViewController *)self _customTravelTimeSection]!= a4)
  {
    return 0;
  }

  if (self->_estimationGroupIsShowing)
  {
    return [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows]+ 6;
  }

  return 6;
}

- (void)setCell:(id)a3 checked:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69DC888];
  v6 = a3;
  v8 = [v5 labelColor];
  v7 = [v6 textLabel];
  [v7 setTextColor:v8];

  [v6 setChecked:v4];
}

- (int64_t)_cellStyleForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_estimationGroupIsShowing && (v6 = [v4 section], v6 == -[EKEventTravelTimeEditViewController _estimatedTravelTimeSection](self, "_estimatedTravelTimeSection")))
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKEventTravelTimeEditViewController *)self _cellStyleForIndexPath:v7];
  v9 = [v7 section];
  if (v9 == [(EKEventTravelTimeEditViewController *)self _toggleSwitchSection])
  {
    v10 = [[EKUITableViewCell alloc] initWithStyle:v8 reuseIdentifier:0];
    [(EKEventStandardTravelTimeCell *)v10 setSelectionStyle:0];
    v11 = [objc_opt_class() _travelTimeLocalizedString];
    v12 = [(EKEventStandardTravelTimeCell *)v10 textLabel];
    [v12 setText:v11];

    [(EKEventStandardTravelTimeCell *)v10 setAccessoryView:self->_switchControl];
    goto LABEL_19;
  }

  if (self->_estimationGroupIsShowing)
  {
    v13 = [v7 section];
    if (v13 == [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection])
    {
      v10 = [[EKUITableViewCell alloc] initWithStyle:v8 reuseIdentifier:0];
      v14 = [objc_opt_class() _startingLocationLocalizedString];
      v15 = [(EKEventStandardTravelTimeCell *)v10 textLabel];
      [v15 setText:v14];

      v16 = [(EKEventTravelTimeEditViewController *)self _stringForOriginLocation];
      v17 = [(EKEventStandardTravelTimeCell *)v10 detailTextLabel];
      [v17 setText:v16];

      [(EKCalendarChooserCell *)v10 setAccessoryType:1];
      goto LABEL_19;
    }
  }

  if (self->_externallySetValueGroupIsShowing && (v18 = [v7 section], v18 == -[EKEventTravelTimeEditViewController _externallySetValueTravelTimeSection](self, "_externallySetValueTravelTimeSection")))
  {
    v10 = [(EKCalendarChooserCell *)[EKEventStandardTravelTimeCell alloc] initWithStyle:v8 reuseIdentifier:0];
    v19 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    v20 = [(EKEventStandardTravelTimeCell *)v10 textLabel];
    [v20 setText:v19];
  }

  else
  {
    if (!self->_customTimesGroupIsShowing || (v21 = [v7 section], v21 != -[EKEventTravelTimeEditViewController _customTravelTimeSection](self, "_customTravelTimeSection")))
    {
      v10 = 0;
      goto LABEL_19;
    }

    v22 = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
    if (self->_estimationGroupIsShowing && [v7 row] < v22)
    {
      v23 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      v10 = [v23 estimatedTravelTimeTableViewCellWithRowIndex:objc_msgSend(v7 tableView:{"row"), v6}];

      v24 = [EKCalendarChooserCellLayoutManager sharedLayoutManagerForStyle:[(EKEventStandardTravelTimeCell *)v10 style]];
      [(EKEventStandardTravelTimeCell *)v10 setLayoutManager:v24];

      v25 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
      v26 = [v25 estimatedTravelTimeRowHasErrorAtRowIndex:{objc_msgSend(v7, "row")}];

      if (v26)
      {
        [(EKEventStandardTravelTimeCell *)v10 setSelectionStyle:0];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    [v7 row];
    v10 = [(EKCalendarChooserCell *)[EKEventStandardTravelTimeCell alloc] initWithStyle:0 reuseIdentifier:0];
    v19 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    [(EKCalendarChooserCell *)v10 setTextLabelText:v19];
  }

LABEL_18:
  [(EKEventTravelTimeEditViewController *)self setCell:v10 checked:[(NSIndexPath *)self->_checkedItem isEqual:v7]];
LABEL_19:
  if (EKUICatalyst())
  {
    v27 = [v6 backgroundColor];
    [(EKEventStandardTravelTimeCell *)v10 setBackgroundColor:v27];
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

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  sampleSizingCell = self->_sampleSizingCell;
  if (sampleSizingCell)
  {
    v9 = sampleSizingCell;
  }

  else
  {
    v9 = [(EKEventTravelTimeEditViewController *)self tableView:v6 cellForRowAtIndexPath:v7];
  }

  v10 = v9;
  v11 = [(EKEventTravelTimeEditViewController *)self _cellStyleForIndexPath:v7];
  v12 = [(UITableViewCell *)v10 textLabel];
  v13 = [v12 font];

  v14 = [(UITableViewCell *)v10 detailTextLabel];
  v15 = [v14 font];

  [v13 _scaledValueForValue:46.0];
  v17 = v16;
  if (v11 == 3)
  {
    [v15 _scaledValueForValue:15.0];
    v17 = v17 + v18;
  }

  CalRoundToScreenScale(v17);
  v20 = v19;

  return v20;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_estimationGroupIsShowing)
  {
    v9 = [v7 section];
    if (v9 == [(EKEventTravelTimeEditViewController *)self _customTravelTimeSection])
    {
      v10 = [v8 row];
      if (v10 < [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows])
      {
        v11 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        if ([v11 estimatedTravelTimeRowHasErrorAtRowIndex:{objc_msgSend(v8, "row")}])
        {

LABEL_7:
          v15 = 0;
          goto LABEL_9;
        }

        v12 = [(EKEventTravelTimeEditViewController *)self _routeEstimationControler];
        [v12 estimatedTravelTimeValueAtRowIndex:{objc_msgSend(v8, "row")}];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [v14 section];
  v6 = v5 == [(EKEventTravelTimeEditViewController *)self _toggleSwitchSection];
  v7 = v14;
  if (!v6)
  {
    if (self->_estimationGroupIsShowing)
    {
      v8 = [v14 section];
      if (v8 == [(EKEventTravelTimeEditViewController *)self _estimatedTravelTimeSection])
      {
        [(EKEventTravelTimeEditViewController *)self _originLocationButtonWasTapped];
LABEL_13:
        v7 = v14;
        goto LABEL_14;
      }
    }

    if (self->_externallySetValueGroupIsShowing && (v9 = [v14 section], v9 == -[EKEventTravelTimeEditViewController _externallySetValueTravelTimeSection](self, "_externallySetValueTravelTimeSection")))
    {
      v10 = self;
      v11 = 6;
    }

    else
    {
      v12 = [(EKEventTravelTimeEditViewController *)self _numberOfEstimatedTravelTimeResultRows];
      v13 = [v14 row];
      if (self->_estimationGroupIsShowing && [v14 row] < v12)
      {
        -[EKEventTravelTimeEditViewController setTravelTimeSelectedChoiceEstimatedRowAtIndex:](self, "setTravelTimeSelectedChoiceEstimatedRowAtIndex:", [v14 row]);
        goto LABEL_13;
      }

      v11 = v13 - v12;
      v10 = self;
    }

    [(EKEventTravelTimeEditViewController *)v10 setTravelTimeSelectedChoice:v11];
    goto LABEL_13;
  }

LABEL_14:
}

@end
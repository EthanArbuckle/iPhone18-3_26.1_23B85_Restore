@interface RAPEditEntryPointViewController
- (CLLocationCoordinate2D)originalCoordinate;
- (RAPEditEntryPointDelegate)delegate;
- (RAPEditEntryPointViewController)initWithMapRect:(id)rect entryPoint:(id)point delegate:(id)delegate initialViewMode:(int64_t)mode;
- (id)_tableView:(id)view deleteCellForIndexPath:(id)path;
- (id)_tableView:(id)view entryTypeCellForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int)analyticTarget;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelEditingEntryPoint;
- (void)_captureUserAction:(int)action;
- (void)_deleteEntryPoint;
- (void)_editEntryPoint;
- (void)_saveEntryPoint;
- (void)_updateDoneButton;
- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode;
- (void)setupConstraints;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation RAPEditEntryPointViewController

- (CLLocationCoordinate2D)originalCoordinate
{
  latitude = self->_originalCoordinate.latitude;
  longitude = self->_originalCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (RAPEditEntryPointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDoneButton
{
  mapView = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [mapView centerCoordinate];
  v5 = v4;
  v7 = v6;

  v8 = 0;
  if (fabs(v7) <= 180.0 && v5 >= -90.0 && v5 <= 90.0)
  {
    entryPointType = self->_entryPointType;
    if (self->_editState)
    {
      if (entryPointType == self->_originalEntryPointType)
      {
        v8 = (vabdd_f64(v5, self->_originalCoordinate.latitude) >= 0.00000000999999994) | (vabdd_f64(v7, self->_originalCoordinate.longitude) >= 0.00000000999999994);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = entryPointType != 0;
    }
  }

  navigationItem = [(RAPEditEntryPointViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v8 & 1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section])
  {
    [(RAPEditEntryPointViewController *)self _captureUserAction:10190];
    delegate = [(RAPEditEntryPointViewController *)self delegate];
    entryPoint = [(RAPEditEntryPointViewController *)self entryPoint];
    [delegate userDidRequestDeletionOfEntryPoint:entryPoint];

    [(RAPEditEntryPointViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    entryPointType = [(RAPEditEntryPointViewController *)self entryPointType];
    v10 = [pathCopy row];
    if (v10 <= 2)
    {
      [(RAPEditEntryPointViewController *)self setEntryPointType:qword_1012161F0[v10]];
    }

    if (entryPointType != [(RAPEditEntryPointViewController *)self entryPointType])
    {
      [(RAPEditEntryPointViewController *)self _captureUserAction:10191];
      v11 = [[NSIndexSet alloc] initWithIndex:0];
      [viewCopy reloadSections:v11 withRowAnimation:5];

      [(RAPEditEntryPointViewController *)self _updateDoneButton];
    }
  }
}

- (id)_tableView:(id)view deleteCellForIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Remove Entrance [Report an Issue]" value:@"localized string not found" table:0];
  textLabel = [v9 textLabel];
  [textLabel setText:v11];

  v13 = +[UIColor systemRedColor];
  textLabel2 = [v9 textLabel];
  [textLabel2 setTextColor:v13];

  textLabel3 = [v9 textLabel];
  [textLabel3 setTextAlignment:1];

  return v9;
}

- (id)_tableView:(id)view entryTypeCellForIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = [pathCopy row];
  if (v11 <= 2)
  {
    v12 = off_101660238[v11];
    v13 = qword_1012161F0[v11];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:v12 value:@"localized string not found" table:0];
    textLabel = [v10 textLabel];
    [textLabel setText:v15];

    [v10 setChecked:{-[RAPEditEntryPointViewController entryPointType](self, "entryPointType") == v13}];
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    [(RAPEditEntryPointViewController *)self _tableView:viewCopy deleteCellForIndexPath:pathCopy];
  }

  else
  {
    [(RAPEditEntryPointViewController *)self _tableView:viewCopy entryTypeCellForIndexPath:pathCopy];
  }
  v8 = ;

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    viewCopy = view;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Entrance Type [RAP]" value:@"localized string not found" table:0];
    v4 = [viewCopy _maps_groupedHeaderViewWithTitle:v7];
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  entryPoint = [(RAPEditEntryPointViewController *)self entryPoint];

  if (entryPoint)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)analyticTarget
{
  if (self->_editState)
  {
    return 1159;
  }

  else
  {
    return 1161;
  }
}

- (void)_captureUserAction:(int)action
{
  if (action)
  {
    v3 = *&action;
    analyticTarget = [(RAPEditEntryPointViewController *)self analyticTarget];

    [GEOAPPortal captureUserAction:v3 target:analyticTarget value:0];
  }
}

- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode
{
  viewCopy = view;
  if (mode <= 2)
  {
    v7 = viewCopy;
    [(RAPEditEntryPointViewController *)self _captureUserAction:dword_1012161E0[mode]];
    viewCopy = v7;
  }
}

- (void)_deleteEntryPoint
{
  [(RAPEditEntryPointViewController *)self _captureUserAction:10190];
  delegate = [(RAPEditEntryPointViewController *)self delegate];
  entryPoint = [(RAPEditEntryPointViewController *)self entryPoint];
  [delegate userDidRequestDeletionOfEntryPoint:entryPoint];

  [(RAPEditEntryPointViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_saveEntryPoint
{
  [(RAPEditEntryPointViewController *)self _captureUserAction:10110];
  delegate = [(RAPEditEntryPointViewController *)self delegate];
  editLocationMapView = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [editLocationMapView centerCoordinate];
  v7 = [delegate userDidRequestCreationOfEntryPointWithCoordinates:-[RAPEditEntryPointViewController entryPointType](self entryPointType:{"entryPointType"), v5, v6}];
  [(RAPEditEntryPointViewController *)self setEntryPoint:v7];

  delegate2 = [(RAPEditEntryPointViewController *)self delegate];
  editLocationMapView2 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [delegate2 editEntryPointController:self willDismissWithViewMode:{objc_msgSend(editLocationMapView2, "viewMode")}];

  [(RAPEditEntryPointViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_editEntryPoint
{
  [(RAPEditEntryPointViewController *)self _captureUserAction:16];
  delegate = [(RAPEditEntryPointViewController *)self delegate];
  entryPoint = [(RAPEditEntryPointViewController *)self entryPoint];
  editLocationMapView = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [editLocationMapView centerCoordinate];
  [delegate userDidRequestModificationOfEntryPoint:entryPoint withCoordinates:-[RAPEditEntryPointViewController entryPointType](self entryPointType:{"entryPointType"), v6, v7}];

  delegate2 = [(RAPEditEntryPointViewController *)self delegate];
  editLocationMapView2 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [delegate2 editEntryPointController:self willDismissWithViewMode:{objc_msgSend(editLocationMapView2, "viewMode")}];

  [(RAPEditEntryPointViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_cancelEditingEntryPoint
{
  [(RAPEditEntryPointViewController *)self _captureUserAction:[(RAPEditEntryPointViewController *)self backAction]];
  delegate = [(RAPEditEntryPointViewController *)self delegate];
  editLocationMapView = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [delegate editEntryPointController:self willDismissWithViewMode:{objc_msgSend(editLocationMapView, "viewMode")}];

  [(RAPEditEntryPointViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)setupConstraints
{
  editLocationMapView = [(RAPEditEntryPointViewController *)self editLocationMapView];
  leadingAnchor = [editLocationMapView leadingAnchor];
  view = [(RAPEditEntryPointViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v40;
  editLocationMapView2 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  trailingAnchor = [editLocationMapView2 trailingAnchor];
  view2 = [(RAPEditEntryPointViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v35;
  editLocationMapView3 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  topAnchor = [editLocationMapView3 topAnchor];
  view3 = [(RAPEditEntryPointViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[2] = v29;
  editLocationMapView4 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  heightAnchor = [editLocationMapView4 heightAnchor];
  view4 = [(RAPEditEntryPointViewController *)self view];
  heightAnchor2 = [view4 heightAnchor];
  v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
  v45[3] = v24;
  tableView = [(RAPEditEntryPointViewController *)self tableView];
  topAnchor3 = [tableView topAnchor];
  editLocationMapView5 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  bottomAnchor = [editLocationMapView5 bottomAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v45[4] = v19;
  tableView2 = [(RAPEditEntryPointViewController *)self tableView];
  leadingAnchor3 = [tableView2 leadingAnchor];
  view5 = [(RAPEditEntryPointViewController *)self view];
  leadingAnchor4 = [view5 leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v45[5] = v14;
  tableView3 = [(RAPEditEntryPointViewController *)self tableView];
  trailingAnchor3 = [tableView3 trailingAnchor];
  view6 = [(RAPEditEntryPointViewController *)self view];
  trailingAnchor4 = [view6 trailingAnchor];
  v6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v45[6] = v6;
  tableView4 = [(RAPEditEntryPointViewController *)self tableView];
  bottomAnchor2 = [tableView4 bottomAnchor];
  view7 = [(RAPEditEntryPointViewController *)self view];
  bottomAnchor3 = [view7 bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v45[7] = v11;
  v12 = [NSArray arrayWithObjects:v45 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = RAPEditEntryPointViewController;
  [(RAPEditEntryPointViewController *)&v21 viewDidLoad];
  v3 = [UIColor colorNamed:@"RAPGroupedTableViewBackgroundColor"];
  view = [(RAPEditEntryPointViewController *)self view];
  [view setBackgroundColor:v3];

  editLocationMapView = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];

  editLocationMapView2 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [editLocationMapView2 setDelegate:self];

  view2 = [(RAPEditEntryPointViewController *)self view];
  editLocationMapView3 = [(RAPEditEntryPointViewController *)self editLocationMapView];
  [view2 addSubview:editLocationMapView3];

  tableView = [(RAPEditEntryPointViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(RAPEditEntryPointViewController *)self view];
  tableView2 = [(RAPEditEntryPointViewController *)self tableView];
  [view3 addSubview:tableView2];

  entryPoint = [(RAPEditEntryPointViewController *)self entryPoint];

  v13 = [UIBarButtonItem alloc];
  v14 = v13;
  if (entryPoint)
  {
    v15 = [v13 initWithBarButtonSystemItem:0 target:self action:"_editEntryPoint"];
    navigationItem = [(RAPEditEntryPointViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v15];
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    navigationItem = [v15 localizedStringForKey:@"Save [RAP][Entry Point]" value:@"localized string not found" table:0];
    v17 = [v14 initWithTitle:navigationItem style:2 target:self action:"_saveEntryPoint"];
    navigationItem2 = [(RAPEditEntryPointViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v17];
  }

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelEditingEntryPoint"];
  navigationItem3 = [(RAPEditEntryPointViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v19];

  [(RAPEditEntryPointViewController *)self _updateDoneButton];
  [(RAPEditEntryPointViewController *)self setupConstraints];
}

- (RAPEditEntryPointViewController)initWithMapRect:(id)rect entryPoint:(id)point delegate:(id)delegate initialViewMode:(int64_t)mode
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v11 = rect.var0.var1;
  v12 = rect.var0.var0;
  pointCopy = point;
  delegateCopy = delegate;
  v52.receiver = self;
  v52.super_class = RAPEditEntryPointViewController;
  v16 = [(RAPEditEntryPointViewController *)&v52 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17->_editState = pointCopy != 0;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Add Entrance [Report an Issue]" value:@"localized string not found" table:0];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Edit Entrance [Report an Issue]" value:@"localized string not found" table:0];

    v50 = v21;
    v51 = v19;
    if (v17->_editState)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    navigationItem = [(RAPEditEntryPointViewController *)v17 navigationItem];
    [navigationItem setTitle:v22];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    navigationItem2 = [(RAPEditEntryPointViewController *)v17 navigationItem];
    backBarButtonItem = [navigationItem2 backBarButtonItem];
    [backBarButtonItem setTitle:v25];

    v28 = [RAPMarkerViewAttributes alloc];
    v29 = +[RAPEntryPoint entryPointStyleAttributes];
    v30 = [(RAPMarkerViewAttributes *)v28 initWithTitle:0 styleAttributes:v29];

    var1 = [[RAPEditLocationMapView alloc] initWithMapRect:mode viewMode:v30 markerViewAttributes:v12, v11, var0, var1];
    editLocationMapView = v17->_editLocationMapView;
    v17->_editLocationMapView = var1;

    [(RAPEditLocationMapView *)v17->_editLocationMapView setCrosshairEnabled:1];
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Pan & zoom map to adjust entrance location [Report an Issue]" value:@"localized string not found" table:0];
    [(RAPEditLocationMapView *)v17->_editLocationMapView setPrompt:v34];

    if (pointCopy)
    {
      objc_storeStrong(&v17->_entryPoint, point);
      v17->_entryPointType = [pointCopy entryPointType];
      [pointCopy coordinate];
      v17->_originalCoordinate.latitude = v35;
      v17->_originalCoordinate.longitude = v36;
      v17->_originalEntryPointType = [pointCopy entryPointType];
      [pointCopy coordinate];
      [(RAPEditLocationMapView *)v17->_editLocationMapView setCenterCoordinate:?];
    }

    else
    {
      v17->_entryPointType = 0;
      [(RAPEditLocationMapView *)v17->_editLocationMapView centerCoordinate];
      v17->_originalCoordinate.latitude = v37;
      v17->_originalCoordinate.longitude = v38;
    }

    v39 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = v17->_tableView;
    v17->_tableView = v39;

    v41 = v17->_tableView;
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    [(UITableView *)v41 registerClass:v42 forCellReuseIdentifier:v44];

    v45 = v17->_tableView;
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    [(UITableView *)v45 registerClass:v46 forCellReuseIdentifier:v48];

    [(UITableView *)v17->_tableView _maps_initializeRAPAppearance];
    [(UITableView *)v17->_tableView setDataSource:v17];
    [(UITableView *)v17->_tableView setDelegate:v17];
  }

  return v17;
}

@end
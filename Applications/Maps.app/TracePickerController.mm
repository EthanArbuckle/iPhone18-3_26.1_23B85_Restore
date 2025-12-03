@interface TracePickerController
- (NSArray)selectedTracePaths;
- (TracePickerController)init;
- (TracePickerController)initWithTraceType:(int64_t)type confirmHandler:(id)handler;
- (id)_resolveTraceFiles;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)tracePathForRow:(unint64_t)row;
- (id)tracePickerOptionsForTableView:(id)view indexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_typeSelectionChanged:(id)changed;
- (void)reloadTraces;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTracePickerOptions;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TracePickerController

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [TraceManager sharedManager:view];
  v5 = [v4 tracesDirectoryWithTraceType:0 resolveSymlink:1];

  v6 = [NSString stringWithFormat:@"Directory: %@", v5];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[TraceManager sharedManager];
  v8 = [pathCopy row];
  if (![pathCopy section])
  {
    _resolveTraceFiles = [(TracePickerController *)self _resolveTraceFiles];
    v10 = [_resolveTraceFiles objectAtIndexedSubscript:v8];
    [(TracePickerController *)self setSelectedTraceFileName:v10];

    v11 = [v7 displayNameForTraceName:self->_selectedTraceFileName];
    [(TracePickerController *)self setSelectedTraceName:v11];

    v12 = [v7 fullPathForTraceFilename:self->_selectedTraceFileName withTraceType:self->_selectedType];
    [(TracePickerController *)self setSelectedTracePath:v12];
  }

  tableView = [(TracePickerController *)self tableView];
  isEditing = [tableView isEditing];

  if ((isEditing & 1) == 0)
  {
    v15 = [(TracePickerController *)self tracePickerOptionsForTableView:viewCopy indexPath:pathCopy];
    v16 = [viewCopy cellForRowAtIndexPath:pathCopy];
    popoverPresentationController = [v15 popoverPresentationController];
    [popoverPresentationController setSourceView:v16];

    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    popoverPresentationController2 = [v15 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

    [(TracePickerController *)self presentViewController:v15 animated:1 completion:0];
  }
}

- (id)tracePickerOptionsForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v5 = [UIAlertController alertControllerWithTitle:self->_selectedTraceName message:0 preferredStyle:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  myFileSheetTracePickerOptions = [(TracePickerController *)self myFileSheetTracePickerOptions];
  v7 = [myFileSheetTracePickerOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(myFileSheetTracePickerOptions);
        }

        integerValue = [*(*(&v19 + 1) + 8 * i) integerValue];
        if (integerValue)
        {
          if (integerValue != 1)
          {
            continue;
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1006264F0;
          v18[3] = &unk_10165F220;
          v18[4] = self;
          v12 = [UIAlertAction actionWithTitle:@"Confirm" style:0 handler:v18];
          [v5 addAction:v12];
        }

        else
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100626574;
          v16[3] = &unk_1016383E0;
          v16[4] = self;
          v17 = pathCopy;
          v13 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v16];
          [v5 addAction:v13];

          v12 = v17;
        }
      }

      v8 = [myFileSheetTracePickerOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = 0;
  }

  else
  {
    _resolveTraceFiles = [(TracePickerController *)self _resolveTraceFiles];
    v8 = [_resolveTraceFiles count];

    if (v8)
    {
      v6 = pathCopy;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = v6;

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if ([pathCopy section])
  {
    v9 = 1;
  }

  else
  {
    _resolveTraceFiles = [(TracePickerController *)self _resolveTraceFiles];
    v11 = [_resolveTraceFiles count];

    v9 = v11 == 0;
  }

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"TraceFile"];
  if (!v12)
  {
    v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TraceFile"];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    if ([pathCopy section])
    {
      v17 = 0;
    }

    else
    {
      _resolveTraceFiles2 = [(TracePickerController *)self _resolveTraceFiles];
      v17 = [_resolveTraceFiles2 objectAtIndexedSubscript:v8];
    }

    v19 = +[TraceManager sharedManager];
    v20 = [v19 displayNameForTraceName:v17];
    textLabel = [v12 textLabel];
    [textLabel setText:v20];

    v22 = +[UIColor labelColor];
    textLabel2 = [v12 textLabel];
    [textLabel2 setTextColor:v22];

    textLabel3 = [v12 textLabel];
    [textLabel3 setAdjustsFontSizeToFitWidth:1];

    [v12 setSelectionStyle:1];
    goto LABEL_12;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  textLabel4 = [v12 textLabel];
  [textLabel4 setText:@"No traces"];

  v14 = +[UIColor secondaryLabelColor];
  textLabel5 = [v12 textLabel];
  [textLabel5 setTextColor:v14];

  textLabel6 = [v12 textLabel];
  [textLabel6 setAdjustsFontSizeToFitWidth:0];

  [v12 setSelectionStyle:0];
LABEL_12:

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    _resolveTraceFiles = [(TracePickerController *)self _resolveTraceFiles];
    v4 = [_resolveTraceFiles count];
  }

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (NSArray)selectedTracePaths
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  tableView = [(TracePickerController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 row];
        if (![v10 section])
        {
          v12 = [(TracePickerController *)self tracePathForRow:v11];
          [v3 addObject:v12];
        }
      }

      v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)tracePathForRow:(unint64_t)row
{
  v5 = +[TraceManager sharedManager];
  _resolveTraceFiles = [(TracePickerController *)self _resolveTraceFiles];
  v7 = [_resolveTraceFiles objectAtIndexedSubscript:row];

  v8 = [v5 fullPathForTraceFilename:v7 withTraceType:self->_selectedType];

  return v8;
}

- (void)updateTracePickerOptions
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  [v3 addObject:&off_1016E6548];
  [v3 addObject:&off_1016E6560];
  [(TracePickerController *)self setMyFileSheetTracePickerOptions:v3];
}

- (id)_resolveTraceFiles
{
  selectedType = self->_selectedType;
  if (selectedType == 1)
  {
    routePlanningTraces = [(TracePickerController *)self routePlanningTraces];
  }

  else if (selectedType)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[TracePickerController _resolveTraceFiles]";
      v10 = 2080;
      v11 = "TracePickerController.m";
      v12 = 1024;
      v13 = 134;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v8, 0x1Cu);
    }

    routePlanningTraces = sub_100E03634();
    if (routePlanningTraces)
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }

  else
  {
    routePlanningTraces = [(TracePickerController *)self navTraces];
  }

  return routePlanningTraces;
}

- (void)_typeSelectionChanged:(id)changed
{
  self->_selectedType = [changed selectedSegmentIndex];
  tableView = [(TracePickerController *)self tableView];
  [tableView reloadData];
}

- (void)reloadTraces
{
  v3 = +[TraceManager sharedManager];
  type = self->_type;
  v9 = v3;
  if ((type + 1) <= 1)
  {
    v5 = [v3 listOfUserTracesWithTraceType:0];
    [(TracePickerController *)self setNavTraces:v5];

    type = self->_type;
  }

  if (type == 1 || type == -1)
  {
    v7 = [v9 listOfUserTracesWithTraceType:1];
    [(TracePickerController *)self setRoutePlanningTraces:v7];
  }

  tableView = [(TracePickerController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = TracePickerController;
  [(MapsDebugValuesViewController *)&v12 viewDidLoad];
  navigationDestinationTitle = [objc_opt_class() navigationDestinationTitle];
  navigationItem = [(TracePickerController *)self navigationItem];
  [navigationItem setTitle:navigationDestinationTitle];

  v5 = objc_alloc_init(UINavigationBarAppearance);
  [v5 configureWithDefaultBackground];
  navigationItem2 = [(TracePickerController *)self navigationItem];
  [navigationItem2 setStandardAppearance:v5];

  navigationItem3 = [(TracePickerController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v5];

  v8 = [[UISegmentedControl alloc] initWithItems:&off_1016EC830];
  [(UISegmentedControl *)v8 setAutoresizingMask:2];
  [(UISegmentedControl *)v8 addTarget:self action:"_typeSelectionChanged:" forControlEvents:4096];
  tableView = [(TracePickerController *)self tableView];
  [tableView setTableHeaderView:v8];

  typeControl = self->_typeControl;
  self->_typeControl = v8;
  v11 = v8;

  [(UISegmentedControl *)self->_typeControl setSelectedSegmentIndex:self->_selectedType];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(TracePickerController *)self reloadTraces];
  [(TracePickerController *)self updateTracePickerOptions];
  v5.receiver = self;
  v5.super_class = TracePickerController;
  [(MapsDebugValuesViewController *)&v5 viewWillAppear:appearCopy];
}

- (TracePickerController)initWithTraceType:(int64_t)type confirmHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = TracePickerController;
  v7 = [(AuxiliaryDebugViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v7->_selectedType = 0;
    if (handlerCopy)
    {
      v9 = [handlerCopy copy];
      confirmHandler = v8->_confirmHandler;
      v8->_confirmHandler = v9;
    }
  }

  return v8;
}

- (TracePickerController)init
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100627114;
  v4[3] = &unk_101639868;
  selfCopy = self;
  v2 = [(TracePickerController *)selfCopy initWithTraceType:-1 confirmHandler:v4];

  return v2;
}

@end
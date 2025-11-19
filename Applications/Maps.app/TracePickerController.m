@interface TracePickerController
- (NSArray)selectedTracePaths;
- (TracePickerController)init;
- (TracePickerController)initWithTraceType:(int64_t)a3 confirmHandler:(id)a4;
- (id)_resolveTraceFiles;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)tracePathForRow:(unint64_t)a3;
- (id)tracePickerOptionsForTableView:(id)a3 indexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_typeSelectionChanged:(id)a3;
- (void)reloadTraces;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTracePickerOptions;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TracePickerController

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [TraceManager sharedManager:a3];
  v5 = [v4 tracesDirectoryWithTraceType:0 resolveSymlink:1];

  v6 = [NSString stringWithFormat:@"Directory: %@", v5];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = +[TraceManager sharedManager];
  v8 = [v6 row];
  if (![v6 section])
  {
    v9 = [(TracePickerController *)self _resolveTraceFiles];
    v10 = [v9 objectAtIndexedSubscript:v8];
    [(TracePickerController *)self setSelectedTraceFileName:v10];

    v11 = [v7 displayNameForTraceName:self->_selectedTraceFileName];
    [(TracePickerController *)self setSelectedTraceName:v11];

    v12 = [v7 fullPathForTraceFilename:self->_selectedTraceFileName withTraceType:self->_selectedType];
    [(TracePickerController *)self setSelectedTracePath:v12];
  }

  v13 = [(TracePickerController *)self tableView];
  v14 = [v13 isEditing];

  if ((v14 & 1) == 0)
  {
    v15 = [(TracePickerController *)self tracePickerOptionsForTableView:v27 indexPath:v6];
    v16 = [v27 cellForRowAtIndexPath:v6];
    v17 = [v15 popoverPresentationController];
    [v17 setSourceView:v16];

    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v15 popoverPresentationController];
    [v26 setSourceRect:{v19, v21, v23, v25}];

    [(TracePickerController *)self presentViewController:v15 animated:1 completion:0];
  }
}

- (id)tracePickerOptionsForTableView:(id)a3 indexPath:(id)a4
{
  v15 = a4;
  v5 = [UIAlertController alertControllerWithTitle:self->_selectedTraceName message:0 preferredStyle:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(TracePickerController *)self myFileSheetTracePickerOptions];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * i) integerValue];
        if (v11)
        {
          if (v11 != 1)
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
          v17 = v15;
          v13 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v16];
          [v5 addAction:v13];

          v12 = v17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(TracePickerController *)self _resolveTraceFiles];
    v8 = [v7 count];

    if (v8)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = v6;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if ([v7 section])
  {
    v9 = 1;
  }

  else
  {
    v10 = [(TracePickerController *)self _resolveTraceFiles];
    v11 = [v10 count];

    v9 = v11 == 0;
  }

  v12 = [v6 dequeueReusableCellWithIdentifier:@"TraceFile"];
  if (!v12)
  {
    v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TraceFile"];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    if ([v7 section])
    {
      v17 = 0;
    }

    else
    {
      v18 = [(TracePickerController *)self _resolveTraceFiles];
      v17 = [v18 objectAtIndexedSubscript:v8];
    }

    v19 = +[TraceManager sharedManager];
    v20 = [v19 displayNameForTraceName:v17];
    v21 = [v12 textLabel];
    [v21 setText:v20];

    v22 = +[UIColor labelColor];
    v23 = [v12 textLabel];
    [v23 setTextColor:v22];

    v24 = [v12 textLabel];
    [v24 setAdjustsFontSizeToFitWidth:1];

    [v12 setSelectionStyle:1];
    goto LABEL_12;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = [v12 textLabel];
  [v13 setText:@"No traces"];

  v14 = +[UIColor secondaryLabelColor];
  v15 = [v12 textLabel];
  [v15 setTextColor:v14];

  v16 = [v12 textLabel];
  [v16 setAdjustsFontSizeToFitWidth:0];

  [v12 setSelectionStyle:0];
LABEL_12:

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TracePickerController *)self _resolveTraceFiles];
    v4 = [v5 count];
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
  v4 = [(TracePickerController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 row];
        if (![v10 section])
        {
          v12 = [(TracePickerController *)self tracePathForRow:v11];
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)tracePathForRow:(unint64_t)a3
{
  v5 = +[TraceManager sharedManager];
  v6 = [(TracePickerController *)self _resolveTraceFiles];
  v7 = [v6 objectAtIndexedSubscript:a3];

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
    v3 = [(TracePickerController *)self routePlanningTraces];
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

    v3 = sub_100E03634();
    if (v3)
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
    v3 = [(TracePickerController *)self navTraces];
  }

  return v3;
}

- (void)_typeSelectionChanged:(id)a3
{
  self->_selectedType = [a3 selectedSegmentIndex];
  v4 = [(TracePickerController *)self tableView];
  [v4 reloadData];
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

  v8 = [(TracePickerController *)self tableView];
  [v8 reloadData];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = TracePickerController;
  [(MapsDebugValuesViewController *)&v12 viewDidLoad];
  v3 = [objc_opt_class() navigationDestinationTitle];
  v4 = [(TracePickerController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = objc_alloc_init(UINavigationBarAppearance);
  [v5 configureWithDefaultBackground];
  v6 = [(TracePickerController *)self navigationItem];
  [v6 setStandardAppearance:v5];

  v7 = [(TracePickerController *)self navigationItem];
  [v7 setScrollEdgeAppearance:v5];

  v8 = [[UISegmentedControl alloc] initWithItems:&off_1016EC830];
  [(UISegmentedControl *)v8 setAutoresizingMask:2];
  [(UISegmentedControl *)v8 addTarget:self action:"_typeSelectionChanged:" forControlEvents:4096];
  v9 = [(TracePickerController *)self tableView];
  [v9 setTableHeaderView:v8];

  typeControl = self->_typeControl;
  self->_typeControl = v8;
  v11 = v8;

  [(UISegmentedControl *)self->_typeControl setSelectedSegmentIndex:self->_selectedType];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(TracePickerController *)self reloadTraces];
  [(TracePickerController *)self updateTracePickerOptions];
  v5.receiver = self;
  v5.super_class = TracePickerController;
  [(MapsDebugValuesViewController *)&v5 viewWillAppear:v3];
}

- (TracePickerController)initWithTraceType:(int64_t)a3 confirmHandler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TracePickerController;
  v7 = [(AuxiliaryDebugViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v7->_selectedType = 0;
    if (v6)
    {
      v9 = [v6 copy];
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
  v5 = self;
  v2 = [(TracePickerController *)v5 initWithTraceType:-1 confirmHandler:v4];

  return v2;
}

@end
@interface NavigationCameraSnapshotPickerViewController
- (NavigationCameraSnapshotPickerDelegate)delegate;
- (NavigationCameraSnapshotPickerViewController)initWithDelegate:(id)delegate;
- (id)_detailTextForSnapshot:(id)snapshot;
- (id)cameraSnapshots;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell withCameraSnapshot:(id)snapshot;
- (void)_registerTableViewCells;
- (void)cameraSnapshotsManager:(id)manager didInsertAtIndex:(unint64_t)index toTraceFile:(id)file;
- (void)cameraSnapshotsManager:(id)manager didRemoveAtIndex:(unint64_t)index fromTraceFile:(id)file;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation NavigationCameraSnapshotPickerViewController

- (NavigationCameraSnapshotPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cameraSnapshotsManager:(id)manager didRemoveAtIndex:(unint64_t)index fromTraceFile:(id)file
{
  fileCopy = file;
  delegate = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  tracePath = [delegate tracePath];
  v10 = [fileCopy isEqualToString:tracePath];

  if (v10)
  {
    v11 = [NSIndexPath indexPathForRow:index inSection:0];
    tableView = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    v14 = v11;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [tableView deleteRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (void)cameraSnapshotsManager:(id)manager didInsertAtIndex:(unint64_t)index toTraceFile:(id)file
{
  fileCopy = file;
  delegate = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  tracePath = [delegate tracePath];
  v10 = [fileCopy isEqualToString:tracePath];

  if (v10)
  {
    v11 = [NSIndexPath indexPathForRow:index inSection:0];
    tableView = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    v18 = v11;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [tableView insertRowsAtIndexPaths:v13 withRowAnimation:100];

    tableView2 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];
    v16 = [indexPathsForVisibleRows containsObject:v11];

    if ((v16 & 1) == 0)
    {
      tableView3 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
      [tableView3 scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:1];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) == 0)
  {
    v7 = [pathCopy row];
    cameraSnapshots = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    v9 = [cameraSnapshots count];

    if (style == 1 && v7 < v9)
    {
      v10 = +[NavigationCameraSnapshotManager sharedInstance];
      v11 = [pathCopy row];
      delegate = [(NavigationCameraSnapshotPickerViewController *)self delegate];
      tracePath = [delegate tracePath];
      [v10 removeCameraSnapshotAtIndex:v11 fromTraceFile:tracePath];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) == 0)
  {
    v5 = [pathCopy row];
    cameraSnapshots = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    v7 = [cameraSnapshots count];

    if (v5 < v7)
    {
      cameraSnapshots2 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
      v9 = [cameraSnapshots2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      delegate = [(NavigationCameraSnapshotPickerViewController *)self delegate];
      if (delegate)
      {
        v11 = delegate;
        delegate2 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          delegate3 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
          [delegate3 cameraSnapshotPicker:self didSelectCameraSnapshot:v9];
        }
      }
    }
  }
}

- (id)_detailTextForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  puckLocation = [snapshotCopy puckLocation];

  if (!puckLocation)
  {
    camera = [snapshotCopy camera];
    [camera centerCoordinate];
    v26 = v25;
    camera2 = [snapshotCopy camera];
    [camera2 centerCoordinate];
    v28 = [NSString stringWithFormat:@"Center %.4f°N, %.4f°W", v26, v27];
    v13 = @"Puck N/A";
    goto LABEL_16;
  }

  puckLocation2 = [snapshotCopy puckLocation];
  [puckLocation2 coordinate];
  v7 = v6;
  puckLocation3 = [snapshotCopy puckLocation];
  [puckLocation3 coordinate];
  v10 = v9;
  puckLocation4 = [snapshotCopy puckLocation];
  [puckLocation4 course];
  v13 = [NSString stringWithFormat:@"Puck %.4f°N, %.4f°W · %.0f°", v7, v10, v12];

  camera = [snapshotCopy puckLocation];
  [camera coordinate];
  v16 = v15;
  camera2 = [snapshotCopy camera];
  [camera2 centerCoordinate];
  v19 = v18;
  if (v16 == v18)
  {
    puckLocation5 = [snapshotCopy puckLocation];
    [puckLocation5 coordinate];
    v22 = v21;
    camera3 = [snapshotCopy camera];
    [camera3 centerCoordinate];
    if (v22 == v24)
    {
      v28 = @"Center on puck";
LABEL_15:

      goto LABEL_16;
    }

    v57 = camera3;
    v58 = puckLocation5;
    v59 = v13;
  }

  else
  {
    v59 = v13;
  }

  camera4 = [snapshotCopy camera];
  [camera4 centerCoordinate];
  v31 = v30;
  camera5 = [snapshotCopy camera];
  [camera5 centerCoordinate];
  v34 = v33;
  [snapshotCopy puckToCenterX];
  v35 = @"+";
  if (v36 <= 0.0)
  {
    v37 = &stru_1016631F0;
  }

  else
  {
    v37 = @"+";
  }

  [snapshotCopy puckToCenterX];
  v39 = v38;
  [snapshotCopy puckToCenterY];
  if (v40 <= 0.0)
  {
    v35 = &stru_1016631F0;
  }

  [snapshotCopy puckToCenterY];
  v28 = [NSString stringWithFormat:@"Center %.4f°N, %.4f°W · %@%.0fm, %@%.0fm", v31, v34, v37, v39, v35, v41];

  puckLocation5 = v58;
  v13 = v59;
  camera3 = v57;
  if (v16 == v19)
  {
    goto LABEL_15;
  }

LABEL_16:

  camera6 = [snapshotCopy camera];
  [camera6 pitch];
  v44 = cos(v43 * 0.0174532925);

  if (v44 == 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    camera7 = [snapshotCopy camera];
    [camera7 altitude];
    v47 = v46 / v44;
  }

  camera8 = [snapshotCopy camera];
  [camera8 heading];
  v50 = v49;
  camera9 = [snapshotCopy camera];
  [camera9 pitch];
  v53 = [NSString stringWithFormat:@"Camera %.0fm away · %.0f° yaw · %.0f° pitch", *&v47, v50, v52];

  v60[0] = v13;
  v60[1] = v28;
  v60[2] = v53;
  v54 = [NSArray arrayWithObjects:v60 count:3];
  v55 = [v54 componentsJoinedByString:@"\n"];

  return v55;
}

- (void)_configureCell:(id)cell withCameraSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  [textLabel setLineBreakMode:4];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setLineBreakMode:4];

  textLabel2 = [cellCopy textLabel];
  [textLabel2 setNumberOfLines:0];

  detailTextLabel2 = [cellCopy detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  v13 = [v12 fontWithSize:13.0];
  textLabel3 = [cellCopy textLabel];
  [textLabel3 setFont:v13];

  v15 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
  v16 = [v15 fontWithSize:10.0];
  detailTextLabel3 = [cellCopy detailTextLabel];
  [detailTextLabel3 setFont:v16];

  v18 = +[UIColor systemGrayColor];
  detailTextLabel4 = [cellCopy detailTextLabel];
  [detailTextLabel4 setTextColor:v18];

  [snapshotCopy tracePlaybackTimeFraction];
  v21 = [NSString stringWithFormat:@"%.1f%% Complete", v20 * 100.0];
  textLabel4 = [cellCopy textLabel];
  [textLabel4 setText:v21];

  v24 = [(NavigationCameraSnapshotPickerViewController *)self _detailTextForSnapshot:snapshotCopy];

  detailTextLabel5 = [cellCopy detailTextLabel];

  [detailTextLabel5 setText:v24];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CameraCellID" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"CameraCellID"];
  }

  if (([pathCopy row] & 0x8000000000000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v8 = [pathCopy row];
    cameraSnapshots = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    if (v8 >= [cameraSnapshots count])
    {
      v11 = 0;
    }

    else
    {
      cameraSnapshots2 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
      v11 = [cameraSnapshots2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    }
  }

  [(NavigationCameraSnapshotPickerViewController *)self _configureCell:v7 withCameraSnapshot:v11];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots:view];
  v5 = [v4 count];

  return v5;
}

- (void)_registerTableViewCells
{
  tableView = [(NavigationCameraSnapshotPickerViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CameraCellID"];
}

- (id)cameraSnapshots
{
  v3 = +[NavigationCameraSnapshotManager sharedInstance];
  delegate = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  tracePath = [delegate tracePath];
  v6 = [v3 cameraSnapshotsOfTraceFile:tracePath];

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NavigationCameraSnapshotPickerViewController;
  [(NavigationCameraSnapshotPickerViewController *)&v4 viewDidLoad];
  [(NavigationCameraSnapshotPickerViewController *)self _registerTableViewCells];
  tableView = [(NavigationCameraSnapshotPickerViewController *)self tableView];
  [tableView setRowHeight:64.0];
}

- (NavigationCameraSnapshotPickerViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = NavigationCameraSnapshotPickerViewController;
  v5 = [(NavigationCameraSnapshotPickerViewController *)&v10 initWithStyle:0];
  v6 = v5;
  v7 = 0;
  if (delegateCopy && v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v8 = +[NavigationCameraSnapshotManager sharedInstance];
    [v8 setSnapshotsObserver:v6];

    v7 = v6;
  }

  return v7;
}

@end
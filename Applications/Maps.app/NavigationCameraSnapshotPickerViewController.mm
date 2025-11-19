@interface NavigationCameraSnapshotPickerViewController
- (NavigationCameraSnapshotPickerDelegate)delegate;
- (NavigationCameraSnapshotPickerViewController)initWithDelegate:(id)a3;
- (id)_detailTextForSnapshot:(id)a3;
- (id)cameraSnapshots;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 withCameraSnapshot:(id)a4;
- (void)_registerTableViewCells;
- (void)cameraSnapshotsManager:(id)a3 didInsertAtIndex:(unint64_t)a4 toTraceFile:(id)a5;
- (void)cameraSnapshotsManager:(id)a3 didRemoveAtIndex:(unint64_t)a4 fromTraceFile:(id)a5;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NavigationCameraSnapshotPickerViewController

- (NavigationCameraSnapshotPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cameraSnapshotsManager:(id)a3 didRemoveAtIndex:(unint64_t)a4 fromTraceFile:(id)a5
{
  v7 = a5;
  v8 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  v9 = [v8 tracePath];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [NSIndexPath indexPathForRow:a4 inSection:0];
    v12 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    v14 = v11;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (void)cameraSnapshotsManager:(id)a3 didInsertAtIndex:(unint64_t)a4 toTraceFile:(id)a5
{
  v7 = a5;
  v8 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  v9 = [v8 tracePath];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [NSIndexPath indexPathForRow:a4 inSection:0];
    v12 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    v18 = v11;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:100];

    v14 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
    v15 = [v14 indexPathsForVisibleRows];
    v16 = [v15 containsObject:v11];

    if ((v16 & 1) == 0)
    {
      v17 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
      [v17 scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:1];
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v14 = a5;
  if (([v14 row] & 0x8000000000000000) == 0)
  {
    v7 = [v14 row];
    v8 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    v9 = [v8 count];

    if (a4 == 1 && v7 < v9)
    {
      v10 = +[NavigationCameraSnapshotManager sharedInstance];
      v11 = [v14 row];
      v12 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
      v13 = [v12 tracePath];
      [v10 removeCameraSnapshotAtIndex:v11 fromTraceFile:v13];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a4;
  if (([v15 row] & 0x8000000000000000) == 0)
  {
    v5 = [v15 row];
    v6 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    v7 = [v6 count];

    if (v5 < v7)
    {
      v8 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];

      v10 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
      if (v10)
      {
        v11 = v10;
        v12 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
          [v14 cameraSnapshotPicker:self didSelectCameraSnapshot:v9];
        }
      }
    }
  }
}

- (id)_detailTextForSnapshot:(id)a3
{
  v3 = a3;
  v4 = [v3 puckLocation];

  if (!v4)
  {
    v14 = [v3 camera];
    [v14 centerCoordinate];
    v26 = v25;
    v17 = [v3 camera];
    [v17 centerCoordinate];
    v28 = [NSString stringWithFormat:@"Center %.4f°N, %.4f°W", v26, v27];
    v13 = @"Puck N/A";
    goto LABEL_16;
  }

  v5 = [v3 puckLocation];
  [v5 coordinate];
  v7 = v6;
  v8 = [v3 puckLocation];
  [v8 coordinate];
  v10 = v9;
  v11 = [v3 puckLocation];
  [v11 course];
  v13 = [NSString stringWithFormat:@"Puck %.4f°N, %.4f°W · %.0f°", v7, v10, v12];

  v14 = [v3 puckLocation];
  [v14 coordinate];
  v16 = v15;
  v17 = [v3 camera];
  [v17 centerCoordinate];
  v19 = v18;
  if (v16 == v18)
  {
    v20 = [v3 puckLocation];
    [v20 coordinate];
    v22 = v21;
    v23 = [v3 camera];
    [v23 centerCoordinate];
    if (v22 == v24)
    {
      v28 = @"Center on puck";
LABEL_15:

      goto LABEL_16;
    }

    v57 = v23;
    v58 = v20;
    v59 = v13;
  }

  else
  {
    v59 = v13;
  }

  v29 = [v3 camera];
  [v29 centerCoordinate];
  v31 = v30;
  v32 = [v3 camera];
  [v32 centerCoordinate];
  v34 = v33;
  [v3 puckToCenterX];
  v35 = @"+";
  if (v36 <= 0.0)
  {
    v37 = &stru_1016631F0;
  }

  else
  {
    v37 = @"+";
  }

  [v3 puckToCenterX];
  v39 = v38;
  [v3 puckToCenterY];
  if (v40 <= 0.0)
  {
    v35 = &stru_1016631F0;
  }

  [v3 puckToCenterY];
  v28 = [NSString stringWithFormat:@"Center %.4f°N, %.4f°W · %@%.0fm, %@%.0fm", v31, v34, v37, v39, v35, v41];

  v20 = v58;
  v13 = v59;
  v23 = v57;
  if (v16 == v19)
  {
    goto LABEL_15;
  }

LABEL_16:

  v42 = [v3 camera];
  [v42 pitch];
  v44 = cos(v43 * 0.0174532925);

  if (v44 == 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v45 = [v3 camera];
    [v45 altitude];
    v47 = v46 / v44;
  }

  v48 = [v3 camera];
  [v48 heading];
  v50 = v49;
  v51 = [v3 camera];
  [v51 pitch];
  v53 = [NSString stringWithFormat:@"Camera %.0fm away · %.0f° yaw · %.0f° pitch", *&v47, v50, v52];

  v60[0] = v13;
  v60[1] = v28;
  v60[2] = v53;
  v54 = [NSArray arrayWithObjects:v60 count:3];
  v55 = [v54 componentsJoinedByString:@"\n"];

  return v55;
}

- (void)_configureCell:(id)a3 withCameraSnapshot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 textLabel];
  [v8 setLineBreakMode:4];

  v9 = [v7 detailTextLabel];
  [v9 setLineBreakMode:4];

  v10 = [v7 textLabel];
  [v10 setNumberOfLines:0];

  v11 = [v7 detailTextLabel];
  [v11 setNumberOfLines:0];

  v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  v13 = [v12 fontWithSize:13.0];
  v14 = [v7 textLabel];
  [v14 setFont:v13];

  v15 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
  v16 = [v15 fontWithSize:10.0];
  v17 = [v7 detailTextLabel];
  [v17 setFont:v16];

  v18 = +[UIColor systemGrayColor];
  v19 = [v7 detailTextLabel];
  [v19 setTextColor:v18];

  [v6 tracePlaybackTimeFraction];
  v21 = [NSString stringWithFormat:@"%.1f%% Complete", v20 * 100.0];
  v22 = [v7 textLabel];
  [v22 setText:v21];

  v24 = [(NavigationCameraSnapshotPickerViewController *)self _detailTextForSnapshot:v6];

  v23 = [v7 detailTextLabel];

  [v23 setText:v24];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CameraCellID" forIndexPath:v6];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"CameraCellID"];
  }

  if (([v6 row] & 0x8000000000000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v8 = [v6 row];
    v9 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
    if (v8 >= [v9 count])
    {
      v11 = 0;
    }

    else
    {
      v10 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    }
  }

  [(NavigationCameraSnapshotPickerViewController *)self _configureCell:v7 withCameraSnapshot:v11];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NavigationCameraSnapshotPickerViewController *)self cameraSnapshots:a3];
  v5 = [v4 count];

  return v5;
}

- (void)_registerTableViewCells
{
  v2 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
  [v2 registerClass:objc_opt_class() forCellReuseIdentifier:@"CameraCellID"];
}

- (id)cameraSnapshots
{
  v3 = +[NavigationCameraSnapshotManager sharedInstance];
  v4 = [(NavigationCameraSnapshotPickerViewController *)self delegate];
  v5 = [v4 tracePath];
  v6 = [v3 cameraSnapshotsOfTraceFile:v5];

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NavigationCameraSnapshotPickerViewController;
  [(NavigationCameraSnapshotPickerViewController *)&v4 viewDidLoad];
  [(NavigationCameraSnapshotPickerViewController *)self _registerTableViewCells];
  v3 = [(NavigationCameraSnapshotPickerViewController *)self tableView];
  [v3 setRowHeight:64.0];
}

- (NavigationCameraSnapshotPickerViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NavigationCameraSnapshotPickerViewController;
  v5 = [(NavigationCameraSnapshotPickerViewController *)&v10 initWithStyle:0];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v8 = +[NavigationCameraSnapshotManager sharedInstance];
    [v8 setSnapshotsObserver:v6];

    v7 = v6;
  }

  return v7;
}

@end
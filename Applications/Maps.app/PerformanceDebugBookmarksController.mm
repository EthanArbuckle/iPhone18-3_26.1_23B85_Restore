@interface PerformanceDebugBookmarksController
- (PerformanceDebugBookmarksController)init;
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PerformanceDebugBookmarksController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  section = [NSBundle bundleWithIdentifier:@"com.apple.Maps", section];
  v5 = [section pathForResource:@"Bookmarks" ofType:@"plist"];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(PerformanceDebugBookmarksController *)self dismissViewControllerAnimated:1 completion:0];
  items = self->_items;
  v8 = [pathCopy row];

  v39 = [(NSMutableArray *)items objectAtIndexedSubscript:v8];
  v9 = [v39 objectForKeyedSubscript:@"latitude"];
  if (v9)
  {
    v10 = [v39 objectForKeyedSubscript:@"latitude"];
    [v10 doubleValue];
  }

  v11 = [v39 objectForKeyedSubscript:@"longitude"];
  if (v11)
  {
    v12 = [v39 objectForKeyedSubscript:@"longitude"];
    [v12 doubleValue];
  }

  v13 = [v39 objectForKeyedSubscript:@"yaw"];
  if (v13)
  {
    v14 = [v39 objectForKeyedSubscript:@"yaw"];
    [v14 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 12.0;
  }

  v17 = [v39 objectForKeyedSubscript:@"pitch"];
  if (v17)
  {
    v18 = [v39 objectForKeyedSubscript:@"pitch"];
    [v18 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 35.0;
  }

  v21 = [v39 objectForKeyedSubscript:@"regionSize"];
  if (v21)
  {
    v22 = [v39 objectForKeyedSubscript:@"regionSize"];
    [v22 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 0.000244;
  }

  log2(v24);
  delegate = [(PerformanceDebugBookmarksController *)self delegate];
  v26 = [delegate allVisibleMapViewsForDebugController:self];
  firstObject = [v26 firstObject];

  [firstObject frame];
  MKCoordinateRegionMakeWithZoomLevel();
  MKMapRectForCoordinateRegion();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [firstObject frame];
  v38 = [MKMapCamera _cameraLookingAtMapRect:v29 forViewSize:v31, v33, v35, v36, v37];
  [v38 setPitch:v20];
  [v38 setHeading:v16];
  [firstObject setCamera:v38];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PerformanceCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"PerformanceCell"];
  }

  [v7 setAccessoryView:0];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:0];

  items = self->_items;
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)items objectAtIndexedSubscript:v10];
  v12 = [v11 objectForKeyedSubscript:@"Name"];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  return v7;
}

- (PerformanceDebugBookmarksController)init
{
  v9.receiver = self;
  v9.super_class = PerformanceDebugBookmarksController;
  v2 = [(AuxiliaryDebugViewController *)&v9 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.Maps"];
    v4 = [v3 pathForResource:@"Bookmarks" ofType:@"plist"];

    v5 = [[NSMutableArray alloc] initWithContentsOfFile:v4];
    items = v2->_items;
    v2->_items = v5;

    v7 = v2;
  }

  return v2;
}

@end
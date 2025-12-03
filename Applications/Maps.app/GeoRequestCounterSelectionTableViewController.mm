@interface GeoRequestCounterSelectionTableViewController
- (GeoRequestCounterSelectionTableViewController)initWithSelection:(id)selection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation GeoRequestCounterSelectionTableViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  supportsMultipleSelection = [(GeoRequestCounterSelection *)self->_selection supportsMultipleSelection];
  currentSelection = [(GeoRequestCounterSelection *)self->_selection currentSelection];
  v10 = currentSelection;
  if (supportsMultipleSelection)
  {
    v11 = [currentSelection mutableCopy];

    if ([v7 accessoryType] == 3)
    {
      [v7 setAccessoryType:0];
      [v11 removeIndex:{objc_msgSend(pathCopy, "row")}];
    }

    else
    {
      [v7 setAccessoryType:3];
      [v11 addIndex:{objc_msgSend(pathCopy, "row")}];
    }

    [(GeoRequestCounterSelection *)self->_selection setSelection:v11];
    v10 = v11;
  }

  else
  {
    if ([currentSelection count])
    {
      v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 firstIndex], 0);
      v13 = [viewCopy cellForRowAtIndexPath:v12];

      [v13 setAccessoryType:0];
    }

    selection = self->_selection;
    v15 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [pathCopy row]);
    [(GeoRequestCounterSelection *)selection setSelection:v15];

    [v7 setAccessoryType:3];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"selection" forIndexPath:pathCopy];
  currentSelection = [(GeoRequestCounterSelection *)self->_selection currentSelection];
  v9 = [currentSelection containsIndex:{objc_msgSend(pathCopy, "row")}];

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v7 setAccessoryType:v10];
  v11 = -[GeoRequestCounterSelection stringForRow:](self->_selection, "stringForRow:", [pathCopy row]);
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  return v7;
}

- (GeoRequestCounterSelectionTableViewController)initWithSelection:(id)selection
{
  selectionCopy = selection;
  v10.receiver = self;
  v10.super_class = GeoRequestCounterSelectionTableViewController;
  v6 = [(GeoRequestCounterSelectionTableViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selection, selection);
    tableView = [(GeoRequestCounterSelectionTableViewController *)v7 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"selection"];
  }

  return v7;
}

@end
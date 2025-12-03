@interface _EnvironmentsAlertTableViewController
- (_EnvironmentsAlertTableViewController)initWithStyle:(int64_t)style environments:(id)environments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation _EnvironmentsAlertTableViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v7 = [pathCopy row];
  if (v7 == [(NSArray *)self->_environments count])
  {
    selectedEnvironmentName = self->_selectedEnvironmentName;
    self->_selectedEnvironmentName = 0;

    self->_customEnvironmentSelected = 1;
  }

  else
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_environments, "objectAtIndexedSubscript:", [pathCopy row]);
    name = [v9 name];
    v11 = [name copy];
    v12 = self->_selectedEnvironmentName;
    self->_selectedEnvironmentName = v11;
  }

  tableView = [(_EnvironmentsAlertTableViewController *)self tableView];
  [tableView reloadData];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v7 = [pathCopy row];
  if (v7 == [(NSArray *)self->_environments count])
  {
    textLabel = [v6 textLabel];
    [textLabel setText:@"Custom Environment"];

    if (self->_customEnvironmentSelected)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    [v6 setAccessoryType:v9];
  }

  else
  {
    v10 = -[NSArray objectAtIndexedSubscript:](self->_environments, "objectAtIndexedSubscript:", [pathCopy row]);
    name = [v10 name];
    textLabel2 = [v6 textLabel];
    [textLabel2 setText:name];

    selectedEnvironmentName = self->_selectedEnvironmentName;
    name2 = [v10 name];
    LODWORD(selectedEnvironmentName) = [(NSString *)selectedEnvironmentName isEqualToString:name2];

    if (selectedEnvironmentName)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [v6 setAccessoryType:v15];
  }

  return v6;
}

- (_EnvironmentsAlertTableViewController)initWithStyle:(int64_t)style environments:(id)environments
{
  environmentsCopy = environments;
  v17.receiver = self;
  v17.super_class = _EnvironmentsAlertTableViewController;
  v8 = [(_EnvironmentsAlertTableViewController *)&v17 initWithStyle:style];
  v9 = v8;
  if (v8)
  {
    tableView = [(_EnvironmentsAlertTableViewController *)v8 tableView];
    [tableView setDelegate:v9];

    tableView2 = [(_EnvironmentsAlertTableViewController *)v9 tableView];
    [tableView2 setDataSource:v9];

    objc_storeStrong(&v9->_environments, environments);
    v12 = GEOConfigGetString();
    v13 = [v12 copy];
    selectedEnvironmentName = v9->_selectedEnvironmentName;
    v9->_selectedEnvironmentName = v13;

    v15 = v9;
  }

  return v9;
}

@end
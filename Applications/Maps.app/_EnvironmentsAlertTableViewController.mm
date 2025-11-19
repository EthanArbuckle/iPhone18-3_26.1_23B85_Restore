@interface _EnvironmentsAlertTableViewController
- (_EnvironmentsAlertTableViewController)initWithStyle:(int64_t)a3 environments:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation _EnvironmentsAlertTableViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [v14 row];
  if (v7 == [(NSArray *)self->_environments count])
  {
    selectedEnvironmentName = self->_selectedEnvironmentName;
    self->_selectedEnvironmentName = 0;

    self->_customEnvironmentSelected = 1;
  }

  else
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_environments, "objectAtIndexedSubscript:", [v14 row]);
    v10 = [v9 name];
    v11 = [v10 copy];
    v12 = self->_selectedEnvironmentName;
    self->_selectedEnvironmentName = v11;
  }

  v13 = [(_EnvironmentsAlertTableViewController *)self tableView];
  [v13 reloadData];

  [v6 deselectRowAtIndexPath:v14 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v7 = [v5 row];
  if (v7 == [(NSArray *)self->_environments count])
  {
    v8 = [v6 textLabel];
    [v8 setText:@"Custom Environment"];

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
    v10 = -[NSArray objectAtIndexedSubscript:](self->_environments, "objectAtIndexedSubscript:", [v5 row]);
    v11 = [v10 name];
    v12 = [v6 textLabel];
    [v12 setText:v11];

    selectedEnvironmentName = self->_selectedEnvironmentName;
    v14 = [v10 name];
    LODWORD(selectedEnvironmentName) = [(NSString *)selectedEnvironmentName isEqualToString:v14];

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

- (_EnvironmentsAlertTableViewController)initWithStyle:(int64_t)a3 environments:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _EnvironmentsAlertTableViewController;
  v8 = [(_EnvironmentsAlertTableViewController *)&v17 initWithStyle:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [(_EnvironmentsAlertTableViewController *)v8 tableView];
    [v10 setDelegate:v9];

    v11 = [(_EnvironmentsAlertTableViewController *)v9 tableView];
    [v11 setDataSource:v9];

    objc_storeStrong(&v9->_environments, a4);
    v12 = GEOConfigGetString();
    v13 = [v12 copy];
    selectedEnvironmentName = v9->_selectedEnvironmentName;
    v9->_selectedEnvironmentName = v13;

    v15 = v9;
  }

  return v9;
}

@end
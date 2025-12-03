@interface RecoverDeviceMenuViewController
- (id)subtitleForOption:(int)option;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForOption:(int)option;
- (int)selectedOption;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)initOptions:(int)options;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation RecoverDeviceMenuViewController

- (void)initOptions:(int)options
{
  optionsCopy = options;
  v5 = +[NSMutableArray array];
  [(RecoverDeviceMenuViewController *)self setOptions:v5];

  if ((optionsCopy & 1) == 0)
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    options = [(RecoverDeviceMenuViewController *)self options];
    [options addObject:&off_100022168];

    if ((optionsCopy & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  options2 = [(RecoverDeviceMenuViewController *)self options];
  [options2 addObject:&off_100022150];

  if ((optionsCopy & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((optionsCopy & 4) == 0)
  {
    return;
  }

LABEL_7:
  options3 = [(RecoverDeviceMenuViewController *)self options];
  [options3 addObject:&off_100022180];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RecoverDeviceMenuViewController *)self options:view];
  v5 = [v4 count];

  return v5;
}

- (id)titleForOption:(int)option
{
  switch(option)
  {
    case 1:
      v3 = @"MENU_SYSTEM_RECOVERY_BUTTON_TITLE";
      goto LABEL_7;
    case 4:
      v3 = @"MENU_REBOOT_BUTTON_TITLE";
      goto LABEL_7;
    case 2:
      v3 = @"MENU_EACS_BUTTON_TITLE";
LABEL_7:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:v3 value:&stru_100020878 table:@"Localizable"];

      goto LABEL_9;
  }

  v5 = @"unknown";
LABEL_9:

  return v5;
}

- (id)subtitleForOption:(int)option
{
  switch(option)
  {
    case 1:
      v4 = @"SYSTEM_RECOVERY_SUBTITLE";
      goto LABEL_7;
    case 4:
      v4 = @"MENU_REBOOT_BUTTON_SUBTITLE";
      goto LABEL_7;
    case 2:
      v4 = @"MENU_EACS_BUTTON_SUBTITLE";
LABEL_7:
      v5 = +[NSBundle mainBundle];
      deviceType = [(RecoverDeviceMenuViewController *)self deviceType];
      v7 = [NSString stringWithFormat:@"%@_%@", v4, deviceType];
      v8 = [v5 localizedStringForKey:v7 value:&stru_100020878 table:@"Localizable"];

      goto LABEL_9;
  }

  v8 = @"unknown option";
LABEL_9:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  options = [(RecoverDeviceMenuViewController *)self options];
  v7 = [options objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  intValue = [v7 intValue];

  v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v10 = +[UIListContentConfiguration subtitleCellConfiguration];
  v11 = [(RecoverDeviceMenuViewController *)self titleForOption:intValue];
  [v10 setText:v11];

  textProperties = [v10 textProperties];
  font = [textProperties font];
  [font pointSize];
  v14 = [UIFont boldSystemFontOfSize:?];
  textProperties2 = [v10 textProperties];
  [textProperties2 setFont:v14];

  v16 = [(RecoverDeviceMenuViewController *)self subtitleForOption:intValue];
  [v10 setSecondaryText:v16];

  v17 = +[UIColor systemGrayColor];
  secondaryTextProperties = [v10 secondaryTextProperties];
  [secondaryTextProperties setColor:v17];

  [v10 setTextToSecondaryTextVerticalPadding:6.0];
  [v10 setDirectionalLayoutMargins:{10.0, 10.0, 10.0, 10.0}];
  [v9 setContentConfiguration:v10];
  v19 = [UIImageView alloc];
  v20 = [UIImage systemImageNamed:@"circle"];
  v21 = [v19 initWithImage:v20];

  v22 = +[UIColor systemGrayColor];
  [v21 setTintColor:v22];

  [v9 setAccessoryView:v21];
  v23 = +[UIBackgroundConfiguration clearConfiguration];
  [v9 setBackgroundConfiguration:v23];

  v24 = [pathCopy row];
  options2 = [(RecoverDeviceMenuViewController *)self options];
  v26 = [options2 count] - 1;

  if (v24 == v26)
  {
    [v9 bounds];
    [v9 setSeparatorInset:{0.0, v27, 0.0, 0.0}];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [UIImageView alloc];
  v10 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v11 = [v9 initWithImage:v10];
  v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v12 setAccessoryView:v11];

  v13 = [UIImageView alloc];
  v14 = [UIImage systemImageNamed:@"circle"];
  v15 = [v13 initWithImage:v14];

  v16 = +[UIColor systemGrayColor];
  [v15 setTintColor:v16];

  tableView = [(RecoverDeviceMenuViewController *)selfCopy tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = indexPathsForSelectedRows;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        v24 = [v23 row];
        if (v24 != [pathCopy row])
        {
          tableView2 = [(RecoverDeviceMenuViewController *)selfCopy tableView];
          [tableView2 deselectRowAtIndexPath:v23 animated:1];

          v26 = [viewCopy cellForRowAtIndexPath:v23];
          [v26 setAccessoryView:v15];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  objc_sync_exit(selfCopy);
}

- (int)selectedOption
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  options = [(RecoverDeviceMenuViewController *)selfCopy options];
  tableView = [(RecoverDeviceMenuViewController *)selfCopy tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v6 = [options objectAtIndexedSubscript:{objc_msgSend(indexPathForSelectedRow, "row")}];
  intValue = [v6 intValue];

  objc_sync_exit(selfCopy);
  return intValue;
}

@end
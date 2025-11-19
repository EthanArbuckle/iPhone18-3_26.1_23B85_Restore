@interface RecoverDeviceMenuViewController
- (id)subtitleForOption:(int)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForOption:(int)a3;
- (int)selectedOption;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)initOptions:(int)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation RecoverDeviceMenuViewController

- (void)initOptions:(int)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  [(RecoverDeviceMenuViewController *)self setOptions:v5];

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = [(RecoverDeviceMenuViewController *)self options];
    [v7 addObject:&off_100022168];

    if ((v3 & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = [(RecoverDeviceMenuViewController *)self options];
  [v6 addObject:&off_100022150];

  if ((v3 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v3 & 4) == 0)
  {
    return;
  }

LABEL_7:
  v8 = [(RecoverDeviceMenuViewController *)self options];
  [v8 addObject:&off_100022180];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RecoverDeviceMenuViewController *)self options:a3];
  v5 = [v4 count];

  return v5;
}

- (id)titleForOption:(int)a3
{
  switch(a3)
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

- (id)subtitleForOption:(int)a3
{
  switch(a3)
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
      v6 = [(RecoverDeviceMenuViewController *)self deviceType];
      v7 = [NSString stringWithFormat:@"%@_%@", v4, v6];
      v8 = [v5 localizedStringForKey:v7 value:&stru_100020878 table:@"Localizable"];

      goto LABEL_9;
  }

  v8 = @"unknown option";
LABEL_9:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RecoverDeviceMenuViewController *)self options];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v8 = [v7 intValue];

  v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v10 = +[UIListContentConfiguration subtitleCellConfiguration];
  v11 = [(RecoverDeviceMenuViewController *)self titleForOption:v8];
  [v10 setText:v11];

  v12 = [v10 textProperties];
  v13 = [v12 font];
  [v13 pointSize];
  v14 = [UIFont boldSystemFontOfSize:?];
  v15 = [v10 textProperties];
  [v15 setFont:v14];

  v16 = [(RecoverDeviceMenuViewController *)self subtitleForOption:v8];
  [v10 setSecondaryText:v16];

  v17 = +[UIColor systemGrayColor];
  v18 = [v10 secondaryTextProperties];
  [v18 setColor:v17];

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

  v24 = [v5 row];
  v25 = [(RecoverDeviceMenuViewController *)self options];
  v26 = [v25 count] - 1;

  if (v24 == v26)
  {
    [v9 bounds];
    [v9 setSeparatorInset:{0.0, v27, 0.0, 0.0}];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [UIImageView alloc];
  v10 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v11 = [v9 initWithImage:v10];
  v12 = [v6 cellForRowAtIndexPath:v7];
  [v12 setAccessoryView:v11];

  v13 = [UIImageView alloc];
  v14 = [UIImage systemImageNamed:@"circle"];
  v15 = [v13 initWithImage:v14];

  v16 = +[UIColor systemGrayColor];
  [v15 setTintColor:v16];

  v17 = [(RecoverDeviceMenuViewController *)v8 tableView];
  v18 = [v17 indexPathsForSelectedRows];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v18;
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
        if (v24 != [v7 row])
        {
          v25 = [(RecoverDeviceMenuViewController *)v8 tableView];
          [v25 deselectRowAtIndexPath:v23 animated:1];

          v26 = [v6 cellForRowAtIndexPath:v23];
          [v26 setAccessoryView:v15];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  objc_sync_exit(v8);
}

- (int)selectedOption
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RecoverDeviceMenuViewController *)v2 options];
  v4 = [(RecoverDeviceMenuViewController *)v2 tableView];
  v5 = [v4 indexPathForSelectedRow];
  v6 = [v3 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v7 = [v6 intValue];

  objc_sync_exit(v2);
  return v7;
}

@end
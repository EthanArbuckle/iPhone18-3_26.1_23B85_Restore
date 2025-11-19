@interface iFBAPreferencesTimeoutViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)rowForTimeout:(int64_t)a3;
- (int64_t)timeoutForRow:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation iFBAPreferencesTimeoutViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = iFBAPreferencesTimeoutViewController;
  [(iFBAPreferencesTimeoutViewController *)&v4 viewDidLoad];
  v3 = [(iFBAPreferencesTimeoutViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"TimeoutCell"];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v9 = +[NSUserDefaults standardUserDefaults];
  v8 = [v6 row];

  [v9 setInteger:-[iFBAPreferencesTimeoutViewController timeoutForRow:](self forKey:{"timeoutForRow:", v8), @"TouchIDTimeoutDuration"}];
  [v7 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"TimeoutCell"];
  v8 = +[UIListContentConfiguration cellConfiguration];
  v9 = sub_100033808(-[iFBAPreferencesTimeoutViewController timeoutForRow:](self, "timeoutForRow:", [v6 row]));
  [v8 setText:v9];

  [v7 setContentConfiguration:v8];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 integerForKey:@"TouchIDTimeoutDuration"];

  v12 = [(iFBAPreferencesTimeoutViewController *)self rowForTimeout:v11];
  v13 = [v6 row];

  if (v12 == v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v7 setAccessoryType:v14];

  return v7;
}

- (int64_t)rowForTimeout:(int64_t)a3
{
  result = a3;
  if (a3 > 299)
  {
    if (a3 == 300)
    {
      return 2;
    }

    if (a3 == 900)
    {
      return 3;
    }
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    if (a3 == 60)
    {
      return 1;
    }
  }

  return -1;
}

- (int64_t)timeoutForRow:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1000C1A48[a3 - 1];
  }
}

@end
@interface HUPRXItemModuleTableViewController
- (void)itemManagerDidFinishUpdate:(id)a3;
@end

@implementation HUPRXItemModuleTableViewController

- (void)itemManagerDidFinishUpdate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HUPRXItemModuleTableViewController;
  [(HUPRXItemModuleTableViewController *)&v9 itemManagerDidFinishUpdate:v4];
  objc_opt_class();
  v5 = [(HUPRXItemModuleTableViewController *)self parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 itemManagerDidFinishUpdate:v4];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A2F8(v8);
    }
  }
}

@end
@interface HUPRXItemModuleTableViewController
- (void)itemManagerDidFinishUpdate:(id)update;
@end

@implementation HUPRXItemModuleTableViewController

- (void)itemManagerDidFinishUpdate:(id)update
{
  updateCopy = update;
  v9.receiver = self;
  v9.super_class = HUPRXItemModuleTableViewController;
  [(HUPRXItemModuleTableViewController *)&v9 itemManagerDidFinishUpdate:updateCopy];
  objc_opt_class();
  parentViewController = [(HUPRXItemModuleTableViewController *)self parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v6 = parentViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 itemManagerDidFinishUpdate:updateCopy];
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
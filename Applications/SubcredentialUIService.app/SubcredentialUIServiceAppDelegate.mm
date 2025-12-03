@interface SubcredentialUIServiceAppDelegate
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
@end

@implementation SubcredentialUIServiceAppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v4 = [PSListController appearance:application];
  v5 = +[UIColor labelColor];
  [v4 setTextColor:v5];

  return 1;
}

@end
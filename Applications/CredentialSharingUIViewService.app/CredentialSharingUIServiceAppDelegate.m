@interface CredentialSharingUIServiceAppDelegate
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
@end

@implementation CredentialSharingUIServiceAppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = [PSListController appearance:a3];
  v5 = +[UIColor labelColor];
  [v4 setTextColor:v5];

  return 1;
}

@end
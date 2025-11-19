@interface SFDefaultBrowserPromptRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
@end

@implementation SFDefaultBrowserPromptRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"SFDefaultBrowserPromptServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

@end
@interface SFDefaultBrowserPromptRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
@end

@implementation SFDefaultBrowserPromptRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"SFDefaultBrowserPromptServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v4;
}

@end
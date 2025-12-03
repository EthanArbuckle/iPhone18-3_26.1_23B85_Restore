@interface BCSetupAssistantDependencyAdapter
+ (id)viewControllerWithDismissHandler:(id)handler;
+ (void)preloadResourcesWithCompletion:(id)completion;
@end

@implementation BCSetupAssistantDependencyAdapter

+ (void)preloadResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BCPreloader shared];
  [v4 preloadResourcesWithCompletion:completionCopy];
}

+ (id)viewControllerWithDismissHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[BCConfigurationViewController alloc] initWithMode:0 dismissHandler:handlerCopy];

  return v4;
}

@end
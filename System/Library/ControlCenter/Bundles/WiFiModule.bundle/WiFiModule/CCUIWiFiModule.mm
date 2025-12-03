@interface CCUIWiFiModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIWiFiModule

- (id)contentViewControllerForContext:(id)context
{
  contentModuleContext = [(CCUIWiFiModule *)self contentModuleContext];
  v4 = [[CCUIWiFiModuleViewController alloc] initWithContentModuleContext:contentModuleContext];

  return v4;
}

@end
@interface CCUIWiFiModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation CCUIWiFiModule

- (id)contentViewControllerForContext:(id)a3
{
  v3 = [(CCUIWiFiModule *)self contentModuleContext];
  v4 = [[CCUIWiFiModuleViewController alloc] initWithContentModuleContext:v3];

  return v4;
}

@end
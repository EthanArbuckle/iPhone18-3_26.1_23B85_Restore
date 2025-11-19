@interface DDDeviceDiscoveryDismissAction
+ (id)action;
- (void)performActionForSceneController:(id)a3;
@end

@implementation DDDeviceDiscoveryDismissAction

+ (id)action
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v3 = [a3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _deviceDiscoveryDismiss];
  }
}

@end
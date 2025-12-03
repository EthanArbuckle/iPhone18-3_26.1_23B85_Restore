@interface DDDeviceDiscoveryDismissAction
+ (id)action;
- (void)performActionForSceneController:(id)controller;
@end

@implementation DDDeviceDiscoveryDismissAction

+ (id)action
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _deviceDiscoveryDismiss];
  }
}

@end
@interface PHAudioCallViewControllerWrapper
- (ICSCallDisplayStyleHandler)viewController;
- (PHAudioCallViewControllerWrapper)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center width:(double)width inCallRootViewController:(id)controller;
@end

@implementation PHAudioCallViewControllerWrapper

- (ICSCallDisplayStyleHandler)viewController
{
  v2 = sub_1001B0ED0();

  return v2;
}

- (PHAudioCallViewControllerWrapper)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center width:(double)width inCallRootViewController:(id)controller
{
  managerCopy = manager;
  centerCopy = center;
  swift_unknownObjectRetain();
  return sub_1001B0EE0();
}

@end
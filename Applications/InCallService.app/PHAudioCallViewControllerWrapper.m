@interface PHAudioCallViewControllerWrapper
- (ICSCallDisplayStyleHandler)viewController;
- (PHAudioCallViewControllerWrapper)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 width:(double)a5 inCallRootViewController:(id)a6;
@end

@implementation PHAudioCallViewControllerWrapper

- (ICSCallDisplayStyleHandler)viewController
{
  v2 = sub_1001B0ED0();

  return v2;
}

- (PHAudioCallViewControllerWrapper)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 width:(double)a5 inCallRootViewController:(id)a6
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return sub_1001B0EE0();
}

@end
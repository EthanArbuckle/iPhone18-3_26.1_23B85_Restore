@interface RootFlowController
- (void)dismissWrappedControllerFrom:(id)from;
@end

@implementation RootFlowController

- (void)dismissWrappedControllerFrom:(id)from
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

@end
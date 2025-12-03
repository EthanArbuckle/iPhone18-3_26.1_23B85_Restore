@interface ACUISAddAccountControllerSwap
+ (id)modernAddFlowWrappedForViewController:(id)controller;
- (ACUISAddAccountControllerSwap)init;
@end

@implementation ACUISAddAccountControllerSwap

+ (id)modernAddFlowWrappedForViewController:(id)controller
{
  controllerCopy = controller;
  sub_23DCFFAE8(controllerCopy);
  v5 = v4;

  return v5;
}

- (ACUISAddAccountControllerSwap)init
{
  v3.receiver = self;
  v3.super_class = ACUISAddAccountControllerSwap;
  return [(ACUISAddAccountControllerSwap *)&v3 init];
}

@end
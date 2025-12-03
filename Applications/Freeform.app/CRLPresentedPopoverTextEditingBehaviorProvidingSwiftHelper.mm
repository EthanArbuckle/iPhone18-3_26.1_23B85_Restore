@interface CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper
+ (int64_t)allowTextInputWhilePresentingFor:(id)for;
- (_TtC8Freeform58CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper)init;
@end

@implementation CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper

+ (int64_t)allowTextInputWhilePresentingFor:(id)for
{
  forCopy = for;
  v5 = sub_100AC70A4(for);

  return v5;
}

- (_TtC8Freeform58CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper *)&v3 init];
}

@end
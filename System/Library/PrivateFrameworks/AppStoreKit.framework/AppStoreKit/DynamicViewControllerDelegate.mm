@interface DynamicViewControllerDelegate
- (_TtC11AppStoreKit29DynamicViewControllerDelegate)init;
- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation DynamicViewControllerDelegate

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_didDismissHandler);
  if (v5)
  {
    v5(self);
  }

  else
  {
    selfCopy = self;
  }

  if (qword_1EE1D63A0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = sub_1E1AF5C7C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_contentViewConstructor);
  if (v11)
  {
    v12 = v10;
    selfCopy = self;
    v14 = v11(v12, x, y, width, height);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (_TtC11AppStoreKit29DynamicViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
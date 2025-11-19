@interface DynamicViewControllerDelegate
- (_TtC11AppStoreKit29DynamicViewControllerDelegate)init;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation DynamicViewControllerDelegate

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_didDismissHandler);
  if (v5)
  {
    v5(self);
  }

  else
  {
    v6 = self;
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

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = sub_1E1AF5C7C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_contentViewConstructor);
  if (v11)
  {
    v12 = v10;
    v13 = self;
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
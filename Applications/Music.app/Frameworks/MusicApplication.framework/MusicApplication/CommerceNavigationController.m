@interface CommerceNavigationController
- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithCoder:(id)a3;
- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CommerceNavigationController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CommerceNavigationController();
  v4 = v6.receiver;
  [(CommerceNavigationController *)&v6 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  if (v5)
  {

    v5(v4);
    sub_17654(v5);
  }
}

- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback);
  v8 = type metadata accessor for CommerceNavigationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(NavigationController *)&v10 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CommerceNavigationController();
  v5 = a3;
  v6 = [(NavigationController *)&v8 initWithCoder:v5];

  return v6;
}

@end
@interface CommerceNavigationController
- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithCoder:(id)coder;
- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CommerceNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CommerceNavigationController();
  v4 = v6.receiver;
  [(CommerceNavigationController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  if (v5)
  {

    v5(v4);
    sub_17654(v5);
  }
}

- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback);
  v8 = type metadata accessor for CommerceNavigationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(NavigationController *)&v10 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CommerceNavigationController();
  coderCopy = coder;
  v6 = [(NavigationController *)&v8 initWithCoder:coderCopy];

  return v6;
}

@end
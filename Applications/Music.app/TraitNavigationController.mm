@interface TraitNavigationController
- (_TtC5Music25TraitNavigationController)initWithCoder:(id)a3;
- (_TtC5Music25TraitNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC5Music25TraitNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Music25TraitNavigationController)initWithRootViewController:(id)a3;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4;
@end

@implementation TraitNavigationController

- (_TtC5Music25TraitNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UITraitOverrides();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *((swift_isaMask & self->super.super.super.super.isa) + 0x50);
  v12 = a3;
  v13 = self;
  v11(v12, v9, v4);

  sub_1000095E8(v9, &unk_10119F3A0);
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_10005A6C0(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = [(TraitNavigationController *)v7 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = v6;
  v12[2] = &v15;
  LOBYTE(v8) = sub_10044AC70(sub_1007E9E88, v12, v9);

  v10 = type metadata accessor for TraitNavigationController();
  if (v8)
  {
    v13.receiver = v7;
    v11 = &v13;
  }

  else
  {
    v14 = v7;
    v11 = &v14;
  }

  v11->super_class = v10;
  [(objc_super *)v11 removeChildViewController:v6 notifyDidMove:v4];
}

- (_TtC5Music25TraitNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC5Music25TraitNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TraitNavigationController();
  v9 = [(TraitNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC5Music25TraitNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  v4 = a3;
  v5 = [(TraitNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
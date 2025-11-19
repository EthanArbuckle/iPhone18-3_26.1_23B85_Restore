@interface StoreProductViewController
- (_TtC17AppleVisionProApp26StoreProductViewController)initWithCoder:(id)a3;
- (_TtC17AppleVisionProApp26StoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation StoreProductViewController

- (_TtC17AppleVisionProApp26StoreProductViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StoreProductViewController();
  v9 = [(StoreProductViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17AppleVisionProApp26StoreProductViewController)initWithCoder:(id)a3
{
  *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for StoreProductViewController();
  v5 = a3;
  v6 = [(StoreProductViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end
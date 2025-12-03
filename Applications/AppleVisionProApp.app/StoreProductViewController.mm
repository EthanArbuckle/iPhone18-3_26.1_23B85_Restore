@interface StoreProductViewController
- (_TtC17AppleVisionProApp26StoreProductViewController)initWithCoder:(id)coder;
- (_TtC17AppleVisionProApp26StoreProductViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation StoreProductViewController

- (_TtC17AppleVisionProApp26StoreProductViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StoreProductViewController();
  v9 = [(StoreProductViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17AppleVisionProApp26StoreProductViewController)initWithCoder:(id)coder
{
  *&self->dismissDelegate[OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for StoreProductViewController();
  coderCopy = coder;
  v6 = [(StoreProductViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
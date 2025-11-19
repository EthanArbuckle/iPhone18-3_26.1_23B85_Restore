@interface AppStoreVideoPlayerViewController
- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)init;
- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)a3;
@end

@implementation AppStoreVideoPlayerViewController

- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)init
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = [(AppStoreVideoPlayerViewController *)&v7 initWithNibName:0 bundle:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 behaviorWithFirstGenerationEmbeddedPlayer];
  [(AppStoreVideoPlayerViewController *)v4 addBehavior:v5];

  return v4;
}

- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
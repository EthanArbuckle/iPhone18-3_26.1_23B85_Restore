@interface AppStoreVideoPlayerViewController
- (_TtC8AppStore33AppStoreVideoPlayerViewController)init;
- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithCoder:(id)coder;
- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)view;
@end

@implementation AppStoreVideoPlayerViewController

- (_TtC8AppStore33AppStoreVideoPlayerViewController)init
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = [(AppStoreVideoPlayerViewController *)&v7 initWithNibName:0 bundle:0];
  v3 = objc_opt_self();
  v4 = v2;
  behaviorWithFirstGenerationEmbeddedPlayer = [v3 behaviorWithFirstGenerationEmbeddedPlayer];
  [(AppStoreVideoPlayerViewController *)v4 addBehavior:behaviorWithFirstGenerationEmbeddedPlayer];

  return v4;
}

- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
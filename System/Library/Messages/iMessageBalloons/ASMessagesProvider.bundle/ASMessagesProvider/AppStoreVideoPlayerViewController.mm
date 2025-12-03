@interface AppStoreVideoPlayerViewController
- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)init;
- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)view;
@end

@implementation AppStoreVideoPlayerViewController

- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)init
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

- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33AppStoreVideoPlayerViewController)initWithPlayerLayerView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
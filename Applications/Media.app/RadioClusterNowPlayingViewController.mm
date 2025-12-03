@interface RadioClusterNowPlayingViewController
- (_TtC5Media36RadioClusterNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)invalidate;
- (void)nowPlayingManager:(id)manager didReceiveArtworkResponse:(id)response;
- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot;
- (void)nowPlayingManager:(id)manager willStartLoadingArtworkForCatalog:(id)catalog bundleIdentifier:(id)identifier;
- (void)sessionDidConnect:(id)connect;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RadioClusterNowPlayingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100033388();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10003386C();
}

- (void)invalidate
{
  v3 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = &_swiftEmptySetSingleton;
  selfCopy = self;

  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady) = 0;
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_1000342C4(connectCopy);
}

- (_TtC5Media36RadioClusterNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot
{
  managerCopy = manager;
  snapshotCopy = snapshot;
  selfCopy = self;
  sub_10003D038(snapshotCopy);
}

- (void)nowPlayingManager:(id)manager willStartLoadingArtworkForCatalog:(id)catalog bundleIdentifier:(id)identifier
{
  managerCopy = manager;
  catalogCopy = catalog;
  selfCopy = self;
  sub_10003D2D4();
}

- (void)nowPlayingManager:(id)manager didReceiveArtworkResponse:(id)response
{
  managerCopy = manager;
  responseCopy = response;
  selfCopy = self;
  sub_10003D430(response);
}

@end
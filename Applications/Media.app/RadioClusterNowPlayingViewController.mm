@interface RadioClusterNowPlayingViewController
- (_TtC5Media36RadioClusterNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)invalidate;
- (void)nowPlayingManager:(id)a3 didReceiveArtworkResponse:(id)a4;
- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4;
- (void)nowPlayingManager:(id)a3 willStartLoadingArtworkForCatalog:(id)a4 bundleIdentifier:(id)a5;
- (void)sessionDidConnect:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RadioClusterNowPlayingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100033388();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10003386C();
}

- (void)invalidate
{
  v3 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = &_swiftEmptySetSingleton;
  v5 = self;

  *(&v5->super.super.super.isa + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady) = 0;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000342C4(v4);
}

- (_TtC5Media36RadioClusterNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003D038(v7);
}

- (void)nowPlayingManager:(id)a3 willStartLoadingArtworkForCatalog:(id)a4 bundleIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10003D2D4();
}

- (void)nowPlayingManager:(id)a3 didReceiveArtworkResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003D430(a4);
}

@end
@interface HikingWelcomeViewController
- (CGSize)preferredContentSize;
- (_TtC4Maps27HikingWelcomeViewController)initWithCompletionHandler:(id)handler;
- (_TtC4Maps27HikingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)continueTapped;
- (void)setPreferredContentSize:(CGSize)size;
- (void)updateForTraitChanges;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HikingWelcomeViewController

- (_TtC4Maps27HikingWelcomeViewController)initWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1000FA694;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10014ACE4(v3, v4);
  sub_1000D3B90(v3, v4);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100148330();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HikingWelcomeViewController();
  v4 = v7.receiver;
  [(HikingWelcomeViewController *)&v7 viewDidAppear:appearCopy];
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [standardUserDefaults setBool:1 forKey:v6];

  sub_1001496FC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10014992C();
}

- (CGSize)preferredContentSize
{
  v2 = objc_opt_self();

  [v2 preferredContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HikingWelcomeViewController();
  [(HikingWelcomeViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC4Maps27HikingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateForTraitChanges
{
  selfCopy = self;
  sub_100149288();
  v2 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView;
  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);
  sub_10014A4FC();
  v4 = String._bridgeToObjectiveC()();

  [v3 loadAssetNamed:v4 preservingTimestamp:1];

  if (([*(&selfCopy->super.super.super.isa + v2) isHidden] & 1) == 0)
  {
    [*(&selfCopy->super.super.super.isa + v2) play];
  }
}

- (void)continueTapped
{
  selfCopy = self;
  sub_10014A750();
}

@end
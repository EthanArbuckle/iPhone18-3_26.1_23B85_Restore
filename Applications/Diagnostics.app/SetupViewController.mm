@interface SetupViewController
- (_TtC11Diagnostics19SetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SetupViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SetupViewController();
  v2 = v5.receiver;
  [(BaseViewController *)&v5 viewDidLoad];
  v3 = sub_1000305D0();
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController];
  *&v2[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentViewController] = v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100031520(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100032040(disappear);
}

- (void)applicationWillSuspend
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SetupViewController();
  v2 = v6.receiver;
  [(SetupViewController *)&v6 applicationWillSuspend];
  v3 = OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer;
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics19SetupViewController_retryTimer];
  if (v4)
  {
    [v4 invalidate];
    v5 = *&v2[v3];
    *&v2[v3] = 0;

    v2 = v5;
  }
}

- (void)applicationDidResume
{
  selfCopy = self;
  sub_100039904();
}

- (_TtC11Diagnostics19SetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface NoticePresenter.UIRootViewController
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithCoder:(id)coder;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NoticePresenter.UIRootViewController

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for PassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  v5 = objc_opt_self();
  v6 = v4;
  clearColor = [v5 clearColor];
  [v6 setBackgroundColor:clearColor];

  [(NoticePresenter.UIRootViewController *)selfCopy setView:v6];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100B43E7C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100B44090();
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
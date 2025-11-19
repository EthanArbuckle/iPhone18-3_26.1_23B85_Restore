@interface NoticePresenter.UIRootViewController
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithCoder:(id)a3;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NoticePresenter.UIRootViewController

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for PassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = self;
  v4 = [v3 init];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [(NoticePresenter.UIRootViewController *)v8 setView:v6];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_7E56B8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_7E58CC();
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
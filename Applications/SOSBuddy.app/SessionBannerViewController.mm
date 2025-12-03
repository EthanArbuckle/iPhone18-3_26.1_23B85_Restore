@interface SessionBannerViewController
+ (BOOL)_isSecureForRemoteViewService;
- (BNPresentableContext)presentableContext;
- (BOOL)_canShowWhileLocked;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (_TtC8SOSBuddy27SessionBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForBottomSafeArea;
- (void)didTap;
- (void)loadView;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setPreferredLayoutMode:(int64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SessionBannerViewController

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)loadView
{
  selfCopy = self;
  sub_100230358();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100230748();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100230A74(appear, "[%{public}s] viewWillAppear", &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100230A74(appear, "[%{public}s] viewDidAppear", &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100230A74(disappear, "[%{public}s] viewDidDisappear", &selRef_viewDidDisappear_);
}

+ (BOOL)_isSecureForRemoteViewService
{
  swift_getObjCClassMetadata();
  sub_100216790();
  return 1;
}

- (BOOL)_canShowWhileLocked
{
  selfCopy = self;
  sub_100230CC0();

  return 1;
}

- (void)didTap
{
  selfCopy = self;
  sub_100230E30();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100231364(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8SOSBuddy27SessionBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  selfCopy = self;
  sub_1002321E8(mode);
}

- (void)setPreferredLayoutMode:(int64_t)mode
{
  selfCopy = self;
  sub_100232A0C(mode);
}

- (double)preferredHeightForBottomSafeArea
{
  selfCopy = self;
  sub_100232C2C();
  v4 = v3;

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content);
  v3 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 8);
  v4 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 16);
  v5 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 24);
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  sub_100234704(v2, v3, v4, v5);
  sub_10023475C(v2, v3, v4, v5);

  return v6;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content);
  v3 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 8);
  v4 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 16);
  v5 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 24);
  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  sub_100234704(v2, v3, v4, v5);
  sub_10023475C(v2, v3, v4, v5);

  return v6;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content);
  v3 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 8);
  v4 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 16);
  v5 = *(self + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 24);
  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  sub_100234704(v2, v3, v4, v5);
  sub_10023475C(v2, v3, v4, v5);

  return v6;
}

@end
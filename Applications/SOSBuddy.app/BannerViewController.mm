@interface BannerViewController
+ (BOOL)_isSecureForRemoteViewService;
- (BNPresentableContext)presentableContext;
- (BOOL)_canShowWhileLocked;
- (_TtC8SOSBuddy20BannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTap;
- (void)loadView;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BannerViewController

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)loadView
{
  selfCopy = self;
  sub_100215F14();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100216244();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100216570(appear, "[%{public}s] viewWillAppear", &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100216570(appear, "[%{public}s] viewDidAppear", &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100216570(disappear, "[%{public}s] viewDidDisappear", &selRef_viewDidDisappear_);
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
  sub_100216908();

  return 1;
}

- (void)didTap
{
  selfCopy = self;
  sub_100216A68();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100216C94(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8SOSBuddy20BannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100217568();
  swift_unknownObjectRelease();
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1001CD610(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
  sub_10021764C(reason);
  swift_unknownObjectRelease();
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (reason)
    {
      reasonCopy = reason;
      selfCopy = self;
      sub_1001CCDE0(selfCopy, reasonCopy);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    reasonCopy = reason;
    selfCopy = self;
    sub_1001CE55C(selfCopy, reasonCopy);
    swift_unknownObjectRelease();
  }
}

@end
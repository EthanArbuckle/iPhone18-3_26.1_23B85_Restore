@interface BannerViewController
+ (BOOL)_isSecureForRemoteViewService;
- (BNPresentableContext)presentableContext;
- (BOOL)_canShowWhileLocked;
- (_TtC8SOSBuddy20BannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTap;
- (void)loadView;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BannerViewController

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)loadView
{
  v2 = self;
  sub_100215F14();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100216244();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100216570(a3, "[%{public}s] viewWillAppear", &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100216570(a3, "[%{public}s] viewDidAppear", &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100216570(a3, "[%{public}s] viewDidDisappear", &selRef_viewDidDisappear_);
}

+ (BOOL)_isSecureForRemoteViewService
{
  swift_getObjCClassMetadata();
  sub_100216790();
  return 1;
}

- (BOOL)_canShowWhileLocked
{
  v2 = self;
  sub_100216908();

  return 1;
}

- (void)didTap
{
  v2 = self;
  sub_100216A68();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_100216C94(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8SOSBuddy20BannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100217568();
  swift_unknownObjectRelease();
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_1001CD610(v4);
    swift_unknownObjectRelease();
  }
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_10021764C(a4);
  swift_unknownObjectRelease();
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a4)
    {
      v6 = a4;
      v7 = self;
      sub_1001CCDE0(v7, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a4;
    v7 = self;
    sub_1001CE55C(v7, v6);
    swift_unknownObjectRelease();
  }
}

@end
@interface SuggestedRouteBannerViewController
- (BNPresentableContext)presentableContext;
- (UIEdgeInsets)bannerContentOutsets;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SuggestedRouteBannerViewController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_1000166F4();
  [(SuggestedRouteBannerViewController *)selfCopy setView:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100016884();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100016C5C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SuggestedRouteBannerViewController();
  v4 = v5.receiver;
  [(SuggestedRouteBannerViewController *)&v5 viewDidAppear:appearCopy];
  v4[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen] = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SuggestedRouteBannerViewController();
  v4 = v6.receiver;
  [(SuggestedRouteBannerViewController *)&v6 viewDidDisappear:disappearCopy];
  if (*&v4[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_userInterfaceStyleTraitChangeRegistration])
  {
    swift_unknownObjectRetain();
    v5 = sub_1000166F4();
    UIView.unregisterForTraitChanges(_:)();
    swift_unknownObjectRelease();
  }

  v4[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen] = 0;
}

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIEdgeInsets)bannerContentOutsets
{
  selfCopy = self;
  v3 = sub_1000166F4();
  v4 = *&v3[OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_pillView];

  [v4 shadowOutsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

@end
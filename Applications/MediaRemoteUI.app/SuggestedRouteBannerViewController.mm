@interface SuggestedRouteBannerViewController
- (BNPresentableContext)presentableContext;
- (UIEdgeInsets)bannerContentOutsets;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SuggestedRouteBannerViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_1000166F4();
  [(SuggestedRouteBannerViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100016884();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100016C5C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SuggestedRouteBannerViewController();
  v4 = v5.receiver;
  [(SuggestedRouteBannerViewController *)&v5 viewDidAppear:v3];
  v4[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen] = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SuggestedRouteBannerViewController();
  v4 = v6.receiver;
  [(SuggestedRouteBannerViewController *)&v6 viewDidDisappear:v3];
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
  v2 = self;
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
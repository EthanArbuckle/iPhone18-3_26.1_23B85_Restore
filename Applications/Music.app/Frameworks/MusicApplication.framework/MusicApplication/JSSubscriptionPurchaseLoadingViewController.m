@interface JSSubscriptionPurchaseLoadingViewController
- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation JSSubscriptionPurchaseLoadingViewController

- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  JSSubscriptionPurchaseLoadingViewController.init(nibName:bundle:)(v5, v7, a4);
  return result;
}

- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView;
  *(&self->super.super.super.isa + v3) = _s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B400A6CoreUI0eF0Cvpfi_0();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  JSSubscriptionPurchaseLoadingViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(JSSubscriptionPurchaseLoadingViewController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 center];
    [v3 setCenter:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  JSSubscriptionPurchaseLoadingViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSubscriptionPurchaseLoadingViewController *)&v5 viewWillDisappear:v3];
  JSSubscriptionPurchaseLoadingViewController.fadeOut(_:)(0, 0);
}

@end
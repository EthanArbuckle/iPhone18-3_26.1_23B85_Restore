@interface JSSubscriptionPurchaseLoadingViewController
- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation JSSubscriptionPurchaseLoadingViewController

- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  JSSubscriptionPurchaseLoadingViewController.init(nibName:bundle:)(v5, v7, bundle);
  return result;
}

- (_TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView;
  *(&self->super.super.super.isa + v3) = _s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B400A6CoreUI0eF0Cvpfi_0();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  JSSubscriptionPurchaseLoadingViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(JSSubscriptionPurchaseLoadingViewController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view center];
    [v3 setCenter:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  JSSubscriptionPurchaseLoadingViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSubscriptionPurchaseLoadingViewController *)&v5 viewWillDisappear:disappearCopy];
  JSSubscriptionPurchaseLoadingViewController.fadeOut(_:)(0, 0);
}

@end
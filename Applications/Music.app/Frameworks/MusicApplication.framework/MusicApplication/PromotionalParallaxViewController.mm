@interface PromotionalParallaxViewController
- (_TtC16MusicApplication33PromotionalParallaxViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PromotionalParallaxViewController

- (_TtC16MusicApplication33PromotionalParallaxViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return PromotionalParallaxViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PromotionalParallaxViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PromotionalParallaxViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  PromotionalParallaxViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PromotionalParallaxViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_3740E4();
  if (*&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
  {

    sub_38E2AC();
  }

  else
  {
  }
}

- (void)loadView
{
  selfCopy = self;
  PromotionalParallaxViewController.loadView()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PromotionalParallaxViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  PromotionalParallaxViewController.viewDidLayoutSubviews()();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(PromotionalParallaxViewController *)&v7 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache];
  traitCollection = [v2 traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  swift_beginAccess();
  *(v3 + 16) = v6;
  sub_106F0C();
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = controller;
  PromotionalParallaxViewController.willMove(toParent:)(v9);
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v7.receiver;
  [(PromotionalParallaxViewController *)&v7 didMoveToParentViewController:controllerCopy];
  v6 = sub_387128();
  sub_374C7C(v6);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PromotionalParallaxViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

@end
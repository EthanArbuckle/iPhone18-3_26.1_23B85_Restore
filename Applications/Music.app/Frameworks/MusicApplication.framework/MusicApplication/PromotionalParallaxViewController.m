@interface PromotionalParallaxViewController
- (_TtC16MusicApplication33PromotionalParallaxViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PromotionalParallaxViewController

- (_TtC16MusicApplication33PromotionalParallaxViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return PromotionalParallaxViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PromotionalParallaxViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PromotionalParallaxViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  PromotionalParallaxViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PromotionalParallaxViewController *)&v5 viewDidDisappear:v3];
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
  v2 = self;
  PromotionalParallaxViewController.loadView()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PromotionalParallaxViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  PromotionalParallaxViewController.viewDidLayoutSubviews()();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(PromotionalParallaxViewController *)&v7 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache];
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  swift_beginAccess();
  *(v3 + 16) = v6;
  sub_106F0C();
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  PromotionalParallaxViewController.willMove(toParent:)(v9);
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(PromotionalParallaxViewController *)&v7 didMoveToParentViewController:v4];
  v6 = sub_387128();
  sub_374C7C(v6);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  PromotionalParallaxViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

@end
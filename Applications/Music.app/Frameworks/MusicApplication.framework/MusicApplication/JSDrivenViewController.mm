@interface JSDrivenViewController
- (NSString)title;
- (UIColor)viewBackgroundColor;
- (_TtC16MusicApplication22JSDrivenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setTitle:(id)a3;
- (void)setViewBackgroundColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation JSDrivenViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  JSDrivenViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSDrivenViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLoad
{
  v2 = self;
  JSDrivenViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  JSDrivenViewController.viewDidLayoutSubviews()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  JSDrivenViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  JSDrivenViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  JSDrivenViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  JSDrivenViewController.viewDidDisappear(_:)(a3);
}

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSDrivenViewController();
  v2 = v7.receiver;
  v3 = [(JSDrivenViewController *)&v7 title];
  if (v3)
  {
    v4 = v3;
    sub_AB92A0();

    v5 = sub_AB9260();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  JSDrivenViewController.title.setter(v4, v6);
}

- (UIColor)viewBackgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JSDrivenViewController();
  v2 = [(JSDrivenViewController *)&v4 viewBackgroundColor];

  return v2;
}

- (void)setViewBackgroundColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  v4 = a3;
  v5 = v8.receiver;
  [(JSDrivenViewController *)&v8 setViewBackgroundColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  v7 = [v5 viewBackgroundColor];
  [v6 setViewBackgroundColor:v7];
}

- (void)willMoveToParentViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  v4 = v8.receiver;
  v5 = a3;
  [(JSDrivenViewController *)&v8 willMoveToParentViewController:v5];
  if (v5)
  {
    v6 = [(objc_class *)v4 navigationItem:v8.receiver];
    sub_13C80(0, &unk_DF12E0);
    isa = sub_AB9740().super.isa;
    [v6 setRightBarButtonItems:isa animated:0];

    v4 = isa;
  }
}

- (int64_t)preferredStatusBarStyle
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (!v4)
  {
    return [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) preferredStatusBarStyle];
  }

  v5 = self;
  v6 = v4;
  v7 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v7;
}

- (id)contentScrollView
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) contentScrollView];

  return v2;
}

- (_TtC16MusicApplication22JSDrivenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
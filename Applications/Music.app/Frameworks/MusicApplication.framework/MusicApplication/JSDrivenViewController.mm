@interface JSDrivenViewController
- (NSString)title;
- (UIColor)viewBackgroundColor;
- (_TtC16MusicApplication22JSDrivenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setTitle:(id)title;
- (void)setViewBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation JSDrivenViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  JSDrivenViewController.preferredContentSizeDidChange(forChildContentContainer:)(container);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  JSDrivenViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLoad
{
  selfCopy = self;
  JSDrivenViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  JSDrivenViewController.viewDidLayoutSubviews()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  JSDrivenViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  JSDrivenViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  JSDrivenViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  JSDrivenViewController.viewDidDisappear(_:)(disappear);
}

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSDrivenViewController();
  v2 = v7.receiver;
  title = [(JSDrivenViewController *)&v7 title];
  if (title)
  {
    v4 = title;
    sub_AB92A0();

    v5 = sub_AB9260();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  JSDrivenViewController.title.setter(v4, v6);
}

- (UIColor)viewBackgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JSDrivenViewController();
  viewBackgroundColor = [(JSDrivenViewController *)&v4 viewBackgroundColor];

  return viewBackgroundColor;
}

- (void)setViewBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  colorCopy = color;
  v5 = v8.receiver;
  [(JSDrivenViewController *)&v8 setViewBackgroundColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  viewBackgroundColor = [v5 viewBackgroundColor];
  [v6 setViewBackgroundColor:viewBackgroundColor];
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  v4 = v8.receiver;
  controllerCopy = controller;
  [(JSDrivenViewController *)&v8 willMoveToParentViewController:controllerCopy];
  if (controllerCopy)
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

  selfCopy = self;
  v6 = v4;
  v7 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v7;
}

- (id)contentScrollView
{
  contentScrollView = [*(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) contentScrollView];

  return contentScrollView;
}

- (_TtC16MusicApplication22JSDrivenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
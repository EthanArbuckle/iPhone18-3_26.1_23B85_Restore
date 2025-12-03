@interface LibraryArtistsContainerViewController
- (UINavigationItem)navigationItem;
- (_TtC5Music37LibraryArtistsContainerViewController)initWithCoder:(id)coder;
- (_TtC5Music37LibraryArtistsContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation LibraryArtistsContainerViewController

- (_TtC5Music37LibraryArtistsContainerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UINavigationItem)navigationItem
{
  navigationItem = [*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer) navigationItem];

  return navigationItem;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100457A94();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100457CDC();
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v2 = v7.receiver;
  [(LibraryArtistsContainerViewController *)&v7 viewSafeAreaInsetsDidChange];
  traitCollection = [v2 traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != 2)
  {
    goto LABEL_4;
  }

  view = [v2 view];
  if (view)
  {
    v6 = view;
    [view setNeedsLayout];

LABEL_4:
    return;
  }

  __break(1u);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1004580FC(controller);
}

- (_TtC5Music37LibraryArtistsContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
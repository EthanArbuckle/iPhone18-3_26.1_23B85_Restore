@interface LibraryArtistsContainerViewController
- (UINavigationItem)navigationItem;
- (_TtC5Music37LibraryArtistsContainerViewController)initWithCoder:(id)a3;
- (_TtC5Music37LibraryArtistsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation LibraryArtistsContainerViewController

- (_TtC5Music37LibraryArtistsContainerViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UINavigationItem)navigationItem
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer) navigationItem];

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100457A94();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100457CDC();
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v2 = v7.receiver;
  [(LibraryArtistsContainerViewController *)&v7 viewSafeAreaInsetsDidChange];
  v3 = [v2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 2)
  {
    goto LABEL_4;
  }

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsLayout];

LABEL_4:
    return;
  }

  __break(1u);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004580FC(a3);
}

- (_TtC5Music37LibraryArtistsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
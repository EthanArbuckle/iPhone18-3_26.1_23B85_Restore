@interface LibraryArtistsContainerViewController.PlainLayoutContainer
- (UINavigationItem)navigationItem;
- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)init;
- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)initWithCoder:(id)coder;
- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation LibraryArtistsContainerViewController.PlainLayoutContainer

- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
  return [(LibraryArtistsContainerViewController.PlainLayoutContainer *)&v3 initWithNibName:0 bundle:0];
}

- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UINavigationItem)navigationItem
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController);
  if (v3)
  {
    selfCopy = self;
    navigationItem = [v3 navigationItem];
    if (navigationItem)
    {
      navigationItem2 = navigationItem;

      goto LABEL_6;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
  navigationItem2 = [(LibraryArtistsContainerViewController.PlainLayoutContainer *)&v9 navigationItem];

LABEL_6:

  return navigationItem2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004589E4();
}

- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
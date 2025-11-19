@interface LibraryArtistsContainerViewController.SplayedLayoutContainer
- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer)initWithCoder:(id)a3;
- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LibraryArtistsContainerViewController.SplayedLayoutContainer

- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004596F4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1004598BC(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100459C10();
}

- (_TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ContactDetailsViewController
- (_TtC9AirDropUI28ContactDetailsViewController)initWithCoder:(id)coder;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithRootViewController:(id)controller;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
@end

@implementation ContactDetailsViewController

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler);
  v5 = *&self->contactDetails[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler];
  selfCopy = self;
  v4();
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
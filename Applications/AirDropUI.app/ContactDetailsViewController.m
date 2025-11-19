@interface ContactDetailsViewController
- (_TtC9AirDropUI28ContactDetailsViewController)initWithCoder:(id)a3;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9AirDropUI28ContactDetailsViewController)initWithRootViewController:(id)a3;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
@end

@implementation ContactDetailsViewController

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler);
  v5 = *&self->contactDetails[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler];
  v6 = self;
  v4();
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9AirDropUI28ContactDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
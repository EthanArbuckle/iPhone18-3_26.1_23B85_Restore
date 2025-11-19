@interface FMDeviceDetailCardViewController
- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithCoder:(id)a3;
- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMDeviceDetailCardViewController

- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithCoder:(id)a3
{
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100081288(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100081720(a3);
}

- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
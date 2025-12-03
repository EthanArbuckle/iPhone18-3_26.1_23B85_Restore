@interface FMDeviceDetailCardViewController
- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithCoder:(id)coder;
- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMDeviceDetailCardViewController

- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithCoder:(id)coder
{
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100081288(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100081720(disappear);
}

- (_TtC6FindMy32FMDeviceDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface FMRemoveDeviceViewController
- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)performRemoveAccessory;
- (void)performRemoveDevice;
- (void)removeAccessory;
- (void)removeItem;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMRemoveDeviceViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMRemoveDeviceViewController();
  v2 = v3.receiver;
  [(FMRemoveDeviceViewController *)&v3 viewDidLoad];
  sub_100504DA0();
  sub_100507D28();
  sub_100508240();
  sub_10050ECAC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRemoveDeviceViewController();
  v4 = v7.receiver;
  [(FMRemoveDeviceViewController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator] + 56);

  v6 = sub_1003CD32C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_selectionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100504C40(a3);
}

- (void)performRemoveDevice
{
  v2 = self;
  sub_100508668();
}

- (void)performRemoveAccessory
{
  v2 = self;
  sub_10050B560();
}

- (void)removeAccessory
{
  v2 = self;
  sub_10050B9F0();
}

- (void)removeItem
{
  v2 = self;
  sub_10050C4E8();
}

- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
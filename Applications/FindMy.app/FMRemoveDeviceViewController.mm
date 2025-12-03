@interface FMRemoveDeviceViewController
- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)performRemoveAccessory;
- (void)performRemoveDevice;
- (void)removeAccessory;
- (void)removeItem;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRemoveDeviceViewController();
  v4 = v7.receiver;
  [(FMRemoveDeviceViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_mediator] + 56);

  v6 = sub_1003CD32C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy28FMRemoveDeviceViewController_selectionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100504C40(disappear);
}

- (void)performRemoveDevice
{
  selfCopy = self;
  sub_100508668();
}

- (void)performRemoveAccessory
{
  selfCopy = self;
  sub_10050B560();
}

- (void)removeAccessory
{
  selfCopy = self;
  sub_10050B9F0();
}

- (void)removeItem
{
  selfCopy = self;
  sub_10050C4E8();
}

- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy28FMRemoveDeviceViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
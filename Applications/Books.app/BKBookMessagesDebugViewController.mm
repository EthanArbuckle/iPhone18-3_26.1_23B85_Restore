@interface BKBookMessagesDebugViewController
- (BKBookMessagesDebugViewController)init;
- (BKBookMessagesDebugViewController)initWithCoder:(id)a3;
- (BKBookMessagesDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKBookMessagesDebugViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation BKBookMessagesDebugViewController

- (BKBookMessagesDebugViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_manager) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_configurations) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_properties) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BookMessagesDebugViewController();
  return [(BKBookMessagesDebugViewController *)&v3 initWithStyle:2];
}

- (BKBookMessagesDebugViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_manager) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  BookMessagesDebugViewController.viewDidLoad()();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration))
  {
    return (*(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_properties))[2];
  }

  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_configurations);
  if (v5 >> 62)
  {
    return sub_1007A38D4();
  }

  else
  {
    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  _s5Books31BookMessagesDebugViewControllerC05tableE0_23titleForHeaderInSectionSSSgSo07UITableE0C_SitF_0();
  v8 = v7;

  if (v8)
  {
    v9 = sub_1007A2214();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  v12 = BookMessagesDebugViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  BookMessagesDebugViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (BKBookMessagesDebugViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKBookMessagesDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
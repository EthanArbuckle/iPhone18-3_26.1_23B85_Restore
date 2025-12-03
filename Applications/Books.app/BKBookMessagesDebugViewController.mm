@interface BKBookMessagesDebugViewController
- (BKBookMessagesDebugViewController)init;
- (BKBookMessagesDebugViewController)initWithCoder:(id)coder;
- (BKBookMessagesDebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKBookMessagesDebugViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (BKBookMessagesDebugViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_manager) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  BookMessagesDebugViewController.viewDidLoad()();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  v12 = BookMessagesDebugViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  BookMessagesDebugViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (BKBookMessagesDebugViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKBookMessagesDebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
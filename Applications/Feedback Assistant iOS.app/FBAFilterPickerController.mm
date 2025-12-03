@interface FBAFilterPickerController
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setFilterManager:(id)manager;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBAFilterPickerController

- (void)setFilterManager:(id)manager
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = manager;
  managerCopy = manager;
  selfCopy = self;

  tableView = [(FBAFilterPickerController *)selfCopy tableView];
  if (tableView)
  {
    v7 = tableView;
    [tableView reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10004C364();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10004CDD0(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10004C65C(viewCopy);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10004CEC0(v10);

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10004D03C(section);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FBAFilterPickerController();
  return [(FBAFilterPickerController *)&v5 initWithStyle:style];
}

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAFilterPickerController();
  v9 = [(FBAFilterPickerController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAFilterPickerController();
  coderCopy = coder;
  v5 = [(FBAFilterPickerController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
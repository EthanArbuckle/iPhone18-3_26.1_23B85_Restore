@interface FBAFilterPickerController
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithCoder:(id)a3;
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setFilterManager:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FBAFilterPickerController

- (void)setFilterManager:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = a3;
  v5 = a3;
  v8 = self;

  v6 = [(FBAFilterPickerController *)v8 tableView];
  if (v6)
  {
    v7 = v6;
    [v6 reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10004C364();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10004CDD0(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_10004C65C(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_10004CEC0(v10);

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10004D03C(a4);
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

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithStyle:(int64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FBAFilterPickerController();
  return [(FBAFilterPickerController *)&v5 initWithStyle:a3];
}

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAFilterPickerController();
  v9 = [(FBAFilterPickerController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18Feedback_Assistant25FBAFilterPickerController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAFilterPickerController();
  v4 = a3;
  v5 = [(FBAFilterPickerController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
@interface _FBAActionSheetController
- (_TtC18Feedback_Assistant25_FBAActionSheetController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18Feedback_Assistant25_FBAActionSheetController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)addAction:(id)action;
- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _FBAActionSheetController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006A714();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10006BC68();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10006A8D4(appear);
}

- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = type metadata accessor for FBAActionControllerAction();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  v15 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
  *v15 = v8;
  v15[1] = v10;
  *&v13[v14] = image;
  v16 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v16 = sub_10006894C;
  v16[1] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  imageCopy = image;
  selfCopy = self;

  v19 = [(_FBAActionSheetController *)&v20 init];
  sub_10006ADBC(v19);
}

- (void)addAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10006ADBC(actionCopy);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.isa + v4);
  if (!(v5 >> 62))
  {
    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < 0)
  {
    v7 = *(&self->super.super.super.super.isa + v4);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 5.0;
  if (!section)
  {
    return 15.0;
  }

  return result;
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
  sub_10006BDB4();

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10006B118(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC18Feedback_Assistant25_FBAActionSheetController)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions) = _swiftEmptyArrayStorage;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _FBAActionSheetController();
  return [(_FBAActionSheetController *)&v7 initWithStyle:style];
}

- (_TtC18Feedback_Assistant25_FBAActionSheetController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10006B5B4(v5, v7, bundle);
}

@end
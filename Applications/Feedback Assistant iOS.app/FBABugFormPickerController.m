@interface FBABugFormPickerController
- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithStubsPredicate:(id)a3;
- (_TtP18Feedback_Assistant24FBABugFormPickerDelegate_)pickerDelegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dismissPicker;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setCurrentSelection:(id)a3;
- (void)setTeam:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation FBABugFormPickerController

- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithStubsPredicate:(id)a3
{
  v3 = a3;
  v4 = sub_100080934(v3);

  return v4;
}

- (void)setCurrentSelection:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection) = a3;
  v3 = a3;
}

- (void)setTeam:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team) = a3;
  v3 = a3;
}

- (_TtP18Feedback_Assistant24FBABugFormPickerDelegate_)pickerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10007F048();
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100080A04();
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100080AF8(v9, a5);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10007F450(v6, a4);

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs);
  if (v4)
  {
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v5 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs);
      }

      return _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }

  return self;
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
  sub_10007F5D0(v11);
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
  sub_100080C04();

  (*(v7 + 8))(v10, v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10007FA20(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10007FE28(a3);
}

- (void)dismissPicker
{
  v2 = self;
  sub_10007FF8C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"bugFormPickerDidCancel:"])
    {
      [v5 bugFormPickerDidCancel:self];
    }

    swift_unknownObjectRelease();
  }
}

- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
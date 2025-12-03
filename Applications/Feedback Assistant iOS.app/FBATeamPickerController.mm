@interface FBATeamPickerController
- (NSArray)teams;
- (_TtC18Feedback_Assistant23FBATeamPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP18Feedback_Assistant21FBATeamPickerDelegate_)pickerDelegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:viewForHeaderInSection:;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)dismissSelf;
- (void)setFormStub:(id)stub;
- (void)setSelectedTeam:(id)team;
- (void)setShowsDismissButton:(BOOL)button;
- (void)setTeams:(id)teams;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBATeamPickerController

- (void)setFormStub:(id)stub
{
  stubCopy = stub;
  selfCopy = self;
  sub_1000481EC(stub);
}

- (NSArray)teams
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams);
  sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setTeams:(id)teams
{
  sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000484A8(v4);
}

- (void)setSelectedTeam:(id)team
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam) = team;
  teamCopy = team;
}

- (void)setShowsDismissButton:(BOOL)button
{
  *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_showsDismissButton) = button;
  selfCopy = self;
  sub_100048658();
}

- (_TtP18Feedback_Assistant21FBATeamPickerDelegate_)pickerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100048770();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 0)
  {
    v5 = *(self + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

- (id)tableView:viewForHeaderInSection:
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v0;
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
  v13 = sub_100048A2C(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)dismissSelf
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v6[4] = sub_100049954;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100088474;
  v6[3] = &unk_1000E03A8;
  v4 = _Block_copy(v6);
  selfCopy = self;

  [(FBATeamPickerController *)selfCopy dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
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
  sub_10004982C();

  (*(v7 + 8))(v10, v6);
}

- (_TtC18Feedback_Assistant23FBATeamPickerController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100049448(v5, v7, bundle);
}

@end
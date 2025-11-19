@interface FBAParticipantTableViewController
- (_TtC18Feedback_Assistant33FBAParticipantTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP18Feedback_Assistant41FBAParticipantTableViewControllerDelegate_)participantDelegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureWithContentItem:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBAParticipantTableViewController

- (_TtP18Feedback_Assistant41FBAParticipantTableViewControllerDelegate_)participantDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10005813C();
}

- (void)configureWithContentItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000582FC(v4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  if (!(v4 >> 62))
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 0)
  {
    v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100058940(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = self;
  (*(v6 + 32))(v13 + v12, v9, v5);
  aBlock[4] = sub_100059C84;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E0E48;
  v14 = _Block_copy(aBlock);
  v15 = self;

  [(FBAParticipantTableViewController *)v15 dismissViewControllerAnimated:1 completion:v14];
  _Block_release(v14);

  (*(v6 + 8))(v11, v5);
}

- (_TtC18Feedback_Assistant33FBAParticipantTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10005927C(v5, v7, a4);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100059630(v4);
}

@end
@interface AppNavigationSidebarController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (_TtC7Journal30AppNavigationSidebarController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal30AppNavigationSidebarController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)addJournal:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)hideTipsOnAppLock;
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showRelevantTips;
- (void)updateAndApplyEntryCount:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewNamedJournal:(id)a3;
@end

@implementation AppNavigationSidebarController

- (_TtC7Journal30AppNavigationSidebarController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10000C300(v5, v7, a4);
}

- (void)loadView
{
  v2 = self;
  sub_10001B93C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10001BB94();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewDidAppear:v3];
  [v4 showRelevantTips];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewIsAppearing:v3];
  sub_10002CCF8(0);
  sub_10001B6F4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewDidDisappear:v3];
  sub_10013F8E0();
  if ([v4 isEditing])
  {
    [v4 setEditing:0 animated:1];
  }
}

- (void)addJournal:(id)a3
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = self;
  sub_100142978(v6);

  sub_100004F84(v6, &qword_100AD1420);
}

- (_TtC7Journal30AppNavigationSidebarController)initWithCollectionViewLayout:(id)a3
{
  v3 = a3;
  v4 = sub_1001595B4(v3);

  return v4;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_100159808(v8, v7);

  return v10;
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100146890(v10, v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100146C14(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = [(AppNavigationSidebarController *)self isEditing];
  (*(v6 + 8))(v8, v5);
  return v9 ^ 1;
}

- (void)hideTipsOnAppLock
{
  v3 = objc_opt_self();
  v7 = self;
  v4 = [v3 currentUser];
  v5 = objc_allocWithZone(type metadata accessor for LockSettingsViewModel());
  v6 = sub_1000042A4(v4);
  LOBYTE(v4) = sub_100811FCC();

  if (v4)
  {
    sub_10013F8E0();
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = self;
  if ([(AppNavigationSidebarController *)v6 isEditing]== v5)
  {
  }

  else
  {
    v7.receiver = v6;
    v7.super_class = type metadata accessor for AppNavigationSidebarController(0);
    [(AppNavigationSidebarController *)&v7 setEditing:v5 animated:v4];
    sub_100150174(&off_100A57188, &NSDiffableDataSourceSnapshot.reloadSections(_:), 1);
    sub_10014EF04();
    sub_10014F9C0();
    if (([(AppNavigationSidebarController *)v6 isEditing]& 1) == 0)
    {
      sub_10002CCF8(0);
    }

    sub_10002CB34(v4);
    sub_10014EDC4();
  }
}

- (void)showRelevantTips
{
  v2 = self;
  sub_1001506D0();
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  sub_100153CF0(v12, a4);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_1000065A8(0, &unk_100AD4C90);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = sub_1000F24EC(&qword_100AD4C88);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  swift_beginAccess();
  v10 = self;
  sub_10015CCC8(v7, self + v9);
  swift_endAccess();
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10015B368(a4);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_100154F78(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_100004F84(v11, &unk_100ADFB90);

  return v16;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1001564EC(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001567B0(v4);
}

- (void)viewNamedJournal:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100157100(v4);
}

- (void)updateAndApplyEntryCount:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002610E0();

  (*(v5 + 8))(v7, v4);
}

@end
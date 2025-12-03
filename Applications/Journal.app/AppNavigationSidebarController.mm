@interface AppNavigationSidebarController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (_TtC7Journal30AppNavigationSidebarController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal30AppNavigationSidebarController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)addJournal:(id)journal;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)hideTipsOnAppLock;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showRelevantTips;
- (void)updateAndApplyEntryCount:(id)count;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewNamedJournal:(id)journal;
@end

@implementation AppNavigationSidebarController

- (_TtC7Journal30AppNavigationSidebarController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10000C300(v5, v7, bundle);
}

- (void)loadView
{
  selfCopy = self;
  sub_10001B93C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001BB94();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewDidAppear:appearCopy];
  [v4 showRelevantTips];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewIsAppearing:appearingCopy];
  sub_10002CCF8(0);
  sub_10001B6F4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v4 = v5.receiver;
  [(AppNavigationSidebarController *)&v5 viewDidDisappear:disappearCopy];
  sub_10013F8E0();
  if ([v4 isEditing])
  {
    [v4 setEditing:0 animated:1];
  }
}

- (void)addJournal:(id)journal
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  selfCopy = self;
  sub_100142978(v6);

  sub_100004F84(v6, &qword_100AD1420);
}

- (_TtC7Journal30AppNavigationSidebarController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v4 = sub_1001595B4(layoutCopy);

  return v4;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_100159808(viewCopy, v7);

  return v10;
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100146890(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100146C14(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  isEditing = [(AppNavigationSidebarController *)self isEditing];
  (*(v6 + 8))(v8, v5);
  return isEditing ^ 1;
}

- (void)hideTipsOnAppLock
{
  v3 = objc_opt_self();
  selfCopy = self;
  currentUser = [v3 currentUser];
  v5 = objc_allocWithZone(type metadata accessor for LockSettingsViewModel());
  v6 = sub_1000042A4(currentUser);
  LOBYTE(currentUser) = sub_100811FCC();

  if (currentUser)
  {
    sub_10013F8E0();
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  selfCopy = self;
  if ([(AppNavigationSidebarController *)selfCopy isEditing]== editingCopy)
  {
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for AppNavigationSidebarController(0);
    [(AppNavigationSidebarController *)&v7 setEditing:editingCopy animated:animatedCopy];
    sub_100150174(&off_100A57188, &NSDiffableDataSourceSnapshot.reloadSections(_:), 1);
    sub_10014EF04();
    sub_10014F9C0();
    if (([(AppNavigationSidebarController *)selfCopy isEditing]& 1) == 0)
    {
      sub_10002CCF8(0);
    }

    sub_10002CB34(animatedCopy);
    sub_10014EDC4();
  }
}

- (void)showRelevantTips
{
  selfCopy = self;
  sub_1001506D0();
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100153CF0(viewCopy, session);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_1000065A8(0, &unk_100AD4C90);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v5 = sub_1000F24EC(&qword_100AD4C88);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  swift_beginAccess();
  selfCopy = self;
  sub_10015CCC8(v7, self + v9);
  swift_endAccess();
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10015B368(coordinator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_100154F78(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_100004F84(v11, &unk_100ADFB90);

  return v16;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1001564EC(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1001567B0(commandCopy);
}

- (void)viewNamedJournal:(id)journal
{
  journalCopy = journal;
  selfCopy = self;
  sub_100157100(journalCopy);
}

- (void)updateAndApplyEntryCount:(id)count
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002610E0();

  (*(v5 + 8))(v7, v4);
}

@end
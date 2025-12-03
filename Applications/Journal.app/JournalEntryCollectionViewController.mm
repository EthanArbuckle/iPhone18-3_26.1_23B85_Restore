@interface JournalEntryCollectionViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC7Journal36JournalEntryCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)changeJournal:(id)journal;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction;
- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot;
- (void)deleteEntry:(id)entry;
- (void)duplicateEntry:(id)entry;
- (void)editEntry:(id)entry;
- (void)openSelectedEntry;
- (void)printEntry;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setUpBottomFade;
- (void)toggleBookmark;
- (void)updateUserActivityState:(id)state;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation JournalEntryCollectionViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_10002F59C(appearing);
}

- (void)viewWillLayoutSubviews
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for JournalEntryCollectionViewController(0);
  v7.receiver = self;
  v7.super_class = v4;
  selfCopy = self;
  [(JournalEntryCollectionViewController *)&v7 viewWillLayoutSubviews];
  view = [(JournalEntryCollectionViewController *)selfCopy view];
  if (view)
  {
    sub_10002FD9C(view);
    UIViewController.traitOverrides.getter();
    sub_10002FE80();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    sub_1003036F0();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001854C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100035854(appear);
}

- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot
{
  controllerCopy = controller;
  snapshotCopy = snapshot;
  selfCopy = self;
  sub_10006D260();
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100097C08();
}

- (void)setUpBottomFade
{
  selfCopy = self;
  sub_10001A264();
}

- (void)deleteEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  v5 = sub_10030B1AC();
  presentationSourceItem = [entryCopy presentationSourceItem];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *((swift_isaMask & selfCopy->super.super.super.isa) + 0x4D0);

  v8(v5, presentationSourceItem, 0, sub_100318D68, v7);

  swift_unknownObjectRelease();
}

- (_TtC7Journal36JournalEntryCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10030D348(commandCopy);
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

  v8 = sub_10030E350(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)toggleBookmark
{
  selfCopy = self;
  sub_1003100F4();
}

- (void)printEntry
{
  selfCopy = self;
  sub_10031055C();
}

- (void)duplicateEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_100316D30();
}

- (void)editEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_100317440();
}

- (void)changeJournal:(id)journal
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_10030B1AC();
  swift_getObjectType();
  sub_1003155A0(v5, journal, selfCopy);

  swift_unknownObjectRelease();
}

- (void)openSelectedEntry
{
  selfCopy = self;
  sub_100311474();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JournalEntryCollectionViewController(0);
  v6 = v8.receiver;
  [(JournalEntryCollectionViewController *)&v8 setEditing:editingCopy animated:animatedCopy];
  v7 = *&v6[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  [v7 setEditing:{editingCopy, v8.receiver, v8.super_class}];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1003176CC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10031230C(viewCopy, cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_1003178A4();
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100317A40(viewCopy, contextCopy);
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100317BD8(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_1004FC46C();
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  sub_1004FC46C();
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003183E4();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1000065A8(0, &unk_100AD4C90);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v5 = self + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 96);
    selfCopy = self;
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application
{
  selfCopy = self;
  traitCollection = [(JournalEntryCollectionViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom != 5;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003187FC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1005FBFFC(v7);

  return v10;
}

@end
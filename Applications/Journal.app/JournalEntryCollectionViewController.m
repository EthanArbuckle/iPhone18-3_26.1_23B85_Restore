@interface JournalEntryCollectionViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 dragSessionIsRestrictedToDraggingApplication:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC7Journal36JournalEntryCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)changeJournal:(id)a3;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3;
- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4;
- (void)deleteEntry:(id)a3;
- (void)duplicateEntry:(id)a3;
- (void)editEntry:(id)a3;
- (void)openSelectedEntry;
- (void)printEntry;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setUpBottomFade;
- (void)toggleBookmark;
- (void)updateUserActivityState:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation JournalEntryCollectionViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_10002F59C(a3);
}

- (void)viewWillLayoutSubviews
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for JournalEntryCollectionViewController(0);
  v7.receiver = self;
  v7.super_class = v4;
  v5 = self;
  [(JournalEntryCollectionViewController *)&v7 viewWillLayoutSubviews];
  v6 = [(JournalEntryCollectionViewController *)v5 view];
  if (v6)
  {
    sub_10002FD9C(v6);
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
  v2 = self;
  sub_10001854C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100035854(a3);
}

- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10006D260();
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100097C08();
}

- (void)setUpBottomFade
{
  v2 = self;
  sub_10001A264();
}

- (void)deleteEntry:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = sub_10030B1AC();
  v6 = [v4 presentationSourceItem];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *((swift_isaMask & v9->super.super.super.isa) + 0x4D0);

  v8(v5, v6, 0, sub_100318D68, v7);

  swift_unknownObjectRelease();
}

- (_TtC7Journal36JournalEntryCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10030D348(v4);
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

  v8 = sub_10030E350(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)toggleBookmark
{
  v2 = self;
  sub_1003100F4();
}

- (void)printEntry
{
  v2 = self;
  sub_10031055C();
}

- (void)duplicateEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100316D30();
}

- (void)editEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100317440();
}

- (void)changeJournal:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = sub_10030B1AC();
  swift_getObjectType();
  sub_1003155A0(v5, a3, v6);

  swift_unknownObjectRelease();
}

- (void)openSelectedEntry
{
  v2 = self;
  sub_100311474();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JournalEntryCollectionViewController(0);
  v6 = v8.receiver;
  [(JournalEntryCollectionViewController *)&v8 setEditing:v5 animated:v4];
  v7 = *&v6[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  [v7 setEditing:{v5, v8.receiver, v8.super_class}];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1003176CC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10031230C(v12, v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003178A4();
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100317A40(v8, v9);
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100317BD8(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = self;
    sub_1004FC46C();
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = self;
  sub_1004FC46C();
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_1003183E4();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1000065A8(0, &unk_100AD4C90);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = self + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 96);
    v9 = self;
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (BOOL)collectionView:(id)a3 dragSessionIsRestrictedToDraggingApplication:(id)a4
{
  v4 = self;
  v5 = [(JournalEntryCollectionViewController *)v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  return v6 != 5;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1003187FC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_1005FBFFC(v7);

  return v10;
}

@end
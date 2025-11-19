@interface TTRIRemindersListContentViewController_collectionView
- (BOOL)collectionView:(id)a3 canEditItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (_TtC9Reminders53TTRIRemindersListContentViewController_collectionView)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)hoverInteraction:(id)a3 didBeginHoverAndHoldAtLocation:(CGPoint)a4 elevation:(double)a5;
- (void)hoverInteractionDidEndHoverAndHold:(id)a3;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRIRemindersListContentViewController_collectionView

- (void)loadView
{
  v2 = self;
  sub_10050F488();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10050F5BC();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_100511B14(a3, a4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100511CE4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100512260(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = self;
  v6 = [a3 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TTRIRemindersListReminderCell_collectionView();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {

      v6 = 0;
    }
  }

  v8 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell);
  *(&v5->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell) = v6;
}

- (_TtC9Reminders53TTRIRemindersListContentViewController_collectionView)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_10051B348();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v3)
  {
    sub_100003540(0, &qword_100775690);
    v6 = a3;
    v7 = self;
    v8 = v3;
    if (static NSObject.== infix(_:_:)())
    {
      sub_100058000(&unk_1007701B0);
      sub_10000E188(&unk_1007701E0, &unk_1007701B0);
      Subject<>.send()();
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate);
  if (v4)
  {
    v5 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate) respondsToSelector:"scrollViewWillBeginDragging:"];
    v6 = a3;
    v7 = self;
    if (v5)
    {
      [v4 scrollViewWillBeginDragging:v6];
    }
  }

  else
  {
    v8 = a3;
    v9 = self;
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController))
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100524734(a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005247D0();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10051B7DC();
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
  sub_100524868();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = (&v20 - v11);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = self;
  sub_10051BA3C(v12, v9);
  sub_1000079B4(v12, &qword_100772140);
  LOBYTE(self) = TTRICollectionViewCellSelectionOption.shouldRevertItemHighlight.getter();
  (*(v7 + 8))(v9, v6);
  if (self)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [(TTRIRemindersListContentViewController_collectionView *)v17 _unhighlightItemAtIndexPath:isa animated:0];

    v17 = v18;
    v18 = isa;
  }

  (*(v14 + 8))(v16, v13);
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
  sub_10051C598(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *&self->initialFrameForLoadingView[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 16];
  v10 = *&self->initialFrameForLoadingView[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  sub_10000C36C((&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v9);
  v11 = *(v10 + 8);
  v12 = *(v11 + 304);
  v13 = self;
  v14 = v12(v9, v11);

  (*(v6 + 8))(v8, v5);
  return v14 & 1;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100524AF0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100524C60();
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_10051CF40(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)a3 canEditItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10051D568(v10, v9, x, y);
  v13 = v12;

  return v13;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000C36C(v8, v9);
  v11 = *(v10 + 8);
  v12 = *(v11 + 848);
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = self;
  v12(v13, a5, v9, v11);

  swift_unknownObjectRelease();
}

- (void)hoverInteraction:(id)a3 didBeginHoverAndHoldAtLocation:(CGPoint)a4 elevation:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_100525328(v8, x, y);
}

- (void)hoverInteractionDidEndHoverAndHold:(id)a3
{
  v3 = self;
  sub_100117CEC();
  PassthroughSubject.send(_:)();
}

@end
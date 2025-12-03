@interface TTRIRemindersListContentViewController_collectionView
- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (_TtC9Reminders53TTRIRemindersListContentViewController_collectionView)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)hoverInteraction:(id)interaction didBeginHoverAndHoldAtLocation:(CGPoint)location elevation:(double)elevation;
- (void)hoverInteractionDidEndHoverAndHold:(id)hold;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRIRemindersListContentViewController_collectionView

- (void)loadView
{
  selfCopy = self;
  sub_10050F488();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10050F5BC();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_100511B14(editing, animated);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100511CE4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100512260(disappear);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  nextFocusedView = [context nextFocusedView];
  if (nextFocusedView)
  {
    v7 = nextFocusedView;
    type metadata accessor for TTRIRemindersListReminderCell_collectionView();
    nextFocusedView = swift_dynamicCastClass();
    if (!nextFocusedView)
    {

      nextFocusedView = 0;
    }
  }

  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell) = nextFocusedView;
}

- (_TtC9Reminders53TTRIRemindersListContentViewController_collectionView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10051B348();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v3)
  {
    sub_100003540(0, &qword_100775690);
    scrollCopy = scroll;
    selfCopy = self;
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate);
  if (v4)
  {
    v5 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate) respondsToSelector:"scrollViewWillBeginDragging:"];
    draggingCopy = dragging;
    selfCopy = self;
    if (v5)
    {
      [v4 scrollViewWillBeginDragging:draggingCopy];
    }
  }

  else
  {
    draggingCopy2 = dragging;
    selfCopy2 = self;
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController))
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100524734(decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_1005247D0();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_10051B7DC();
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
  sub_100524868();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  sub_10051BA3C(v12, v9);
  sub_1000079B4(v12, &qword_100772140);
  LOBYTE(self) = TTRICollectionViewCellSelectionOption.shouldRevertItemHighlight.getter();
  (*(v7 + 8))(v9, v6);
  if (self)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [(TTRIRemindersListContentViewController_collectionView *)viewCopy _unhighlightItemAtIndexPath:isa animated:0];

    viewCopy = selfCopy;
    selfCopy = isa;
  }

  (*(v14 + 8))(v16, v13);
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
  sub_10051C598(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
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
  selfCopy = self;
  v14 = v12(v9, v11);

  (*(v6 + 8))(v8, v5);
  return v14 & 1;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100524AF0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_100524C60();
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10051CF40(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10051D568(viewCopy, v9, x, y);
  v13 = v12;

  return v13;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000C36C(v8, v9);
  v11 = *(v10 + 8);
  v12 = *(v11 + 848);
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12(configurationCopy, animator, v9, v11);

  swift_unknownObjectRelease();
}

- (void)hoverInteraction:(id)interaction didBeginHoverAndHoldAtLocation:(CGPoint)location elevation:(double)elevation
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  sub_100525328(interactionCopy, x, y);
}

- (void)hoverInteractionDidEndHoverAndHold:(id)hold
{
  selfCopy = self;
  sub_100117CEC();
  PassthroughSubject.send(_:)();
}

@end
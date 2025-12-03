@interface NowPlayingQueueViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (_TtC5Music29NowPlayingQueueViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureCell:(id)cell forSong:(id)song;
- (void)configureCell:(void *)cell forTVEpisode:(void *)episode;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)dealloc;
- (void)handleLongPress:(id)press;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NowPlayingQueueViewController

- (void)configureCell:(void *)cell forTVEpisode:(void *)episode
{
  cellCopy = cell;
  episodeCopy = episode;
  selfCopy = self;
  sub_10030746C(cellCopy, episodeCopy);
}

- (void)dealloc
{
  v2 = qword_10117F5F8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101218AC8;
  Playing = MPCPlayerRequestTracklistRange.upNextPlayingItems.unsafeMutableAddressor();
  v6 = *Playing;
  v7 = Playing[1];
  v8 = (*(*v4 + 752))(v11);
  v9.reverseCount = v6;
  v9.forwardCount = v7;
  Player.NowPlayingConfiguration.remove(_:)(v9);
  v8(v11, 0);
  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  [(NowPlayingQueueViewController *)&v10 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002DFB44();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v6.receiver;
  [(NowPlayingQueueViewController *)&v6 viewDidAppear:appearCopy];
  v5 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce;
  if ((v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce] & 1) == 0)
  {
    sub_1002DDD7C(3);
    v4[v5] = 1;
  }

  sub_1002E4A30();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v5.receiver;
  [(NowPlayingQueueViewController *)&v5 viewWillDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip] = 0;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(7, 3);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v5.receiver;
  [(NowPlayingQueueViewController *)&v5 viewDidDisappear:disappearCopy];
  if ([v4 isBeingDismissed])
  {
    [*&v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController] endAutomaticResponseLoading];
  }
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_1002E4E50();
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v2 = v7.receiver;
  [(NowPlayingQueueViewController *)&v7 viewSafeAreaInsetsDidChange];
  v3 = sub_1002DCC7C();
  [v3 contentSize];
  v5 = v4;

  sub_1002E6958(0, v6, v5);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1002E53E4();
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_1002E5B54(pressCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  [draggingCopy setDecelerationRate:UIScrollViewDecelerationRateNormal];
  [draggingCopy contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = (&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset);
  *v9 = v6;
  v9[1] = v8;
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) = 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1002E5F10(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  selfCopy = self;
  sub_1002E61F0(draggingCopy, &offset->x, v9, y);
}

- (_TtC5Music29NowPlayingQueueViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureCell:(id)cell forSong:(id)song
{
  cellCopy = cell;
  songCopy = song;
  selfCopy = self;
  sub_1003072A0(cellCopy, songCopy);
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
  sub_10030762C(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_100307EC8(supplementaryViewCopy);

  (*(v10 + 8))(v12, v9);
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  selfCopy = self;
  v9 = sub_1002F9EC0(x, y);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  v21 = selfCopy;
  sub_1002FA024(v16, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1002FAB38(viewCopy);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1002FAE94(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003080A0(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1003083FC(v10);
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100303224(viewCopy, configurationCopy);
  v10 = v9;

  return v10;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  v4 = [(NowPlayingQueueViewController *)self collectionView:view previewForHighlightingContextMenuWithConfiguration:configuration];

  return v4;
}

- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference
{
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (reference)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for IndexPath();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_1000095E8(v7, &unk_10118BCE0);

  return 0;
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(replacement);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  type metadata accessor for MainActor();
  controllerCopy = controller;
  selfCopy = self;
  v15 = controllerCopy;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = selfCopy;
  v17[5] = sub_100115508;
  v17[6] = v11;
  v17[7] = v15;
  sub_1001F4CB8(0, 0, v9, &unk_100EC6448, v17);
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  *v5 = 0;
  v5[1] = 0;
  selfCopy = self;
  sub_100020438(v6);
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  if (animator)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = self;
    v10[4] = sub_100306160;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10002BC98;
    v10[3] = &unk_1010A5188;
    v8 = _Block_copy(v10);
    selfCopy = self;
    swift_unknownObjectRetain();

    [animator addCompletion:v8];
    swift_unknownObjectRelease();

    _Block_release(v8);
  }
}

@end
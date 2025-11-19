@interface NowPlayingQueueViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (_TtC5Music29NowPlayingQueueViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_collectionView:(id)a3 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureCell:(id)a3 forSong:(id)a4;
- (void)configureCell:(void *)a3 forTVEpisode:(void *)a4;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NowPlayingQueueViewController

- (void)configureCell:(void *)a3 forTVEpisode:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_10030746C(v6, v7);
}

- (void)dealloc
{
  v2 = qword_10117F5F8;
  v3 = self;
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
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  [(NowPlayingQueueViewController *)&v10 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002DFB44();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v6.receiver;
  [(NowPlayingQueueViewController *)&v6 viewDidAppear:v3];
  v5 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce;
  if ((v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce] & 1) == 0)
  {
    sub_1002DDD7C(3);
    v4[v5] = 1;
  }

  sub_1002E4A30();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v5.receiver;
  [(NowPlayingQueueViewController *)&v5 viewWillDisappear:v3];
  v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip] = 0;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(7, 3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  v4 = v5.receiver;
  [(NowPlayingQueueViewController *)&v5 viewDidDisappear:v3];
  if ([v4 isBeingDismissed])
  {
    [*&v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController] endAutomaticResponseLoading];
  }
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
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
  v2 = self;
  sub_1002E53E4();
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E5B54(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v10 = self;
  [v4 setDecelerationRate:UIScrollViewDecelerationRateNormal];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = (&v10->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset);
  *v9 = v6;
  v9[1] = v8;
  *(&v10->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) = 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E5F10(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v8 = a3;
  v10 = self;
  sub_1002E61F0(v8, &a5->x, v9, y);
}

- (_TtC5Music29NowPlayingQueueViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureCell:(id)a3 forSong:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003072A0(v6, v7);
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
  sub_10030762C(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_100307EC8(v14);

  (*(v10 + 8))(v12, v9);
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_1002F9EC0(x, y);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v26 = self;
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
  v20 = a3;
  v21 = v26;
  sub_1002FA024(v16, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002FAB38(v10);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002FAE94(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1003080A0(v9, a5);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_1003083FC(v10);
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100303224(v6, v7);
  v10 = v9;

  return v10;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v4 = [(NowPlayingQueueViewController *)self collectionView:a3 previewForHighlightingContextMenuWithConfiguration:a4];

  return v4;
}

- (id)_collectionView:(id)a3 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)a4
{
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a4)
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

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a3;
  v14 = self;
  v15 = v13;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = sub_100115508;
  v17[6] = v11;
  v17[7] = v15;
  sub_1001F4CB8(0, 0, v9, &unk_100EC6448, v17);
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  *v5 = 0;
  v5[1] = 0;
  v7 = self;
  sub_100020438(v6);
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  if (a5)
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
    v9 = self;
    swift_unknownObjectRetain();

    [a5 addCompletion:v8];
    swift_unknownObjectRelease();

    _Block_release(v8);
  }
}

@end
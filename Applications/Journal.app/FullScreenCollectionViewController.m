@interface FullScreenCollectionViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (UIView)_showcaseView;
- (_TtC7Journal34FullScreenCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)deleteEntry:(id)a3;
- (void)finishOnPressingEscape;
- (void)fullScreenJournalAssetsDidChange:(id)a3;
- (void)handleAppWillMoveToForeground;
- (void)pageControlTapped;
- (void)scrollBackward;
- (void)scrollForward;
- (void)scrollViewDidScroll:(id)a3;
- (void)updateViewConstraints;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FullScreenCollectionViewController

- (UIView)_showcaseView
{
  v2 = self;
  v3 = sub_10042351C();

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FullScreenCollectionViewController();
  [(FullScreenCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004271D0();
}

- (void)finishOnPressingEscape
{
  v2 = self;
  sub_100432860(0);
}

- (void)fullScreenJournalAssetsDidChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100428950();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100428E40(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10042935C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004294A8(a3);
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_100429904();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  sub_100432860(0);

  return 1;
}

- (void)handleAppWillMoveToForeground
{
  v2 = self;
  sub_10042B594();
}

- (void)pageControlTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  v3 = self;
  sub_100438744([v2 currentPage], 0);
}

- (_TtC7Journal34FullScreenCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  sub_100438A7C(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100438D98(v13);

  (*(v9 + 8))(v11, v8);
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_100423270(v6);

  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100438EA0();
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

  v8 = sub_100433974(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100433D68(v4);
}

- (void)scrollBackward
{
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  v7 = self;
  v5 = v4;
  v6 = [v5 currentPage];
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    [v5 setCurrentPage:v6 - 1];

    sub_100438744([*(&self->super.super.super.isa + v3) currentPage], 0);
  }
}

- (void)scrollForward
{
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  v7 = self;
  v5 = v4;
  v6 = [v5 currentPage];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    [v5 setCurrentPage:v6 + 1];

    sub_100438744([*(&self->super.super.super.isa + v3) currentPage], 0);
  }
}

- (void)deleteEntry:(id)a3
{
  v5 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v7 = a3;
  v8 = self;
  sub_100430470([v7 presentationSourceItem]);
  swift_unknownObjectRelease();
}

@end
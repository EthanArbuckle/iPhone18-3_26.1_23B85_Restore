@interface FullScreenLegacyCollectionViewController
- (BOOL)accessibilityPerformEscape;
- (UIView)_showcaseView;
- (_TtC7Journal40FullScreenLegacyCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)handleAppWillMoveToBackground;
- (void)handleAppWillMoveToForeground;
- (void)pageControlTapped;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)videoMuteButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation FullScreenLegacyCollectionViewController

- (UIView)_showcaseView
{
  v2 = self;
  v3 = sub_1004D8610();

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FullScreenLegacyCollectionViewController();
  [(FullScreenLegacyCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004D8FC8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1004D98AC(a3);
}

- (BOOL)accessibilityPerformEscape
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = self;
    sub_10080D688(v4, 0, 1);
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

- (void)handleAppWillMoveToBackground
{
  v2 = self;
  sub_1004DB540();
}

- (void)handleAppWillMoveToForeground
{
  v2 = self;
  sub_1004DB308();
}

- (void)pageControlTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);
  v3 = self;
  sub_1004DBE9C([v2 currentPage], 1);
}

- (void)videoMuteButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004E4F48();
}

- (_TtC7Journal40FullScreenLegacyCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1004E1678(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_1004E5174(v13);

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
  sub_1004E5480(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1004E47F4;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100006C7C;
  v7[3] = &unk_100A70458;
  v5 = _Block_copy(v7);
  v6 = self;

  [(FullScreenLegacyCollectionViewController *)v6 dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

@end
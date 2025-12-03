@interface FullScreenLegacyCollectionViewController
- (BOOL)accessibilityPerformEscape;
- (UIView)_showcaseView;
- (_TtC7Journal40FullScreenLegacyCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)handleAppWillMoveToBackground;
- (void)handleAppWillMoveToForeground;
- (void)pageControlTapped;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)videoMuteButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation FullScreenLegacyCollectionViewController

- (UIView)_showcaseView
{
  selfCopy = self;
  v3 = sub_1004D8610();

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FullScreenLegacyCollectionViewController();
  [(FullScreenLegacyCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004D8FC8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004D98AC(appear);
}

- (BOOL)accessibilityPerformEscape
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    selfCopy = self;
    sub_10080D688(selfCopy, 0, 1);
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

- (void)handleAppWillMoveToBackground
{
  selfCopy = self;
  sub_1004DB540();
}

- (void)handleAppWillMoveToForeground
{
  selfCopy = self;
  sub_1004DB308();
}

- (void)pageControlTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);
  selfCopy = self;
  sub_1004DBE9C([v2 currentPage], 1);
}

- (void)videoMuteButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1004E4F48();
}

- (_TtC7Journal40FullScreenLegacyCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1004E1678(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_1004E5174(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1004E5480(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)presentationControllerDidDismiss:(id)dismiss
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
  selfCopy = self;

  [(FullScreenLegacyCollectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

@end
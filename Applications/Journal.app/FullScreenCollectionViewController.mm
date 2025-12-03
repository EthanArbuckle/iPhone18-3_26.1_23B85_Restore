@interface FullScreenCollectionViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (UIView)_showcaseView;
- (_TtC7Journal34FullScreenCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deleteEntry:(id)entry;
- (void)finishOnPressingEscape;
- (void)fullScreenJournalAssetsDidChange:(id)change;
- (void)handleAppWillMoveToForeground;
- (void)pageControlTapped;
- (void)scrollBackward;
- (void)scrollForward;
- (void)scrollViewDidScroll:(id)scroll;
- (void)updateViewConstraints;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FullScreenCollectionViewController

- (UIView)_showcaseView
{
  selfCopy = self;
  v3 = sub_10042351C();

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FullScreenCollectionViewController();
  [(FullScreenCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004271D0();
}

- (void)finishOnPressingEscape
{
  selfCopy = self;
  sub_100432860(0);
}

- (void)fullScreenJournalAssetsDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100428950();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100428E40(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10042935C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004294A8(disappear);
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_100429904();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  sub_100432860(0);

  return 1;
}

- (void)handleAppWillMoveToForeground
{
  selfCopy = self;
  sub_10042B594();
}

- (void)pageControlTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  selfCopy = self;
  sub_100438744([v2 currentPage], 0);
}

- (_TtC7Journal34FullScreenCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  sub_100438A7C(cellCopy);

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
  sub_100438D98(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_100438EA0();
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

  v8 = sub_100433974(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100433D68(commandCopy);
}

- (void)scrollBackward
{
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  selfCopy = self;
  v5 = v4;
  currentPage = [v5 currentPage];
  if (__OFSUB__(currentPage, 1))
  {
    __break(1u);
  }

  else
  {
    [v5 setCurrentPage:currentPage - 1];

    sub_100438744([*(&self->super.super.super.isa + v3) currentPage], 0);
  }
}

- (void)scrollForward
{
  v3 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl);
  selfCopy = self;
  v5 = v4;
  currentPage = [v5 currentPage];
  if (__OFADD__(currentPage, 1))
  {
    __break(1u);
  }

  else
  {
    [v5 setCurrentPage:currentPage + 1];

    sub_100438744([*(&self->super.super.super.isa + v3) currentPage], 0);
  }
}

- (void)deleteEntry:(id)entry
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

  entryCopy = entry;
  selfCopy = self;
  sub_100430470([entryCopy presentationSourceItem]);
  swift_unknownObjectRelease();
}

@end
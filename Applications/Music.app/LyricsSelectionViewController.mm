@interface LyricsSelectionViewController
- (_TtC5Music29LyricsSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)accessibilityCharacterCount;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LyricsSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10033908C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100339CAC(appear);
}

- (_TtC5Music29LyricsSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10033C130(v5, v7, bundle);
}

- (int64_t)accessibilityCharacterCount
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 64);
  result = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

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
  sub_10033F4F4(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10033C8C0(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

@end
@interface LyricsSelectionViewController
- (_TtC5Music29LyricsSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)accessibilityCharacterCount;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LyricsSelectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10033908C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100339CAC(a3);
}

- (_TtC5Music29LyricsSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10033C130(v5, v7, a4);
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
  sub_10033F4F4(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10033C8C0(v10, v9);

  (*(v7 + 8))(v9, v6);
}

@end
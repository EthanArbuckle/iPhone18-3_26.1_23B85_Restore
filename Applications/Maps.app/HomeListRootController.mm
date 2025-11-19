@interface HomeListRootController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)keyCommands;
- (SuggestionsItemSource)suggestionsItemSource;
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (_TtC4Maps22HomeListRootController)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)newTraits;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dragAndDropItem:(id)a3 didResolveMapItem:(id)a4;
- (void)dragAndDropPreviewDidUpdate:(id)a3;
- (void)handleKeyCommand:(id)a3;
- (void)resetScrollOffset;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActive:(BOOL)a3;
- (void)setKeyCommands:(id)a3;
- (void)setNeedsUpdate;
@end

@implementation HomeListRootController

- (UICollectionViewLayout)collectionViewLayout
{
  v2 = self;
  v3 = sub_10005959C();

  return v3;
}

- (UICollectionViewDataSource)dataSource
{
  v2 = self;
  v3 = sub_100059F34();

  return v3;
}

- (void)setActive:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive);
  *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive) = a3;
  v4 = self;
  sub_10005C080(v3);
}

- (id)newTraits
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    v6 = [v4 newTraits];

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    v8 = objc_allocWithZone(GEOMapServiceTraits);
    v9 = self;
    result = [v8 init];
    if (result)
    {
      v10 = result;

      return v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

- (void)resetScrollOffset
{
  v2 = self;
  sub_10006825C();
}

- (NSArray)keyCommands
{
  sub_100014C84(0, &qword_101917320);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setKeyCommands:(id)a3
{
  sub_100014C84(0, &qword_101917320);
  *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommands) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (SuggestionsItemSource)suggestionsItemSource
{
  v2 = self;
  v3 = sub_10005B9AC();
  v4 = [v3 suggestionsItemSource];

  return v4;
}

- (void)setNeedsUpdate
{
  v2 = self;
  sub_1000CE6B8(&qword_10191C2E0);
  sub_1000414C8(&qword_10191C2E8, &qword_10191C2E0);
  Subject<>.send()();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = sub_10037E080(v9);

  sub_100024F64(v9, &unk_101908380);
  return v7 & 1;
}

- (void)handleKeyCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10037ABB4(v4);
}

- (_TtC4Maps22HomeListRootController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = sub_10037B264(v11, v10, v15);

  sub_10004E3D0(v15);
  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = sub_10037B55C(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector:"scrollViewWillEndDragging:withVelocity:targetContentOffset:"])
    {
      [v10 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:{x, y}];
    }

    swift_unknownObjectRelease();
  }
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
  sub_10037BB3C(v12, v13, v11);

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
  sub_10037C270(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_10037E1E4(v11);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_100014C84(0, &unk_10191C210);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10037C8D4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_10037E564();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_allocWithZone(UIDragPreviewParameters);
  v10 = a3;
  v11 = [v9 init];
  result = [v10 theme];
  if (result)
  {
    v13 = result;
    v14 = [result controlBackgroundColor];

    [v11 setBackgroundColor:v14];
    (*(v6 + 8))(v8, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dragAndDropItem:(id)a3 didResolveMapItem:(id)a4
{
  v4 = self;
  sub_10037CAE0();
}

- (void)dragAndDropPreviewDidUpdate:(id)a3
{
  v3 = self;
  sub_10037CAE0();
}

@end
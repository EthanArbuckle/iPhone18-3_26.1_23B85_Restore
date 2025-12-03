@interface HomeListRootController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)keyCommands;
- (SuggestionsItemSource)suggestionsItemSource;
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (_TtC4Maps22HomeListRootController)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)newTraits;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dragAndDropItem:(id)item didResolveMapItem:(id)mapItem;
- (void)dragAndDropPreviewDidUpdate:(id)update;
- (void)handleKeyCommand:(id)command;
- (void)resetScrollOffset;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActive:(BOOL)active;
- (void)setKeyCommands:(id)commands;
- (void)setNeedsUpdate;
@end

@implementation HomeListRootController

- (UICollectionViewLayout)collectionViewLayout
{
  selfCopy = self;
  v3 = sub_10005959C();

  return v3;
}

- (UICollectionViewDataSource)dataSource
{
  selfCopy = self;
  v3 = sub_100059F34();

  return v3;
}

- (void)setActive:(BOOL)active
{
  v3 = *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive);
  *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive) = active;
  selfCopy = self;
  sub_10005C080(v3);
}

- (id)newTraits
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    newTraits = [v4 newTraits];

    swift_unknownObjectRelease();
    return newTraits;
  }

  else
  {
    v8 = objc_allocWithZone(GEOMapServiceTraits);
    selfCopy2 = self;
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
  selfCopy = self;
  sub_10006825C();
}

- (NSArray)keyCommands
{
  sub_100014C84(0, &qword_101917320);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setKeyCommands:(id)commands
{
  sub_100014C84(0, &qword_101917320);
  *(self + OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommands) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (SuggestionsItemSource)suggestionsItemSource
{
  selfCopy = self;
  v3 = sub_10005B9AC();
  suggestionsItemSource = [v3 suggestionsItemSource];

  return suggestionsItemSource;
}

- (void)setNeedsUpdate
{
  selfCopy = self;
  sub_1000CE6B8(&qword_10191C2E0);
  sub_1000414C8(&qword_10191C2E8, &qword_10191C2E0);
  Subject<>.send()();
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
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = sub_10037E080(v9);

  sub_100024F64(v9, &unk_101908380);
  return v7 & 1;
}

- (void)handleKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10037ABB4(commandCopy);
}

- (_TtC4Maps22HomeListRootController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = sub_10037B264(viewCopy, v10, v15);

  sub_10004E3D0(v15);
  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_10037B55C(viewCopy, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector:"scrollViewWillEndDragging:withVelocity:targetContentOffset:"])
    {
      [v10 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:{x, y}];
    }

    swift_unknownObjectRelease();
  }
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
  sub_10037BB3C(viewCopy, cellCopy, v11);

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
  sub_10037C270(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10037E1E4(viewCopy);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_100014C84(0, &unk_10191C210);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10037C8D4(viewCopy, begin);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10037E564();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_allocWithZone(UIDragPreviewParameters);
  viewCopy = view;
  v11 = [v9 init];
  result = [viewCopy theme];
  if (result)
  {
    v13 = result;
    controlBackgroundColor = [result controlBackgroundColor];

    [v11 setBackgroundColor:controlBackgroundColor];
    (*(v6 + 8))(v8, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dragAndDropItem:(id)item didResolveMapItem:(id)mapItem
{
  selfCopy = self;
  sub_10037CAE0();
}

- (void)dragAndDropPreviewDidUpdate:(id)update
{
  selfCopy = self;
  sub_10037CAE0();
}

@end
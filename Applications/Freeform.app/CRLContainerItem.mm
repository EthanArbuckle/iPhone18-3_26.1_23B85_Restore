@interface CRLContainerItem
- (BOOL)beforeInsertionAddNewItems:(id)items atIndex:(int64_t)index board:(id)board error:(id *)error;
- (BOOL)beforeInsertionAddNewItems:(id)items board:(id)board error:(id *)error;
- (BOOL)containsChild:(id)child;
- (BOOL)isItemAllowed:(id)allowed;
- (NSArray)allNestedChildrenItemsIncludingContainers;
- (NSArray)childInfos;
- (NSDictionary)items;
- (NSSet)unorderedItemUUIDs;
- (_TtC8Freeform16CRLContainerItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)d uuidRemapHelper:(id)helper error:(id *)error;
- (id)childEnumerator;
- (id)childEnumeratorForUserFlags:(unint64_t)flags;
- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)children;
- (void)_setParentItemUUIDWithItem:(id)item parent:(id)parent;
- (void)clearChildItemsCache;
- (void)fixUpWithInsertedChild:(id)child expectTransactionContext:(BOOL)context;
- (void)fixUpWithRemovedChild:(id)child expectTransactionContext:(BOOL)context;
- (void)setItems:(id)items;
@end

@implementation CRLContainerItem

- (NSDictionary)items
{
  type metadata accessor for UUID();
  type metadata accessor for CRLBoardItem(0);
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setItems:(id)items
{
  type metadata accessor for UUID();
  type metadata accessor for CRLBoardItem(0);
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10096C5C8(v4);
}

- (NSArray)allNestedChildrenItemsIncludingContainers
{
  selfCopy = self;
  sub_10096C644();

  type metadata accessor for CRLBoardItem(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSSet)unorderedItemUUIDs
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs);
  selfCopy = self;
  if (!v2)
  {
    sub_10096C7D4();
  }

  type metadata accessor for UUID();
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)clearChildItemsCache
{
  *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems) = 0;
  selfCopy = self;

  *(selfCopy + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs) = 0;

  *(selfCopy + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs) = 0;
}

- (NSArray)childInfos
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  selfCopy = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *(self + v3);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10067F2E8(v6);

  sub_1005B981C(&qword_1019F5720);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)fixUpWithInsertedChild:(id)child expectTransactionContext:(BOOL)context
{
  contextCopy = context;
  childCopy = child;
  selfCopy = self;
  sub_10096E1AC(childCopy, contextCopy);
}

- (BOOL)containsChild:(id)child
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v9 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  selfCopy = self;
  if (!v9)
  {
    sub_10096C7D4();
    v9 = *(self + v8);
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = sub_1012CD63C(v7, v11);

  (*(v5 + 8))(v7, v4);
  return v12;
}

- (void)fixUpWithRemovedChild:(id)child expectTransactionContext:(BOOL)context
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10096F3C0(v9, context);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)isItemAllowed:(id)allowed
{
  v3 = (*((swift_isaMask & *allowed) + 0xC8))(self, a2);
  if ((v5 & 0x100) == 0)
  {
    return 1;
  }

  if (!(v3 | v4) && v5 == 0)
  {
    return 1;
  }

  v7 = v3 == 1 && v4 == 0;
  if (v7 && v5 == 0)
  {
    return 1;
  }

  v9 = v3 == 2 && v4 == 0;
  if (v9 && v5 == 0)
  {
    return 1;
  }

  v11 = v3 == 3 && v4 == 0;
  if (v11 && v5 == 0)
  {
    return 1;
  }

  v13 = v3 == 4 && v4 == 0;
  if (v13 && v5 == 0)
  {
    return 1;
  }

  v15 = v3 == 5 && v4 == 0;
  if (v15 && v5 == 0)
  {
    return 1;
  }

  v17 = v3 == 6 && v4 == 0;
  if (v17 && v5 == 0)
  {
    return 1;
  }

  v19 = v3 == 7 && v4 == 0;
  v20 = v19 && v5 == 0;
  if (v20 || v3 == 8 && !v4 && !v5 || v3 == 9 && !v4 && !v5 || v3 == 10 && !v4 && !v5)
  {
    return 1;
  }

  v23 = v3 == 11 && v4 == 0;
  return !v5 && v23;
}

- (BOOL)beforeInsertionAddNewItems:(id)items board:(id)board error:(id *)error
{
  type metadata accessor for CRLBoardItem(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  boardCopy = board;
  selfCopy = self;
  sub_10097A374(v7);

  return 1;
}

- (BOOL)beforeInsertionAddNewItems:(id)items atIndex:(int64_t)index board:(id)board error:(id *)error
{
  type metadata accessor for CRLBoardItem(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  boardCopy = board;
  selfCopy = self;
  sub_10097A674(v9, index);

  return 1;
}

- (id)_duplicateEmptyWithNewParentContainerUUID:(id)d uuidRemapHelper:(id)helper error:(id *)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v19[-v13];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  helperCopy = helper;
  selfCopy = self;
  v17 = sub_100972F14(v14, helperCopy);
  sub_10000CAAC(v14, &qword_1019F6990);

  return v17;
}

- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)children
{
  selfCopy = self;
  sub_10096C300(children);

  type metadata accessor for UUID();
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)childEnumerator
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  selfCopy = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *(self + v3);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_1006406EC(v6);

  v7 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray:isa];

  objectEnumerator = [v9 objectEnumerator];

  return objectEnumerator;
}

- (id)childEnumeratorForUserFlags:(unint64_t)flags
{
  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v5 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  selfCopy = self;
  if (!v5)
  {
    sub_10096C7D4();
    v5 = *(self + v4);
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_1006406EC(v7);

  v8 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray:isa];

  objectEnumerator = [v10 objectEnumerator];

  return objectEnumerator;
}

- (_TtC8Freeform16CRLContainerItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  geometryCopy = geometry;
  return sub_100975D90(storeCopy, v9, geometry);
}

- (void)_setParentItemUUIDWithItem:(id)item parent:(id)parent
{
  itemCopy = item;
  parentCopy = parent;
  selfCopy = self;
  sub_1009C2CBC(itemCopy, parentCopy);
}

@end
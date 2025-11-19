@interface CRLContainerItem
- (BOOL)beforeInsertionAddNewItems:(id)a3 atIndex:(int64_t)a4 board:(id)a5 error:(id *)a6;
- (BOOL)beforeInsertionAddNewItems:(id)a3 board:(id)a4 error:(id *)a5;
- (BOOL)containsChild:(id)a3;
- (BOOL)isItemAllowed:(id)a3;
- (NSArray)allNestedChildrenItemsIncludingContainers;
- (NSArray)childInfos;
- (NSDictionary)items;
- (NSSet)unorderedItemUUIDs;
- (_TtC8Freeform16CRLContainerItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5;
- (id)childEnumerator;
- (id)childEnumeratorForUserFlags:(unint64_t)a3;
- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3;
- (void)_setParentItemUUIDWithItem:(id)a3 parent:(id)a4;
- (void)clearChildItemsCache;
- (void)fixUpWithInsertedChild:(id)a3 expectTransactionContext:(BOOL)a4;
- (void)fixUpWithRemovedChild:(id)a3 expectTransactionContext:(BOOL)a4;
- (void)setItems:(id)a3;
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

- (void)setItems:(id)a3
{
  type metadata accessor for UUID();
  type metadata accessor for CRLBoardItem(0);
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10096C5C8(v4);
}

- (NSArray)allNestedChildrenItemsIncludingContainers
{
  v2 = self;
  sub_10096C644();

  type metadata accessor for CRLBoardItem(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSSet)unorderedItemUUIDs
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs);
  v3 = self;
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
  v2 = self;

  *(v2 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs) = 0;
}

- (NSArray)childInfos
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v5 = self;
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

- (void)fixUpWithInsertedChild:(id)a3 expectTransactionContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_10096E1AC(v6, v4);
}

- (BOOL)containsChild:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v9 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  v10 = self;
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

- (void)fixUpWithRemovedChild:(id)a3 expectTransactionContext:(BOOL)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_10096F3C0(v9, a4);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)isItemAllowed:(id)a3
{
  v3 = (*((swift_isaMask & *a3) + 0xC8))(self, a2);
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

- (BOOL)beforeInsertionAddNewItems:(id)a3 board:(id)a4 error:(id *)a5
{
  type metadata accessor for CRLBoardItem(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = self;
  sub_10097A374(v7);

  return 1;
}

- (BOOL)beforeInsertionAddNewItems:(id)a3 atIndex:(int64_t)a4 board:(id)a5 error:(id *)a6
{
  type metadata accessor for CRLBoardItem(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a5;
  v11 = self;
  sub_10097A674(v9, a4);

  return 1;
}

- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v19[-v13];
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  v15 = a4;
  v16 = self;
  v17 = sub_100972F14(v14, v15);
  sub_10000CAAC(v14, &qword_1019F6990);

  return v17;
}

- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3
{
  v4 = self;
  sub_10096C300(a3);

  type metadata accessor for UUID();
  sub_10097AF90(&qword_1019FB870, &type metadata accessor for UUID);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)childEnumerator
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v5 = self;
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

  v10 = [v9 objectEnumerator];

  return v10;
}

- (id)childEnumeratorForUserFlags:(unint64_t)a3
{
  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v5 = *(self + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v6 = self;
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

  v11 = [v10 objectEnumerator];

  return v11;
}

- (_TtC8Freeform16CRLContainerItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a5;
  return sub_100975D90(v10, v9, a5);
}

- (void)_setParentItemUUIDWithItem:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1009C2CBC(v6, v7);
}

@end
@interface CRLConnectionLineItem
+ (id)commandActionStringForConnectingFrom:(id)from oldConnectedFrom:(id)connectedFrom newConnectedTo:(id)to oldConnectedTo:(id)connectedTo;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)hasOneArrowhead;
- (BOOL)hasOneLineEnd;
- (BOOL)isConnectedWithBoardItem:(id)item boardItemOwner:(id)owner;
- (BOOL)isTailEndOnLeftBestGuess;
- (CRLConnectionLinePathSource)connectionLinePathSource;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (_TtC8Freeform21CRLConnectionLineItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry pathSource:(id)source stroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd;
- (id)commandToAnchorToTableWith:(id)with;
- (id)commandToConnectWithBoardItems:(id)items;
- (void)applyConnectionLineStylingsFromConnectionLineLayoutToUse:(id)use;
- (void)setConnectedFrom:(id)from;
- (void)setConnectedTo:(id)to;
@end

@implementation CRLConnectionLineItem

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  selfCopy = self;
  v3 = sub_100AE7F20();

  return v3 & 1;
}

- (BOOL)isTailEndOnLeftBestGuess
{
  selfCopy = self;
  v3 = sub_100AE829C();

  return v3 & 1;
}

- (Class)layoutClass
{
  selfCopy = self;
  sub_100AE92B8();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &unk_101A10780);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A1CE20);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)hasOneArrowhead
{
  selfCopy = self;
  v3 = sub_100AE9DB8();

  return v3 & 1;
}

- (BOOL)hasOneLineEnd
{
  selfCopy = self;
  v3 = sub_100AEA600();

  return v3 & 1;
}

+ (id)commandActionStringForConnectingFrom:(id)from oldConnectedFrom:(id)connectedFrom newConnectedTo:(id)to oldConnectedTo:(id)connectedTo
{
  fromCopy = from;
  connectedFromCopy = connectedFrom;
  toCopy = to;
  connectedToCopy = connectedTo;
  sub_100AF37A4(from, connectedFrom, to, connectedTo);

  v14 = String._bridgeToObjectiveC()();

  return v14;
}

- (void)setConnectedFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_100AEDE60(from);
}

- (void)setConnectedTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_100AEE290(to);
}

- (BOOL)isConnectedWithBoardItem:(id)item boardItemOwner:(id)owner
{
  swift_getObjectType();
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100AF2878(itemCopy, owner, selfCopy);

  swift_unknownObjectRelease();
  return v9 & 1;
}

- (id)commandToConnectWithBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100AEE6A4(v4);
  v7 = v6;

  return v7;
}

- (id)commandToAnchorToTableWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_100AEF294(withCopy);

  return v6;
}

- (void)applyConnectionLineStylingsFromConnectionLineLayoutToUse:(id)use
{
  useCopy = use;
  selfCopy = self;
  sub_100AEFA30(use);
}

- (CRLConnectionLinePathSource)connectionLinePathSource
{
  v3 = **&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);
    selfCopy = self;

    v8 = v5(v7);

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {

      v9 = 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC8Freeform21CRLConnectionLineItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry pathSource:(id)source stroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd
{
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  geometryCopy = geometry;
  sourceCopy = source;
  strokeCopy = stroke;
  endCopy = end;
  lineEndCopy = lineEnd;
  return sub_100AF1268(storeCopy, v16, geometryCopy, sourceCopy, stroke, end, lineEnd);
}

@end
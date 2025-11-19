@interface CRLConnectionLineItem
+ (id)commandActionStringForConnectingFrom:(id)a3 oldConnectedFrom:(id)a4 newConnectedTo:(id)a5 oldConnectedTo:(id)a6;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)hasOneArrowhead;
- (BOOL)hasOneLineEnd;
- (BOOL)isConnectedWithBoardItem:(id)a3 boardItemOwner:(id)a4;
- (BOOL)isTailEndOnLeftBestGuess;
- (CRLConnectionLinePathSource)connectionLinePathSource;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (_TtC8Freeform21CRLConnectionLineItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5 pathSource:(id)a6 stroke:(id)a7 headLineEnd:(id)a8 tailLineEnd:(id)a9;
- (id)commandToAnchorToTableWith:(id)a3;
- (id)commandToConnectWithBoardItems:(id)a3;
- (void)applyConnectionLineStylingsFromConnectionLineLayoutToUse:(id)a3;
- (void)setConnectedFrom:(id)a3;
- (void)setConnectedTo:(id)a3;
@end

@implementation CRLConnectionLineItem

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v2 = self;
  v3 = sub_100AE7F20();

  return v3 & 1;
}

- (BOOL)isTailEndOnLeftBestGuess
{
  v2 = self;
  v3 = sub_100AE829C();

  return v3 & 1;
}

- (Class)layoutClass
{
  v2 = self;
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
  v2 = self;
  v3 = sub_100AE9DB8();

  return v3 & 1;
}

- (BOOL)hasOneLineEnd
{
  v2 = self;
  v3 = sub_100AEA600();

  return v3 & 1;
}

+ (id)commandActionStringForConnectingFrom:(id)a3 oldConnectedFrom:(id)a4 newConnectedTo:(id)a5 oldConnectedTo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_100AF37A4(a3, a4, a5, a6);

  v14 = String._bridgeToObjectiveC()();

  return v14;
}

- (void)setConnectedFrom:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100AEDE60(a3);
}

- (void)setConnectedTo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100AEE290(a3);
}

- (BOOL)isConnectedWithBoardItem:(id)a3 boardItemOwner:(id)a4
{
  swift_getObjectType();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_100AF2878(v7, a4, v8);

  swift_unknownObjectRelease();
  return v9 & 1;
}

- (id)commandToConnectWithBoardItems:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100AEE6A4(v4);
  v7 = v6;

  return v7;
}

- (id)commandToAnchorToTableWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100AEF294(v4);

  return v6;
}

- (void)applyConnectionLineStylingsFromConnectionLineLayoutToUse:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100AEFA30(a3);
}

- (CRLConnectionLinePathSource)connectionLinePathSource
{
  v3 = **&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);
    v6 = self;

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

- (_TtC8Freeform21CRLConnectionLineItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5 pathSource:(id)a6 stroke:(id)a7 headLineEnd:(id)a8 tailLineEnd:(id)a9
{
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  return sub_100AF1268(v17, v16, v18, v19, a7, a8, a9);
}

@end
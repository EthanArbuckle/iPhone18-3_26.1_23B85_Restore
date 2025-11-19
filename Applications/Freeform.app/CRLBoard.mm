@interface CRLBoard
+ (NSString)defaultBoardTitle;
- (BOOL)applyReorderingWithReorderedScenes:(id)a3;
- (BOOL)containsObject:(id)a3;
- (BOOL)deleteSceneWith:(id)a3;
- (BOOL)didUseWritingTools;
- (BOOL)hasItemsNeedingDownload;
- (BOOL)hasUnsupportedItems;
- (BOOL)isSupported;
- (BOOL)needsToShowFidelityAlertWithVersionFidelityAlertWasShown:(unint64_t)a3;
- (BOOL)setSceneName:(id)a3 :(id)a4;
- (BOOL)setSceneSavedRect:(id)a3 :(CGRect)a4;
- (NSArray)infosToDisplayForInteractiveCanvas;
- (NSArray)orderedItemUUIDs;
- (NSArray)sceneInfos;
- (NSString)title;
- (NSUUID)id;
- (_TtC8Freeform21CRLEditingCoordinator)hack_editingCoordinator;
- (_TtC8Freeform8CRLBoard)init;
- (id)createSceneWithSceneID:(id)a3 savedRect:(CGRect)a4;
- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3;
- (id)getSceneName:(id)a3;
- (id)getSceneWith:(id)a3;
- (id)modelEnumeratorWithFlags:(unint64_t)a3;
- (id)parentMapOfItemsFrom:(id)a3;
- (id)resolveAncestorsFor:(id)a3 ignoringIds:(id)a4;
- (id)resolveToSiblingsWithUuids:(id)a3;
- (id)searchableItemAttributeSet:(id)a3 indexRecognizerAttributeKey:(id)a4;
- (int64_t)getScenesCount;
- (int64_t)hash;
- (unint64_t)resolvedMinRequiredVersion;
- (unint64_t)resolvedMinRequiredVersionForGoodEnoughFidelity;
- (void)asyncSavePendingChangesWithCompletionHandler:(id)a3;
- (void)enterRealTimeSyncSessionWithGloballyScopedOwnerName:(id)a3 localParticipantUUID:(id)a4;
- (void)exitRealTimeSyncSession;
- (void)fixUp;
- (void)hasUnsyncedChangesWithCompletionHandler:(id)a3;
- (void)refetchMissingStrokes;
- (void)savePendingChanges;
- (void)setAlternateRootContainer:(id)a3;
- (void)setDidUseWritingTools:(BOOL)a3;
- (void)setRootContainer:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CRLBoard

- (id)searchableItemAttributeSet:(id)a3 indexRecognizerAttributeKey:(id)a4
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  v8 = self;
  v9 = sub_1009301E4(v6, a4);

  return v9;
}

- (void)setRootContainer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) = a3;
  v3 = a3;
}

- (void)setAlternateRootContainer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer);
  *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer) = a3;
  v3 = a3;
}

- (NSArray)infosToDisplayForInteractiveCanvas
{
  v2 = self;
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)orderedItemUUIDs
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v3 = *&v2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs];
  v4 = self;
  v5 = v2;
  if (!v3)
  {
    sub_10096C7D4();
  }

  type metadata accessor for UUID();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_100EB9D68();

  return v3;
}

- (NSUUID)id
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v10 + v11, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v5, type metadata accessor for CRLBoardCRDTData);
  v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);

  return v12.super.isa;
}

- (NSString)title
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v6 + v7, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v5, type metadata accessor for CRLBoardCRDTData);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (void)setTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100EBA32C(v4, v6);
}

- (_TtC8Freeform21CRLEditingCoordinator)hack_editingCoordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)enterRealTimeSyncSessionWithGloballyScopedOwnerName:(id)a3 localParticipantUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  sub_100EC0DE8(v9, v11, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)exitRealTimeSyncSession
{
  v2 = self;
  sub_100EC1CB0();
}

- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3
{
  v4 = self;
  sub_100EC53F4(a3);

  type metadata accessor for UUID();
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)modelEnumeratorWithFlags:(unint64_t)a3
{
  v3 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*(self + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) flags:a3 filter:0];

  return v3;
}

- (BOOL)isSupported
{
  if (*(self + OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported))
  {
    return 0;
  }

  v3 = self;
  v4 = sub_100EC7714();
  v5 = sub_10001FF1C();

  return v5 >= v4;
}

- (BOOL)hasUnsupportedItems
{
  v2 = self;
  v3 = sub_100EC5754();

  return v3 & 1;
}

- (BOOL)hasItemsNeedingDownload
{
  v2 = self;
  v3 = sub_100EC5A5C();

  return v3 & 1;
}

- (BOOL)didUseWritingTools
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v6 + v7, v5, type metadata accessor for CRLBoardCRDTData);
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A22790);
  CRMaxRegister.wrappedValue.getter();
  sub_10003D69C(v5, type metadata accessor for CRLBoardCRDTData);
  return v9[7];
}

- (void)setDidUseWritingTools:(BOOL)a3
{
  v3 = self;
  sub_100EC7294();
}

- (unint64_t)resolvedMinRequiredVersion
{
  v2 = self;
  v3 = sub_100EC7714();

  return v3;
}

- (unint64_t)resolvedMinRequiredVersionForGoodEnoughFidelity
{
  v2 = self;
  v3 = sub_100EC7A40();

  return v3;
}

- (BOOL)needsToShowFidelityAlertWithVersionFidelityAlertWasShown:(unint64_t)a3
{
  v4 = self;
  v5 = sub_10001FF1C();
  v6 = sub_100EC7A40();

  return v5 < v6 && v5 != a3;
}

- (NSArray)sceneInfos
{
  v2 = self;
  sub_100EC8784();

  type metadata accessor for CRLSceneInfo();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)createSceneWithSceneID:(id)a3 savedRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = self;
  sub_100EC90D0(v12, v15, x, y, width, height);

  v17 = *(v10 + 8);
  v17(v12, v9);
  v18.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v17(v15, v9);

  return v18.super.isa;
}

- (id)getSceneWith:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_100EC94FC(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (BOOL)deleteSceneWith:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  type metadata accessor for CRLBoardCRDTData(0);
  v8 = self;

  LOBYTE(self) = sub_100726D18();
  swift_endAccess();

  (*(v5 + 8))(v7, v4);
  return self & 1;
}

- (BOOL)setSceneName:(id)a3 :(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_beginAccess();
  type metadata accessor for CRLBoardCRDTData(0);
  v12 = self;

  LOBYTE(self) = sub_100727014(v8, v9, v11);
  swift_endAccess();

  (*(v6 + 8))(v8, v5);
  return self & 1;
}

- (id)getSceneName:(id)a3
{
  v4 = type metadata accessor for CRLBoardScenesCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v12 = type metadata accessor for CRLBoardCRDTData(0);
  sub_10004FECC(v11 + *(v12 + 36), v6, type metadata accessor for CRLBoardScenesCRDTData);
  sub_1005B981C(&qword_1019FCC98);
  CRDictionary.subscript.getter();
  sub_10003D69C(v6, type metadata accessor for CRLBoardScenesCRDTData);
  (*(v8 + 8))(v10, v7);
  if (v15[2])
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setSceneSavedRect:(id)a3 :(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  type metadata accessor for CRLBoardCRDTData(0);
  v13 = self;

  v14.n128_f64[0] = x;
  v15.n128_f64[0] = y;
  v16.n128_f64[0] = width;
  v17.n128_f64[0] = height;
  LOBYTE(self) = sub_100727234(v12, v14, v15, v16, v17);
  swift_endAccess();

  (*(v10 + 8))(v12, v9);
  return self & 1;
}

- (BOOL)applyReorderingWithReorderedScenes:(id)a3
{
  type metadata accessor for CRLSceneInfo();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_100ECA104(v4);

  return v6 & 1;
}

- (int64_t)getScenesCount
{
  v3 = sub_1005B981C(&unk_101A28650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = *(self + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  (*(v4 + 16))(v6, v7 + *(v8 + 36), v3);
  v9 = CROrderedSet.count.getter();
  (*(v4 + 8))(v6, v3);
  return v9;
}

- (_TtC8Freeform8CRLBoard)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fixUp
{
  v2 = self;
  sub_100ECBE40();
}

- (id)resolveAncestorsFor:(id)a3 ignoringIds:(id)a4
{
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  sub_100ECD1C8(v5, v6);

  type metadata accessor for CRLBoardItem(0);
  sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)resolveToSiblingsWithUuids:(id)a3
{
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  v7 = [(CRLBoard *)v6 parentMapOfItemsFrom:a3];
  type metadata accessor for CRLBoardItem(0);
  sub_1005B981C(&qword_1019FB568);
  sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100ECEC48(v8, v5);

  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)parentMapOfItemsFrom:(id)a3
{
  type metadata accessor for UUID();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100ECF3A0(v4);

  type metadata accessor for CRLBoardItem(0);
  sub_1005B981C(&qword_1019FB568);
  sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)hasUnsyncedChangesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014B7670;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014B7678;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014B7680, v12);
}

- (void)savePendingChanges
{
  v2 = self;
  sub_100ED1CF8(0, 0);
}

- (void)asyncSavePendingChangesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014B7658;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (BOOL)containsObject:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_100EB6CA8(v7);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData;
    swift_beginAccess();
    v14 = *(v8 + v13);
    v15 = type metadata accessor for CRLTransactableHashableWrapper();
    ObjectType = swift_getObjectType();
    v17 = sub_1012DCC44(v11, v15, ObjectType, v12);

    swift_unknownObjectRetain();
    LOBYTE(v15) = sub_10079C5CC(v17, v14);
    swift_unknownObjectRelease();

    v18 = v15 ^ 1;
  }

  else
  {

    v18 = 0;
  }

  (*(v5 + 8))(v7, v4);
  return v18 & 1;
}

+ (NSString)defaultBoardTitle
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)refetchMissingStrokes
{
  v2 = self;
  sub_1012FF064();
}

@end
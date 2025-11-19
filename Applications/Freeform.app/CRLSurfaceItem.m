@interface CRLSurfaceItem
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (_TtC8Freeform14CRLSurfaceItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5;
- (_TtC8Freeform14CRLSurfaceItem)initWithStore:(id)a3 rootContainer:(id)a4 geometry:(id)a5;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)a3 uuidRemapHelper:(id)a4 error:(id *)a5;
- (void)setAspectRatioLocked:;
@end

@implementation CRLSurfaceItem

- (_TtC8Freeform14CRLSurfaceItem)initWithStore:(id)a3 rootContainer:(id)a4 geometry:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return sub_100AE1128(v7, v8, a5);
}

- (_TtC8Freeform14CRLSurfaceItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 geometry:(id)a5
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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
  v17 = sub_100AE2454(v14, v15);
  sub_10000CAAC(v14, &qword_1019F6990);

  return v17;
}

- (Class)repClass
{
  type metadata accessor for CRLUnknownRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)layoutClass
{
  type metadata accessor for CRLUnknownLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLSurfaceEditor();

  return swift_getObjCClassFromMetadata();
}

- (void)setAspectRatioLocked:
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v23 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v23);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_1005CF000();
  *(inited + 96) = v10;
  v11 = sub_100AE430C(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 197;
  v13 = v23;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Should not try to set aspectRatioLocked of an item which returns false from canAspectRatioLockBeChangedByUser.", 110, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:197 isFatal:0 format:v22 args:v19];
}

@end
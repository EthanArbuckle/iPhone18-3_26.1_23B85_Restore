@interface CRLCanvasDotGridBackground
- (CGPoint)alignmentPointForPoint:(CGPoint)a3;
- (Class)layerClass;
- (Class)viewClass;
- (_TtC8Freeform26CRLCanvasDotGridBackground)initWithICC:(id)a3;
- (void)snapDistanceForViewScale:(double)a1;
@end

@implementation CRLCanvasDotGridBackground

- (Class)layerClass
{
  type metadata accessor for CRLCanvasDotGridLayer();

  return swift_getObjCClassFromMetadata();
}

- (Class)viewClass
{
  type metadata accessor for CRLCanvasDotGridBackgroundView();

  return swift_getObjCClassFromMetadata();
}

- (CGPoint)alignmentPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_100C683C8(x);
  v7 = x + v6;
  sub_100C683C8(y);
  v9 = v8;

  v10 = y + v9;
  v11 = v7;
  result.y = v10;
  result.x = v11;
  return result;
}

- (_TtC8Freeform26CRLCanvasDotGridBackground)initWithICC:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLCanvasBackground();
  return [(CRLCanvasBackground *)&v5 init];
}

- (void)snapDistanceForViewScale:(double)a1
{
  if (a1 <= 0.0)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 39;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "viewScale must be greater than 0", 32, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:39 isFatal:0 format:v23 args:v20];
  }
}

@end
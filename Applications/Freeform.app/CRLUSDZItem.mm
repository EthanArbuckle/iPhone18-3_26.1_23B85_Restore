@interface CRLUSDZItem
- (BOOL)placeHolderDataNeedsDownload;
- (CRLBezierPath)tracedPath;
- (CRLImageProvider)validatedPosterImageProvider;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSArray)generativePlaygroundImageItems;
- (NSString)previewTooltip;
- (_TtC8Freeform8CRLAsset)posterAssetPayload;
- (id)computeInfoGeometryForFittingIn:(CGRect)in;
- (id)promisedDataForPublicType:(id)type;
- (void)scaleDownSizeToFitWithinSize:(CGSize)size board:(id)board;
- (void)setAspectRatioLocked:;
@end

@implementation CRLUSDZItem

- (CRLBezierPath)tracedPath
{
  selfCopy = self;
  sub_1007FD9AC();
  v4 = v3;

  return v4;
}

- (CRLImageProvider)validatedPosterImageProvider
{
  selfCopy = self;
  sub_1007FDD4C();
  if (v3)
  {
    v4 = v3;
    sharedPool = [objc_opt_self() sharedPool];
    v6 = [sharedPool providerForAsset:v4 shouldValidate:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC8Freeform8CRLAsset)posterAssetPayload
{
  selfCopy = self;
  sub_1007FDD4C();
  v4 = v3;

  return v4;
}

- (id)computeInfoGeometryForFittingIn:(CGRect)in
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  selfCopy = self;
  v8 = sub_1007FE1A0(x, y, width, height);

  return v8;
}

- (NSString)previewTooltip
{
  sub_100802C18();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (Class)layoutClass
{
  type metadata accessor for CRLUSDZLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLUSDZRep(0);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLUSDZEditor();

  return swift_getObjCClassFromMetadata();
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  selfCopy = self;
  sub_100801BF4();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)promisedDataForPublicType:(id)type
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  selfCopy = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100D8D944(v8);
  v13 = v12;

  (*(v6 + 8))(v8, v5);
  v14 = 0;
  if (v13 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100025870(v11, v13);
    v14 = isa;
  }

  return v14;
}

- (BOOL)placeHolderDataNeedsDownload
{
  selfCopy = self;
  sub_1007FDD4C();
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v5 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    v6 = v3;
    sub_100020E58(&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v4);
    v7 = (*(v5 + 64))(v4, v5);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)size board:(id)board
{
  boardCopy = board;
  selfCopy = self;
  sub_100802CE4();
}

- (void)setAspectRatioLocked:
{
  v0 = objc_opt_self();
  _atomicIncrementAssertCount = [v0 _atomicIncrementAssertCount];
  v23 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v23);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  lastPathComponent = [v3 lastPathComponent];

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
  *(inited + 32) = _atomicIncrementAssertCount;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 272;
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

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:272 isFatal:0 format:v22 args:v19];
}

- (NSArray)generativePlaygroundImageItems
{
  sub_1005B981C(&unk_1019F4D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101465920;
  *(v3 + 32) = self;
  type metadata accessor for CRLBoardItem(0);
  selfCopy = self;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end
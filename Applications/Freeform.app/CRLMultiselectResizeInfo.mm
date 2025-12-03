@interface CRLMultiselectResizeInfo
- (CRLCanvasElementInfo)parentInfo;
- (Class)layoutClass;
- (Class)repClass;
- (NSSet)representedSelectedBoardItems;
- (_TtC8Freeform24CRLMultiselectResizeInfo)init;
- (_TtC8Freeform24CRLMultiselectResizeInfo)initWithParentInfo:(id)info;
- (void)setGeometry:(id)geometry;
- (void)setParentInfo:(id)info;
- (void)setRepresentedSelectedBoardItems:(id)items currentlyLaidOutWith:(id)with;
@end

@implementation CRLMultiselectResizeInfo

- (_TtC8Freeform24CRLMultiselectResizeInfo)initWithParentInfo:(id)info
{
  swift_unknownObjectRetain();
  v4 = sub_100931358(info);
  swift_unknownObjectRelease();
  return v4;
}

- (CRLCanvasElementInfo)parentInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setParentInfo:(id)info
{
  *(self + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_parentInfo) = info;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setGeometry:(id)geometry
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_geometry);
  *(self + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_geometry) = geometry;
  geometryCopy = geometry;
}

- (Class)layoutClass
{
  sub_100006370(0, &unk_101A09280);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  result = *(self + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_repClass);
  if (result)
  {
    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (void)setRepresentedSelectedBoardItems:(id)items currentlyLaidOutWith:(id)with
{
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  withCopy = with;
  selfCopy = self;
  sub_1009310A4(v6, withCopy);
}

- (NSSet)representedSelectedBoardItems
{
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform24CRLMultiselectResizeInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
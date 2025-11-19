@interface CRLSurfaceUnknownInfo
- (CRLCanvasElementInfo)parentInfo;
- (CRLCanvasInfoGeometry)geometry;
- (Class)layoutClass;
- (Class)repClass;
- (_TtC8Freeform21CRLSurfaceUnknownInfo)init;
- (void)setParentInfo:(id)a3;
@end

@implementation CRLSurfaceUnknownInfo

- (CRLCanvasInfoGeometry)geometry
{
  v2 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLSurfaceUnknownInfo_underlyingItem)) + 0xE0);
  v3 = self;
  v4 = v2();

  return v4;
}

- (CRLCanvasElementInfo)parentInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setParentInfo:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLSurfaceUnknownInfo_parentInfo) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (Class)layoutClass
{
  type metadata accessor for CRLUnknownLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLUnknownRep();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8Freeform21CRLSurfaceUnknownInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
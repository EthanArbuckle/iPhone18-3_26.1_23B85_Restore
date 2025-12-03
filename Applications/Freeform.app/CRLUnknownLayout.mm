@interface CRLUnknownLayout
- (Class)repClassOverride;
- (_TtC8Freeform16CRLUnknownLayout)initWithInfo:(id)info;
@end

@implementation CRLUnknownLayout

- (Class)repClassOverride
{
  type metadata accessor for CRLUnknownRep();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8Freeform16CRLUnknownLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLUnknownLayout();
  swift_unknownObjectRetain();
  v4 = [(CRLCanvasLayout *)&v6 initWithInfo:info];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end
@interface CRLSurfaceLayout
- (CGSize)minimumSize;
- (_TtC8Freeform16CRLSurfaceLayout)initWithInfo:(id)info;
@end

@implementation CRLSurfaceLayout

- (CGSize)minimumSize
{
  v2 = 250.0;
  v3 = 140.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform16CRLSurfaceLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLSurfaceLayout();
  swift_unknownObjectRetain();
  v4 = [(CRLCanvasLayout *)&v6 initWithInfo:info];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end
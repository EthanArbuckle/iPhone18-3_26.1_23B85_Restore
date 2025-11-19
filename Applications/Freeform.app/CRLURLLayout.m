@interface CRLURLLayout
- (CGSize)minimumSize;
- (_TtC8Freeform12CRLURLLayout)initWithInfo:(id)a3;
@end

@implementation CRLURLLayout

- (CGSize)minimumSize
{
  v2 = 150.0;
  v3 = 150.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform12CRLURLLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLURLLayout();
  swift_unknownObjectRetain();
  v4 = [(CRLCanvasLayout *)&v6 initWithInfo:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end
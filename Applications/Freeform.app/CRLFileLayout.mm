@interface CRLFileLayout
- (CGSize)minimumSize;
- (_TtC8Freeform13CRLFileLayout)initWithInfo:(id)info;
@end

@implementation CRLFileLayout

- (CGSize)minimumSize
{
  v2 = 150.0;
  v3 = 150.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform13CRLFileLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLFileLayout();
  swift_unknownObjectRetain();
  v4 = [(CRLCanvasLayout *)&v6 initWithInfo:info];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end
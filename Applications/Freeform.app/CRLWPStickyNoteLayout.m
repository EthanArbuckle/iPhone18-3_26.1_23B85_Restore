@interface CRLWPStickyNoteLayout
- (CGSize)minimumSize;
- (CRLFill)instructionalTextCharacterFill;
- (_TtC8Freeform21CRLWPStickyNoteLayout)initWithInfo:(id)a3;
@end

@implementation CRLWPStickyNoteLayout

- (CGSize)minimumSize
{
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CRLFill)instructionalTextCharacterFill
{
  v2 = [objc_allocWithZone(CRLColorFill) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.25];

  return v2;
}

- (_TtC8Freeform21CRLWPStickyNoteLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLWPStickyNoteLayout();
  swift_unknownObjectRetain();
  v4 = [(CRLWPShapeLayout *)&v6 initWithInfo:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end
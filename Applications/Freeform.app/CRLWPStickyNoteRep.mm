@interface CRLWPStickyNoteRep
- (CGImage)newShadowImageWithSize:(CGSize)size shadow:(id)shadow drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (_TtC8Freeform18CRLWPStickyNoteRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)becameNotSelected;
- (void)becameSelected;
@end

@implementation CRLWPStickyNoteRep

- (void)becameSelected
{
  selfCopy = self;
  sub_100689C20();
}

- (void)becameNotSelected
{
  selfCopy = self;
  sub_100689E6C();
}

- (CGImage)newShadowImageWithSize:(CGSize)size shadow:(id)shadow drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  height = size.height;
  width = size.width;
  shadowCopy = shadow;
  selfCopy = self;
  layout = [(CRLCanvasRep *)selfCopy layout];
  geometryInRoot = [(CRLCanvasAbstractLayout *)layout geometryInRoot];

  v15 = shadowCopy;
  v16 = selfCopy;
  v17 = sub_10068A810(geometryInRoot, v15, selector, unflipped, v16, v15, selector, unflipped, width, height);

  return v17;
}

- (_TtC8Freeform18CRLWPStickyNoteRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLWPStickyNoteRep();
  return [(CRLWPShapeRep *)&v7 initWithLayout:layout canvas:canvas];
}

@end
@interface CRLWPStickyNoteRep
- (CGImage)newShadowImageWithSize:(CGSize)a3 shadow:(id)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (_TtC8Freeform18CRLWPStickyNoteRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)becameNotSelected;
- (void)becameSelected;
@end

@implementation CRLWPStickyNoteRep

- (void)becameSelected
{
  v2 = self;
  sub_100689C20();
}

- (void)becameNotSelected
{
  v2 = self;
  sub_100689E6C();
}

- (CGImage)newShadowImageWithSize:(CGSize)a3 shadow:(id)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a4;
  v12 = self;
  v13 = [(CRLCanvasRep *)v12 layout];
  v14 = [(CRLCanvasAbstractLayout *)v13 geometryInRoot];

  v15 = v11;
  v16 = v12;
  v17 = sub_10068A810(v14, v15, a5, a6, v16, v15, a5, a6, width, height);

  return v17;
}

- (_TtC8Freeform18CRLWPStickyNoteRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLWPStickyNoteRep();
  return [(CRLWPShapeRep *)&v7 initWithLayout:a3 canvas:a4];
}

@end
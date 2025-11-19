@interface TiledTextView
- (PKLinedPaper)linedPaper;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6;
- (void)_canvasView:(id)a3 didCompleteRefinementEntry:(id)a4;
- (void)didMoveToWindow;
- (void)setLinedPaper:(id)a3;
@end

@implementation TiledTextView

- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = a3;
  v11 = specialized TiledTextView.init(in:sixChannelBlending:defaultDrawing:readOnly:)(v10, a4, ObjCClassMetadata, a6);

  return v11;
}

- (void)setLinedPaper:(id)a3
{
  v4 = a3;
  v5 = self;
  TiledTextView.linedPaper.setter(v4);
}

- (void)didMoveToWindow
{
  v2 = self;
  TiledTextView.didMoveToWindow()();
}

- (PKLinedPaper)linedPaper
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13TiledTextView_paperLinedPaper);
  if (v2)
  {
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13TiledTextView_paperLinedPaper);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for TiledTextView();
    v3 = [(PKTiledView *)&v6 linedPaper];
    v2 = 0;
  }

  v4 = v2;

  return v3;
}

- (void)_canvasView:(id)a3 didCompleteRefinementEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized TiledTextView._canvasView(_:didCompleteRefinementEntry:)(v7);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  TiledTextView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end
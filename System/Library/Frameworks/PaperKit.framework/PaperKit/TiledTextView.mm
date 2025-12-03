@interface TiledTextView
- (PKLinedPaper)linedPaper;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only;
- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry;
- (void)didMoveToWindow;
- (void)setLinedPaper:(id)paper;
@end

@implementation TiledTextView

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  viewCopy = view;
  v11 = specialized TiledTextView.init(in:sixChannelBlending:defaultDrawing:readOnly:)(viewCopy, blending, ObjCClassMetadata, only);

  return v11;
}

- (void)setLinedPaper:(id)paper
{
  paperCopy = paper;
  selfCopy = self;
  TiledTextView.linedPaper.setter(paperCopy);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  TiledTextView.didMoveToWindow()();
}

- (PKLinedPaper)linedPaper
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13TiledTextView_paperLinedPaper);
  if (v2)
  {
    linedPaper = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13TiledTextView_paperLinedPaper);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for TiledTextView();
    linedPaper = [(PKTiledView *)&v6 linedPaper];
    v2 = 0;
  }

  v4 = v2;

  return linedPaper;
}

- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry
{
  viewCopy = view;
  entryCopy = entry;
  selfCopy = self;
  specialized TiledTextView._canvasView(_:didCompleteRefinementEntry:)(entryCopy);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  TiledTextView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end
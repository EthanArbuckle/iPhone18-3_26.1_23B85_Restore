@interface CRLConnectionLineKnob
- (_TtC8Freeform21CRLConnectionLineKnob)initWithImage:(id)a3 highlightedImage:(id)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7;
- (id)createKnobRenderable;
- (void)cursorEnteredKnobAtPoint:(CGPoint)a3 withPlatformObject:(id)a4;
- (void)cursorExitedKnobAtPoint:(CGPoint)a3 withPlatformObject:(id)a4;
- (void)didCreateKnobRenderable;
- (void)updateRenderableImage;
@end

@implementation CRLConnectionLineKnob

- (void)updateRenderableImage
{
  v2 = self;
  sub_100D6BEB0();
}

- (id)createKnobRenderable
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 renderable];
  v6 = [(CRLCanvasButtonKnob *)v4 knobImage];
  if (v6)
  {
    v7 = v6;
    [v6 size];
  }

  [v5 setBounds:sub_10011ECB4()];

  return v5;
}

- (void)didCreateKnobRenderable
{
  v2 = self;
  sub_100D6C074();
}

- (void)cursorEnteredKnobAtPoint:(CGPoint)a3 withPlatformObject:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  sub_100D6C190(a4, x, y);
}

- (void)cursorExitedKnobAtPoint:(CGPoint)a3 withPlatformObject:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  sub_100D6C314(a4, x, y);
}

- (_TtC8Freeform21CRLConnectionLineKnob)initWithImage:(id)a3 highlightedImage:(id)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
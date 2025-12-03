@interface CRLConnectionLineKnob
- (_TtC8Freeform21CRLConnectionLineKnob)initWithImage:(id)image highlightedImage:(id)highlightedImage radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (id)createKnobRenderable;
- (void)cursorEnteredKnobAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)cursorExitedKnobAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)didCreateKnobRenderable;
- (void)updateRenderableImage;
@end

@implementation CRLConnectionLineKnob

- (void)updateRenderableImage
{
  selfCopy = self;
  sub_100D6BEB0();
}

- (id)createKnobRenderable
{
  v3 = objc_opt_self();
  selfCopy = self;
  renderable = [v3 renderable];
  knobImage = [(CRLCanvasButtonKnob *)selfCopy knobImage];
  if (knobImage)
  {
    v7 = knobImage;
    [knobImage size];
  }

  [renderable setBounds:sub_10011ECB4()];

  return renderable;
}

- (void)didCreateKnobRenderable
{
  selfCopy = self;
  sub_100D6C074();
}

- (void)cursorEnteredKnobAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  selfCopy = self;
  sub_100D6C190(object, x, y);
}

- (void)cursorExitedKnobAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  selfCopy = self;
  sub_100D6C314(object, x, y);
}

- (_TtC8Freeform21CRLConnectionLineKnob)initWithImage:(id)image highlightedImage:(id)highlightedImage radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
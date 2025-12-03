@interface CRLCanvasDotGridBackgroundView
+ (Class)layerClass;
- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithCoder:(id)coder;
- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation CRLCanvasDotGridBackgroundView

- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLCanvasDotGridBackgroundView();
  height = [(CRLCanvasBackgroundView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  whiteColor = [v8 whiteColor];
  [(CRLCanvasDotGridBackgroundView *)v9 setBackgroundColor:whiteColor];

  return v9;
}

- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  type metadata accessor for CRLCanvasDotGridLayer();

  return swift_getObjCClassFromMetadata();
}

@end
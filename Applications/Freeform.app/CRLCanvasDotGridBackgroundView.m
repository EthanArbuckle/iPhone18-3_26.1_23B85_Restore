@interface CRLCanvasDotGridBackgroundView
+ (Class)layerClass;
- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithCoder:(id)a3;
- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation CRLCanvasDotGridBackgroundView

- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLCanvasDotGridBackgroundView();
  v7 = [(CRLCanvasBackgroundView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 whiteColor];
  [(CRLCanvasDotGridBackgroundView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC8Freeform30CRLCanvasDotGridBackgroundView)initWithCoder:(id)a3
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
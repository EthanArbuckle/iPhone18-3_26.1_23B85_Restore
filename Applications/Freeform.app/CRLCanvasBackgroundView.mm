@interface CRLCanvasBackgroundView
+ (Class)layerClass;
- (_TtC8Freeform23CRLCanvasBackgroundView)initWithCoder:(id)a3;
- (_TtC8Freeform23CRLCanvasBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation CRLCanvasBackgroundView

- (_TtC8Freeform23CRLCanvasBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLCanvasBackgroundView();
  return [(CRLCanvasBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform23CRLCanvasBackgroundView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  type metadata accessor for CRLCanvasBackgroundLayer();

  return swift_getObjCClassFromMetadata();
}

@end
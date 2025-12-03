@interface CRLCanvasBackgroundView
+ (Class)layerClass;
- (_TtC8Freeform23CRLCanvasBackgroundView)initWithCoder:(id)coder;
- (_TtC8Freeform23CRLCanvasBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation CRLCanvasBackgroundView

- (_TtC8Freeform23CRLCanvasBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLCanvasBackgroundView();
  return [(CRLCanvasBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform23CRLCanvasBackgroundView)initWithCoder:(id)coder
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
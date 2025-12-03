@interface CRLShadowView
+ (Class)layerClass;
- (_TtC8Freeform13CRLShadowView)initWithFrame:(CGRect)frame;
@end

@implementation CRLShadowView

- (_TtC8Freeform13CRLShadowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLShadowView();
  return [(CRLShadowView *)&v8 initWithFrame:x, y, width, height];
}

+ (Class)layerClass
{
  type metadata accessor for CRLShadowLayer();

  return swift_getObjCClassFromMetadata();
}

@end
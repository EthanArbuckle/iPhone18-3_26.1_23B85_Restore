@interface CRLShadowView
+ (Class)layerClass;
- (_TtC8Freeform13CRLShadowView)initWithFrame:(CGRect)a3;
@end

@implementation CRLShadowView

- (_TtC8Freeform13CRLShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
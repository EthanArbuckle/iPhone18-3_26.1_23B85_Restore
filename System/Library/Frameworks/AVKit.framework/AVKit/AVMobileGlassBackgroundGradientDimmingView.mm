@interface AVMobileGlassBackgroundGradientDimmingView
+ (Class)layerClass;
- (AVMobileGlassBackgroundGradientDimmingView)initWithCoder:(id)a3;
- (AVMobileGlassBackgroundGradientDimmingView)initWithFrame:(CGRect)a3;
@end

@implementation AVMobileGlassBackgroundGradientDimmingView

+ (Class)layerClass
{
  sub_18B4AC60C(0, &qword_1EA9C5628);

  return swift_getObjCClassFromMetadata();
}

- (AVMobileGlassBackgroundGradientDimmingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVMobileGlassBackgroundGradientDimmingView();
  return [(AVMobileGlassBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

- (AVMobileGlassBackgroundGradientDimmingView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVMobileGlassBackgroundGradientDimmingView();
  v4 = a3;
  v5 = [(AVMobileGlassBackgroundView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
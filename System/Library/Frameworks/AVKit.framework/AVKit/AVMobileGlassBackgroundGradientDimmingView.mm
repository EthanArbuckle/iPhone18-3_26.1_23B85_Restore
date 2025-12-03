@interface AVMobileGlassBackgroundGradientDimmingView
+ (Class)layerClass;
- (AVMobileGlassBackgroundGradientDimmingView)initWithCoder:(id)coder;
- (AVMobileGlassBackgroundGradientDimmingView)initWithFrame:(CGRect)frame;
@end

@implementation AVMobileGlassBackgroundGradientDimmingView

+ (Class)layerClass
{
  sub_18B4AC60C(0, &qword_1EA9C5628);

  return swift_getObjCClassFromMetadata();
}

- (AVMobileGlassBackgroundGradientDimmingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVMobileGlassBackgroundGradientDimmingView();
  return [(AVMobileGlassBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

- (AVMobileGlassBackgroundGradientDimmingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVMobileGlassBackgroundGradientDimmingView();
  coderCopy = coder;
  v5 = [(AVMobileGlassBackgroundView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
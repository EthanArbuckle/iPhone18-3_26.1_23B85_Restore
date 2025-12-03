@interface AVMobileGlassBackgroundDimmingView
- (AVMobileGlassBackgroundDimmingView)initWithCoder:(id)coder;
- (AVMobileGlassBackgroundDimmingView)initWithFrame:(CGRect)frame;
@end

@implementation AVMobileGlassBackgroundDimmingView

- (AVMobileGlassBackgroundDimmingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVMobileGlassBackgroundDimmingView();
  return [(AVMobileGlassBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

- (AVMobileGlassBackgroundDimmingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVMobileGlassBackgroundDimmingView();
  coderCopy = coder;
  v5 = [(AVMobileGlassBackgroundView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
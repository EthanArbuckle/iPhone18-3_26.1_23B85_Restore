@interface AUDistortionView
- (CGRect)bounds;
- (void)removeFromSuperview;
- (void)setBounds:(CGRect)bounds;
@end

@implementation AUDistortionView

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_23712517C();
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUDistortionView();
  [(AUDistortionView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_237125604(x, y, width, height);
}

@end
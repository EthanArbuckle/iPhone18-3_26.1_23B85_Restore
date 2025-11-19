@interface AUDistortionView
- (CGRect)bounds;
- (void)removeFromSuperview;
- (void)setBounds:(CGRect)a3;
@end

@implementation AUDistortionView

- (void)removeFromSuperview
{
  v2 = self;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_237125604(x, y, width, height);
}

@end
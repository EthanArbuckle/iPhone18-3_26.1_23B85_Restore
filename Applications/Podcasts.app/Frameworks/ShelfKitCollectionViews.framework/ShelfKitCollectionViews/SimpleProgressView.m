@interface SimpleProgressView
- (void)drawRect:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation SimpleProgressView

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SimpleProgressView *)&v3 tintColorDidChange];
  [v2 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_2AC1A8(x, y, width, height);
}

@end
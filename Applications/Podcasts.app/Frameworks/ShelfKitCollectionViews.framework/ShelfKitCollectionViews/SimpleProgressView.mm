@interface SimpleProgressView
- (void)drawRect:(CGRect)rect;
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_2AC1A8(x, y, width, height);
}

@end
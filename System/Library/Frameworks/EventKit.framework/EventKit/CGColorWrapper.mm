@interface CGColorWrapper
- (CGColorWrapper)initWithCGColor:(CGColor *)color;
- (void)dealloc;
@end

@implementation CGColorWrapper

- (CGColorWrapper)initWithCGColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = CGColorWrapper;
  v4 = [(CGColorWrapper *)&v6 init];
  if (v4)
  {
    v4->_color = CGColorRetain(color);
  }

  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = CGColorWrapper;
  [(CGColorWrapper *)&v3 dealloc];
}

@end
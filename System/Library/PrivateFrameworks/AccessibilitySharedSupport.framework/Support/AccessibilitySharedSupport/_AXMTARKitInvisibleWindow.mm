@interface _AXMTARKitInvisibleWindow
- (_AXMTARKitInvisibleWindow)initWithFrame:(CGRect)frame;
@end

@implementation _AXMTARKitInvisibleWindow

- (_AXMTARKitInvisibleWindow)initWithFrame:(CGRect)frame
{
  v4 = [UIScreen mainScreen:frame.origin.x];
  v7.receiver = self;
  v7.super_class = _AXMTARKitInvisibleWindow;
  v5 = [(_AXMTARKitInvisibleWindow *)&v7 initWithScreen:v4];

  return v5;
}

@end
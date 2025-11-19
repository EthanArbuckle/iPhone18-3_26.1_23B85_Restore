@interface _AXMTARKitInvisibleWindow
- (_AXMTARKitInvisibleWindow)initWithFrame:(CGRect)a3;
@end

@implementation _AXMTARKitInvisibleWindow

- (_AXMTARKitInvisibleWindow)initWithFrame:(CGRect)a3
{
  v4 = [UIScreen mainScreen:a3.origin.x];
  v7.receiver = self;
  v7.super_class = _AXMTARKitInvisibleWindow;
  v5 = [(_AXMTARKitInvisibleWindow *)&v7 initWithScreen:v4];

  return v5;
}

@end
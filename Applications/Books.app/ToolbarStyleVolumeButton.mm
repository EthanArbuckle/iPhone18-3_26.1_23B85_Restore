@interface ToolbarStyleVolumeButton
- (_TtC5Books24ToolbarStyleVolumeButton)initWithFrame:(CGRect)a3;
@end

@implementation ToolbarStyleVolumeButton

- (_TtC5Books24ToolbarStyleVolumeButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ToolbarStyleButtonBase *)&v8 initWithFrame:x, y, width, height];
}

@end
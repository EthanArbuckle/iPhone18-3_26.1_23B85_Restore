@interface ToolbarStyleVolumeButton
- (_TtC5Books24ToolbarStyleVolumeButton)initWithFrame:(CGRect)frame;
@end

@implementation ToolbarStyleVolumeButton

- (_TtC5Books24ToolbarStyleVolumeButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ToolbarStyleButtonBase *)&v8 initWithFrame:x, y, width, height];
}

@end
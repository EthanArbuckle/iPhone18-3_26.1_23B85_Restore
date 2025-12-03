@interface ToolbarUIButton
- (_TtC5Books15ToolbarUIButton)initWithCoder:(id)coder;
- (_TtC5Books15ToolbarUIButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation ToolbarUIButton

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = _s5Books15ToolbarUIButtonC22contextMenuInteraction_016configurationForE10AtLocationSo09UIContextE13ConfigurationCSgSo0keF0C_So7CGPointVtF_0();

  return v7;
}

- (_TtC5Books15ToolbarUIButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ToolbarUIButton();
  return [(ToolbarUIButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books15ToolbarUIButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToolbarUIButton();
  coderCopy = coder;
  v5 = [(ToolbarUIButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
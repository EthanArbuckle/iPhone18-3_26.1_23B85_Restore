@interface ToolbarUIButton
- (_TtC5Books15ToolbarUIButton)initWithCoder:(id)a3;
- (_TtC5Books15ToolbarUIButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation ToolbarUIButton

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s5Books15ToolbarUIButtonC22contextMenuInteraction_016configurationForE10AtLocationSo09UIContextE13ConfigurationCSgSo0keF0C_So7CGPointVtF_0();

  return v7;
}

- (_TtC5Books15ToolbarUIButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ToolbarUIButton();
  return [(ToolbarUIButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books15ToolbarUIButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToolbarUIButton();
  v4 = a3;
  v5 = [(ToolbarUIButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
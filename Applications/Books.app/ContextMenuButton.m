@interface ContextMenuButton
- (_TtC5Books17ContextMenuButton)initWithCoder:(id)a3;
- (_TtC5Books17ContextMenuButton)initWithFrame:(CGRect)a3;
@end

@implementation ContextMenuButton

- (_TtC5Books17ContextMenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContextMenuButton();
  return [(ContextMenuButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Books17ContextMenuButton)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContextMenuButton();
  v5 = a3;
  v6 = [(ContextMenuButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end
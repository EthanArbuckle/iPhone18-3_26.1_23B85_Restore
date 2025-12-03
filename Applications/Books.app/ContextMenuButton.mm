@interface ContextMenuButton
- (_TtC5Books17ContextMenuButton)initWithCoder:(id)coder;
- (_TtC5Books17ContextMenuButton)initWithFrame:(CGRect)frame;
@end

@implementation ContextMenuButton

- (_TtC5Books17ContextMenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContextMenuButton();
  return [(ContextMenuButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Books17ContextMenuButton)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContextMenuButton();
  coderCopy = coder;
  v6 = [(ContextMenuButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
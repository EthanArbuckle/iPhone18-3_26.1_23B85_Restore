@interface ToolbarStyleButtonBase
- (_TtC5Books22ToolbarStyleButtonBase)initWithCoder:(id)a3;
- (void)didHover:(id)a3;
@end

@implementation ToolbarStyleButtonBase

- (_TtC5Books22ToolbarStyleButtonBase)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)didHover:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if ((v5 - 1) <= 3)
  {
    (*((swift_isaMask & v6->super.super.super.super.super.isa) + 0x80))((3u >> ((v5 - 1) & 0xF)) & 1);
  }
}

@end
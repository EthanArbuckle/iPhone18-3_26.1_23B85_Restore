@interface ToolbarStyleButtonBase
- (_TtC5Books22ToolbarStyleButtonBase)initWithCoder:(id)coder;
- (void)didHover:(id)hover;
@end

@implementation ToolbarStyleButtonBase

- (_TtC5Books22ToolbarStyleButtonBase)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  state = [hoverCopy state];
  if ((state - 1) <= 3)
  {
    (*((swift_isaMask & selfCopy->super.super.super.super.super.isa) + 0x80))((3u >> ((state - 1) & 0xF)) & 1);
  }
}

@end
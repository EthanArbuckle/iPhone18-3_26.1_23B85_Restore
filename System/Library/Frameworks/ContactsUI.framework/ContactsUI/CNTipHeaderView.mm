@interface CNTipHeaderView
- (BOOL)displaysBottomSeparator;
- (UIView)hostingView;
- (_TtC10ContactsUI15CNTipHeaderView)initWithCoder:(id)coder;
- (_TtC10ContactsUI15CNTipHeaderView)initWithFrame:(CGRect)frame;
- (void)setDisplaysBottomSeparator:(BOOL)separator;
- (void)setHostingView:(id)view;
@end

@implementation CNTipHeaderView

- (BOOL)displaysBottomSeparator
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDisplaysBottomSeparator:(BOOL)separator
{
  v5 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = separator;
  selfCopy = self;
  sub_199B88C80();
}

- (UIView)hostingView
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setHostingView:(id)view
{
  v5 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = view;
  viewCopy = view;
  selfCopy = self;

  sub_199B892B4();
}

- (_TtC10ContactsUI15CNTipHeaderView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView) = 0;
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (_TtC10ContactsUI15CNTipHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
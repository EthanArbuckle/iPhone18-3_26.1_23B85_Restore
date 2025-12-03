@interface QuickReplyItemButton
- (BOOL)isHighlighted;
- (_TtC8Business20QuickReplyItemButton)initWithCoder:(id)coder;
- (_TtC8Business20QuickReplyItemButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation QuickReplyItemButton

- (_TtC8Business20QuickReplyItemButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel) = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QuickReplyItemButton();
  return [(QuickReplyItemButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_10005FB74(highlighted);
}

- (_TtC8Business20QuickReplyItemButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
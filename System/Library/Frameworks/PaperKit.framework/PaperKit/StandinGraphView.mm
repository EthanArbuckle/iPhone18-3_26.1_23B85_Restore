@interface StandinGraphView
- (_TtC8PaperKit16StandinGraphView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation StandinGraphView

- (void)layoutSubviews
{
  selfCopy = self;
  StandinGraphView.layoutSubviews()();
}

- (_TtC8PaperKit16StandinGraphView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16StandinGraphView_label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16StandinGraphView_expressions) = MEMORY[0x1E69E7CC0];
  v3 = (self + OBJC_IVAR____TtC8PaperKit16StandinGraphView_range);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16StandinGraphView_isSelected) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
@interface PromptView
- (_TtC11Diagnostics10PromptView)initWithFrame:(CGRect)frame;
- (void)setInfoLabel:(id)label;
- (void)setInfoVerticalStackView:(id)view;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
@end

@implementation PromptView

- (void)setTitleLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel) = label;
  labelCopy = label;
}

- (void)setSubtitleLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel) = label;
  labelCopy = label;
}

- (void)setInfoVerticalStackView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) = view;
  viewCopy = view;
}

- (void)setInfoLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel) = label;
  labelCopy = label;
}

- (_TtC11Diagnostics10PromptView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
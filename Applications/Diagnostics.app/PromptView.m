@interface PromptView
- (_TtC11Diagnostics10PromptView)initWithFrame:(CGRect)a3;
- (void)setInfoLabel:(id)a3;
- (void)setInfoVerticalStackView:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation PromptView

- (void)setTitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel) = a3;
  v3 = a3;
}

- (void)setSubtitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel) = a3;
  v3 = a3;
}

- (void)setInfoVerticalStackView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) = a3;
  v3 = a3;
}

- (void)setInfoLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel) = a3;
  v3 = a3;
}

- (_TtC11Diagnostics10PromptView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
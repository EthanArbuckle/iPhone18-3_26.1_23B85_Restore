@interface ConfirmDetailsLearnMoreView
- (_TtC5Heart27ConfirmDetailsLearnMoreView)initWithCoder:(id)coder;
- (_TtC5Heart27ConfirmDetailsLearnMoreView)initWithFrame:(CGRect)frame;
- (void)learnMoreTapped;
@end

@implementation ConfirmDetailsLearnMoreView

- (_TtC5Heart27ConfirmDetailsLearnMoreView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (void)learnMoreTapped
{
  selfCopy = self;
  sub_29D6D34D0();
}

- (_TtC5Heart27ConfirmDetailsLearnMoreView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface SenseRow
- (UIImageView)checkmark;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (_TtC17SequoiaTranslator8SenseRow)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator8SenseRow)initWithFrame:(CGRect)frame;
- (void)setCheckmark:(id)checkmark;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
@end

@implementation SenseRow

- (UILabel)titleLabel
{
  selfCopy = self;
  v3 = sub_1002267C4();

  return v3;
}

- (void)setTitleLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel) = label;
  labelCopy = label;
}

- (UILabel)subtitleLabel
{
  selfCopy = self;
  v3 = sub_10022696C();

  return v3;
}

- (void)setSubtitleLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel) = label;
  labelCopy = label;
}

- (UIImageView)checkmark
{
  selfCopy = self;
  v3 = sub_100226B28();

  return v3;
}

- (void)setCheckmark:(id)checkmark
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark) = checkmark;
  checkmarkCopy = checkmark;
}

- (_TtC17SequoiaTranslator8SenseRow)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmarkImage) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator8SenseRow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
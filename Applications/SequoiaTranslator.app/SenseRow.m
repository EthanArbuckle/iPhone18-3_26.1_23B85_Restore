@interface SenseRow
- (UIImageView)checkmark;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (_TtC17SequoiaTranslator8SenseRow)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator8SenseRow)initWithFrame:(CGRect)a3;
- (void)setCheckmark:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation SenseRow

- (UILabel)titleLabel
{
  v2 = self;
  v3 = sub_1002267C4();

  return v3;
}

- (void)setTitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel) = a3;
  v3 = a3;
}

- (UILabel)subtitleLabel
{
  v2 = self;
  v3 = sub_10022696C();

  return v3;
}

- (void)setSubtitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel) = a3;
  v3 = a3;
}

- (UIImageView)checkmark
{
  v2 = self;
  v3 = sub_100226B28();

  return v3;
}

- (void)setCheckmark:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark) = a3;
  v3 = a3;
}

- (_TtC17SequoiaTranslator8SenseRow)initWithCoder:(id)a3
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

- (_TtC17SequoiaTranslator8SenseRow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
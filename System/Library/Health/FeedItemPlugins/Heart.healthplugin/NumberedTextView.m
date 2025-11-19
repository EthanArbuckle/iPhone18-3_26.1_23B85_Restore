@interface NumberedTextView
- (_TtC5Heart16NumberedTextView)initWithCoder:(id)a3;
- (_TtC5Heart16NumberedTextView)initWithFrame:(CGRect)a3;
@end

@implementation NumberedTextView

- (_TtC5Heart16NumberedTextView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Heart16NumberedTextView_title);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (_TtC5Heart16NumberedTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
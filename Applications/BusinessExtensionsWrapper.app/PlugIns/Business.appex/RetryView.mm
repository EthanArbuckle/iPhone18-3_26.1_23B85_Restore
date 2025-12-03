@interface RetryView
- (_TtC8Business9RetryView)initWithCoder:(id)coder;
- (_TtC8Business9RetryView)initWithFrame:(CGRect)frame;
- (void)retryLoadingBundle;
@end

@implementation RetryView

- (_TtC8Business9RetryView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton) = 0;
  *&self->$__lazy_storage_$_messageLabel[OBJC_IVAR____TtC8Business9RetryView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)retryLoadingBundle
{
  selfCopy = self;
  sub_100092A40();
}

- (_TtC8Business9RetryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
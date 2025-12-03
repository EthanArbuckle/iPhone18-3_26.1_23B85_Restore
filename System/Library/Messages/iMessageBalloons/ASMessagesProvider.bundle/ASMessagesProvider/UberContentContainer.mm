@interface UberContentContainer
- (_TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation UberContentContainer

- (_TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY) = 0;
  v3 = self + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride;
  *v3 = 0;
  v3[8] = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1F94EC();
}

- (_TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
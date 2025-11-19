@interface MediaView
- (UIColor)backgroundColor;
- (_TtC18ASMessagesProvider9MediaView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider9MediaView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  v2 = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1F7EBC(a3);
}

- (_TtC18ASMessagesProvider9MediaView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1F8910();
}

- (_TtC18ASMessagesProvider9MediaView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
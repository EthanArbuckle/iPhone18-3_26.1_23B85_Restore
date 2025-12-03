@interface MediaView
- (UIColor)backgroundColor;
- (_TtC18ASMessagesProvider9MediaView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider9MediaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  backgroundColor = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1F7EBC(color);
}

- (_TtC18ASMessagesProvider9MediaView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1F8910();
}

- (_TtC18ASMessagesProvider9MediaView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
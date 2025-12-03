@interface PlatformSelectorView
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel;
- (_TtC22SubscribePageExtension20PlatformSelectorView)initWithCoder:(id)coder;
- (void)didTapSelectorView;
- (void)layoutSubviews;
- (void)smartInvertDidChange;
@end

@implementation PlatformSelectorView

- (_TtC22SubscribePageExtension20PlatformSelectorView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)smartInvertDidChange
{
  selfCopy = self;
  sub_1003FC0B4();
}

- (void)didTapSelectorView
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003FC7C0();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel
{
  selfCopy = self;
  v3 = sub_1003FCE68();

  return v3;
}

@end
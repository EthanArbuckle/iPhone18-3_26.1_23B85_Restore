@interface PlatformSelectorView
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel;
- (_TtC20ProductPageExtension20PlatformSelectorView)initWithCoder:(id)coder;
- (void)didTapSelectorView;
- (void)layoutSubviews;
- (void)smartInvertDidChange;
@end

@implementation PlatformSelectorView

- (_TtC20ProductPageExtension20PlatformSelectorView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)smartInvertDidChange
{
  selfCopy = self;
  sub_100508D8C();
}

- (void)didTapSelectorView
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100509498();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel
{
  selfCopy = self;
  v3 = sub_100509B40();

  return v3;
}

@end
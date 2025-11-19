@interface PlatformSelectorView
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel;
- (_TtC8AppStore20PlatformSelectorView)initWithCoder:(id)a3;
- (void)didTapSelectorView;
- (void)layoutSubviews;
- (void)smartInvertDidChange;
@end

@implementation PlatformSelectorView

- (_TtC8AppStore20PlatformSelectorView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)smartInvertDidChange
{
  v2 = self;
  sub_1000C9724();
}

- (void)didTapSelectorView
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000C9E30();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel
{
  v2 = self;
  v3 = sub_1000CA4D8();

  return v3;
}

@end
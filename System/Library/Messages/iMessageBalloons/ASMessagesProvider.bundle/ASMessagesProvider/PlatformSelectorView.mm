@interface PlatformSelectorView
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel;
- (_TtC18ASMessagesProvider20PlatformSelectorView)initWithCoder:(id)coder;
- (void)didTapSelectorView;
- (void)layoutSubviews;
- (void)smartInvertDidChange;
@end

@implementation PlatformSelectorView

- (_TtC18ASMessagesProvider20PlatformSelectorView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)smartInvertDidChange
{
  selfCopy = self;
  sub_4C3A90();
}

- (void)didTapSelectorView
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4C419C();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityDescriptionLabel
{
  selfCopy = self;
  v3 = sub_4C4844();

  return v3;
}

@end
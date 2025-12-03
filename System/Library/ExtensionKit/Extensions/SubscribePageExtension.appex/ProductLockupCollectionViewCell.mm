@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)developerLabelTapped:(id)tapped;
- (void)layoutDirectionDidChanged;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)taglineLabelTapped:(id)tapped;
- (void)userInterfaceStyleDidChanged;
@end

@implementation ProductLockupCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10024536C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10026B188();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10026E23C(attributesCopy);
}

- (void)developerLabelTapped:(id)tapped
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (void)taglineLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100273EAC();
}

- (void)layoutDirectionDidChanged
{
  selfCopy = self;
  sub_10024A0FC(selfCopy, selfCopy);
}

- (void)userInterfaceStyleDidChanged
{
  selfCopy = self;
  sub_1002690AC();
  sub_100269300();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView
{
  v2 = sub_100268C3C();

  return v2;
}

@end
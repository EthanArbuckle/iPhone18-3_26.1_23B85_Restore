@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)developerLabelTapped:(id)tapped;
- (void)layoutDirectionDidChanged;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)taglineLabelTapped:(id)tapped;
- (void)userInterfaceStyleDidChanged;
@end

@implementation ProductLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100303990();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_100306A44(attributesCopy);
}

- (void)developerLabelTapped:(id)tapped
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

- (void)taglineLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10030CA7C();
}

- (void)layoutDirectionDidChanged
{
  selfCopy = self;
  sub_100650B98(selfCopy, selfCopy);
}

- (void)userInterfaceStyleDidChanged
{
  selfCopy = self;
  sub_100301614();
  sub_100301868();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView
{
  v2 = sub_1003010E8();

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10064B7C4();
}

@end
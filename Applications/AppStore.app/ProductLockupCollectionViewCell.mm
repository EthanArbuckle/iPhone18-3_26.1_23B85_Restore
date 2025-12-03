@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC8AppStore9VideoView)accessibilityVideoView;
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
  sub_1000D1F1C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10042C2D8();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10042F38C(attributesCopy);
}

- (void)developerLabelTapped:(id)tapped
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

- (void)taglineLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100435978();
}

- (void)layoutDirectionDidChanged
{
  selfCopy = self;
  sub_1000D6CD4(selfCopy, selfCopy);
}

- (void)userInterfaceStyleDidChanged
{
  selfCopy = self;
  sub_10042A1FC();
  sub_10042A450();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel
{
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (_TtC8AppStore9VideoView)accessibilityVideoView
{
  v2 = sub_100429D8C();

  return v2;
}

@end
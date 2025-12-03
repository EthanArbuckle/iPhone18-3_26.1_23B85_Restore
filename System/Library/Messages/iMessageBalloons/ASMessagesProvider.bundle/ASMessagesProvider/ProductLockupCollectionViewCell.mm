@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
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
  sub_2D49F0();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_2D7AA4(attributesCopy);
}

- (void)developerLabelTapped:(id)tapped
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (void)taglineLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2DE18C();
}

- (void)layoutDirectionDidChanged
{
  selfCopy = self;
  sub_62F1C8(selfCopy, selfCopy);
}

- (void)userInterfaceStyleDidChanged
{
  selfCopy = self;
  sub_2D2674();
  sub_2D28C8();
}

- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  v2 = sub_2D2148();

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_629DF4();
}

@end
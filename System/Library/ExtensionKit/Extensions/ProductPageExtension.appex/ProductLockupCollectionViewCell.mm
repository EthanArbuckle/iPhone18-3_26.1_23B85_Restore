@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)applyLayoutAttributes:(id)a3;
- (void)developerLabelTapped:(id)a3;
- (void)layoutDirectionDidChanged;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)taglineLabelTapped:(id)a3;
- (void)userInterfaceStyleDidChanged;
@end

@implementation ProductLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100303990();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100306A44(v4);
}

- (void)developerLabelTapped:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

- (void)taglineLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10030CA7C();
}

- (void)layoutDirectionDidChanged
{
  v2 = self;
  sub_100650B98(v2, v2);
}

- (void)userInterfaceStyleDidChanged
{
  v2 = self;
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
  v2 = self;
  sub_10064B7C4();
}

@end
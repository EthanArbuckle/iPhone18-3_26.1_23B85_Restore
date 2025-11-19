@interface ProductLockupCollectionViewCell
- (_TtC11AppStoreKit16DynamicTypeLabel)accessibilityTertiaryTitleLabel;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
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
  sub_2D49F0();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2D7AA4(v4);
}

- (void)developerLabelTapped:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (void)taglineLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2DE18C();
}

- (void)layoutDirectionDidChanged
{
  v2 = self;
  sub_62F1C8(v2, v2);
}

- (void)userInterfaceStyleDidChanged
{
  v2 = self;
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
  v2 = self;
  sub_629DF4();
}

@end
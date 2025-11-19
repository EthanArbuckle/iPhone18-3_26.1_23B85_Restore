@interface HypertensionNotificationsStatusCollectionViewCell
- (void)linkTapped;
- (void)prepareForReuse;
@end

@implementation HypertensionNotificationsStatusCollectionViewCell

- (void)linkTapped
{
  v2 = self;
  sub_29D8C7220();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  v2 = v3.receiver;
  [(HypertensionNotificationsStatusCollectionViewCell *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel] setText_];
  [*&v2[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel] setText_];
  [*&v2[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView] setImage_];
}

@end
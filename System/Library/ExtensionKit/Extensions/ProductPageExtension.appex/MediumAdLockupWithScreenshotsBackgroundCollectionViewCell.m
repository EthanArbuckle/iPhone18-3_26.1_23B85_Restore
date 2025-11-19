@interface MediumAdLockupWithScreenshotsBackgroundCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MediumAdLockupWithScreenshotsBackgroundCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MediumAdLockupWithScreenshotsBackgroundCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MediumAdLockupWithScreenshotsBackgroundCollectionViewCell *)&v4 prepareForReuse];
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v2[v3] = 0;
}

@end
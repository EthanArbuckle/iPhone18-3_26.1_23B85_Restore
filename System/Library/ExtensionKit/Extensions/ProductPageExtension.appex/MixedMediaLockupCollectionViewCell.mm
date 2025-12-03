@interface MixedMediaLockupCollectionViewCell
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MixedMediaLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100225748();
}

- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v2 = v4.receiver;
  [(MixedMediaLockupCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  sub_10057EDF4();
}

@end
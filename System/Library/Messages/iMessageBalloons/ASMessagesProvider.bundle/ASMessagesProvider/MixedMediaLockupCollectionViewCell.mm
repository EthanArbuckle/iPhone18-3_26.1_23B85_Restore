@interface MixedMediaLockupCollectionViewCell
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MixedMediaLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_2B97B4();
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
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
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView];
  sub_55AFC4();
}

@end
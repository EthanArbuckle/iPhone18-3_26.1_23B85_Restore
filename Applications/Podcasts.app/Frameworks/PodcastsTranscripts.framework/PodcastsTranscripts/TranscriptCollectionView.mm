@interface TranscriptCollectionView
- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithCoder:(id)a3;
- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)_customScrollAnimation;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TranscriptCollectionView

- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_subscriptions) = &_swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator) = (&dword_0 + 1);
  result = sub_98758();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_6E96C(a4, x, y);

  return v10;
}

- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_customScrollAnimation
{
  v2 = sub_6F2A4();

  return v2;
}

@end
@interface TranscriptCollectionView
- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithCoder:(id)coder;
- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)_customScrollAnimation;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TranscriptCollectionView

- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_subscriptions) = &_swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator) = (&dword_0 + 1);
  result = sub_98758();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_6E96C(event, x, y);

  return v10;
}

- (_TtC19PodcastsTranscripts24TranscriptCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
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
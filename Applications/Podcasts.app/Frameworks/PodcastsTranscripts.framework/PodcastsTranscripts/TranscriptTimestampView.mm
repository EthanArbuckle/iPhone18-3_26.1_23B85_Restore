@interface TranscriptTimestampView
- (_TtC19PodcastsTranscripts23TranscriptTimestampView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation TranscriptTimestampView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TranscriptTimestampView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (_TtC19PodcastsTranscripts23TranscriptTimestampView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
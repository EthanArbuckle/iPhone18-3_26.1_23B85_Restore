@interface TranscriptTimestampView
- (_TtC19PodcastsTranscripts23TranscriptTimestampView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation TranscriptTimestampView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TranscriptTimestampView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (_TtC19PodcastsTranscripts23TranscriptTimestampView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
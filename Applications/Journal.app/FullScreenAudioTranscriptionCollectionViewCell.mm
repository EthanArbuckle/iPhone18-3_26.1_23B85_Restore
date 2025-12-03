@interface FullScreenAudioTranscriptionCollectionViewCell
- (_TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell)initWithCoder:(id)coder;
- (_TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)updateConstraints;
@end

@implementation FullScreenAudioTranscriptionCollectionViewCell

- (_TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_recordingViewModel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcriptionCoordinator) = 0;
  v8 = self + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_audioAsset;
  v9 = type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(FullScreenAssetCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_recordingViewModel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcriptionCoordinator) = 0;
  v3 = self + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_audioAsset;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_100193218();
}

@end
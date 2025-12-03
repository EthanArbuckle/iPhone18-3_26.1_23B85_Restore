@interface TranscriptWaitingImageView
- (CGSize)intrinsicContentSize;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithCoder:(id)coder;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithFrame:(CGRect)frame;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)image;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation TranscriptWaitingImageView

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  image = [(TranscriptWaitingImageView *)selfCopy image];
  if (image)
  {
    v4 = image;
    [image size];
    [v4 size];

    DebugData.init(name:)(v5);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = type metadata accessor for TranscriptWaitingImageView();
    [(TranscriptWaitingImageView *)&v12 intrinsicContentSize];
    v9 = v8;
    v11 = v10;

    v7 = v11;
    v6 = v9;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
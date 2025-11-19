@interface TranscriptWaitingImageView
- (CGSize)intrinsicContentSize;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithCoder:(id)a3;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithFrame:(CGRect)a3;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)a3;
- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation TranscriptWaitingImageView

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(TranscriptWaitingImageView *)v2 image];
  if (v3)
  {
    v4 = v3;
    [v3 size];
    [v4 size];

    DebugData.init(name:)(v5);
  }

  else
  {
    v12.receiver = v2;
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

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10VoiceMemos26TranscriptWaitingImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
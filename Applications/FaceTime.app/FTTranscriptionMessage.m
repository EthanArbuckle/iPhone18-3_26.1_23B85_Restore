@interface FTTranscriptionMessage
- (NSAttributedString)attributedText;
- (NSString)text;
- (_TtC8FaceTime22FTTranscriptionMessage)init;
@end

@implementation FTTranscriptionMessage

- (NSAttributedString)attributedText
{
  v2 = self;
  Transcript.text.getter();
  v3 = objc_allocWithZone(NSAttributedString);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithString:v4];

  return v5;
}

- (NSString)text
{
  v2 = self;
  Transcript.text.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC8FaceTime22FTTranscriptionMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
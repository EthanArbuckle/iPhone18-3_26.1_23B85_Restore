@interface MPVisualTranscriptionMessage
- (MPVisualTranscriptionMessage)init;
- (NSAttributedString)attributedText;
- (NSString)text;
@end

@implementation MPVisualTranscriptionMessage

- (NSAttributedString)attributedText
{
  selfCopy = self;
  v3 = sub_1000654EC();

  return v3;
}

- (NSString)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript);
  selfCopy = self;
  transcriptionString = [v2 transcriptionString];
  if (!transcriptionString)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    transcriptionString = String._bridgeToObjectiveC()();
  }

  return transcriptionString;
}

- (MPVisualTranscriptionMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
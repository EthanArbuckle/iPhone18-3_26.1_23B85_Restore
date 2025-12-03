@interface MPVisualTranscriptionMessage
- (MPVisualTranscriptionMessage)init;
- (NSAttributedString)attributedText;
- (NSString)text;
@end

@implementation MPVisualTranscriptionMessage

- (NSAttributedString)attributedText
{
  selfCopy = self;
  v3 = sub_100043824();

  return v3;
}

- (NSString)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript);
  selfCopy = self;
  transcriptionString = [v2 transcriptionString];
  if (!transcriptionString)
  {
    sub_10007B478();
    transcriptionString = sub_10007B448();
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
@interface MPVisualTranscriptionMessage
- (MPVisualTranscriptionMessage)init;
- (NSAttributedString)attributedText;
- (NSString)text;
@end

@implementation MPVisualTranscriptionMessage

- (NSAttributedString)attributedText
{
  v2 = self;
  v3 = sub_10001BEB8();

  return v3;
}

- (NSString)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript);
  v3 = self;
  v4 = [v2 transcriptionString];
  if (!v4)
  {
    sub_10006081C();
    v4 = sub_1000607EC();
  }

  return v4;
}

- (MPVisualTranscriptionMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
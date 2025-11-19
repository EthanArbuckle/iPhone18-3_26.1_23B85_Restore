@interface FTTranscriptionMessage
- (NSAttributedString)attributedText;
- (NSString)text;
- (_TtC37VoicemailMessageNotificationExtension22FTTranscriptionMessage)init;
@end

@implementation FTTranscriptionMessage

- (NSAttributedString)attributedText
{
  v2 = self;
  sub_1000606DC();
  v3 = objc_allocWithZone(NSAttributedString);
  v4 = sub_1000607EC();

  v5 = [v3 initWithString:v4];

  return v5;
}

- (NSString)text
{
  v2 = self;
  sub_1000606DC();

  v3 = sub_1000607EC();

  return v3;
}

- (_TtC37VoicemailMessageNotificationExtension22FTTranscriptionMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
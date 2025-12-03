@interface FTTranscriptionMessage
- (NSAttributedString)attributedText;
- (NSString)text;
- (_TtC9IntentsUI22FTTranscriptionMessage)init;
@end

@implementation FTTranscriptionMessage

- (NSAttributedString)attributedText
{
  selfCopy = self;
  sub_10007B298();
  v3 = objc_allocWithZone(NSAttributedString);
  v4 = sub_10007B448();

  v5 = [v3 initWithString:v4];

  return v5;
}

- (NSString)text
{
  selfCopy = self;
  sub_10007B298();

  v3 = sub_10007B448();

  return v3;
}

- (_TtC9IntentsUI22FTTranscriptionMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
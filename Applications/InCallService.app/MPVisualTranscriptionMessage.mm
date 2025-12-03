@interface MPVisualTranscriptionMessage
- (NSAttributedString)attributedText;
- (NSString)text;
- (double)confidence;
- (unint64_t)confidenceRating;
@end

@implementation MPVisualTranscriptionMessage

- (NSAttributedString)attributedText
{
  selfCopy = self;
  v3 = sub_10021C370();

  return v3;
}

- (NSString)text
{
  selfCopy = self;
  sub_10021C3D8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (unint64_t)confidenceRating
{
  selfCopy = self;
  v3 = sub_10021C4D4();

  return v3;
}

- (double)confidence
{
  selfCopy = self;
  v3 = sub_10021C528();

  return v3;
}

@end
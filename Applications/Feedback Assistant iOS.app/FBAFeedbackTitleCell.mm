@interface FBAFeedbackTitleCell
- (_TtC18Feedback_Assistant20FBAFeedbackTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation FBAFeedbackTitleCell

- (_TtC18Feedback_Assistant20FBAFeedbackTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10005BEF4(style, identifier, v6);
}

@end
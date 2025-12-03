@interface FBATargetedSurvey
+ (void)reportFailureToLaunchFormWithFormIdentifier:(id)identifier;
- (_TtC18Feedback_Assistant17FBATargetedSurvey)init;
@end

@implementation FBATargetedSurvey

+ (void)reportFailureToLaunchFormWithFormIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static FBKSAdmin.reportFailureToLaunchForm(formIdentifier:completion:)();
}

- (_TtC18Feedback_Assistant17FBATargetedSurvey)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBATargetedSurvey();
  return [(FBATargetedSurvey *)&v3 init];
}

@end
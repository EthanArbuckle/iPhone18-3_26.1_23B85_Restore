@interface AppStoreReviewManager
- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)a3 requirementStorage:(id)a4;
- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)a3 requirementStorage:(id)a4 externalRequirementsProvider:(id)a5;
- (void)attemptToShowPromptIn:(id)a3 reason:(int64_t)a4;
- (void)didForeground;
- (void)notifyCriterionMet:(int64_t)a3;
@end

@implementation AppStoreReviewManager

- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)a3 requirementStorage:(id)a4 externalRequirementsProvider:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100272F34(a3, a4, a5);
}

- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)a3 requirementStorage:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1002731A0(a3, a4);
}

- (void)attemptToShowPromptIn:(id)a3 reason:(int64_t)a4
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002732D8(a3, a4);
  _objc_release(self);
  _objc_release(a3);
}

- (void)notifyCriterionMet:(int64_t)a3
{
  _objc_retain(self);
  sub_100277470(a3);
  _objc_release(self);
}

- (void)didForeground
{
  _objc_retain(self);
  sub_100278868();
  _objc_release(self);
}

@end
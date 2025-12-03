@interface AppStoreReviewManager
- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)tracker requirementStorage:(id)storage;
- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)tracker requirementStorage:(id)storage externalRequirementsProvider:(id)provider;
- (void)attemptToShowPromptIn:(id)in reason:(int64_t)reason;
- (void)didForeground;
- (void)notifyCriterionMet:(int64_t)met;
@end

@implementation AppStoreReviewManager

- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)tracker requirementStorage:(id)storage externalRequirementsProvider:(id)provider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100272F34(tracker, storage, provider);
}

- (_TtC10MobileMail21AppStoreReviewManager)initWithEligibilityTracker:(id)tracker requirementStorage:(id)storage
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1002731A0(tracker, storage);
}

- (void)attemptToShowPromptIn:(id)in reason:(int64_t)reason
{
  _objc_retain(in);
  _objc_retain(self);
  sub_1002732D8(in, reason);
  _objc_release(self);
  _objc_release(in);
}

- (void)notifyCriterionMet:(int64_t)met
{
  _objc_retain(self);
  sub_100277470(met);
  _objc_release(self);
}

- (void)didForeground
{
  _objc_retain(self);
  sub_100278868();
  _objc_release(self);
}

@end
@interface BKEngagementManagerAnalyticsHelper
- (BKEngagementManagerAnalyticsHelper)init;
- (void)collectLocalSignalsAnalyticsWithTracker:(id)tracker;
@end

@implementation BKEngagementManagerAnalyticsHelper

- (void)collectLocalSignalsAnalyticsWithTracker:(id)tracker
{
  trackerCopy = tracker;
  selfCopy = self;
  EngagementManagerAnalyticsHelper.collectLocalSignalsAnalytics(with:)(trackerCopy);
}

- (BKEngagementManagerAnalyticsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
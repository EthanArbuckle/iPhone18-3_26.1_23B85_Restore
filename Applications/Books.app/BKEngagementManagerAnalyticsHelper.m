@interface BKEngagementManagerAnalyticsHelper
- (BKEngagementManagerAnalyticsHelper)init;
- (void)collectLocalSignalsAnalyticsWithTracker:(id)a3;
@end

@implementation BKEngagementManagerAnalyticsHelper

- (void)collectLocalSignalsAnalyticsWithTracker:(id)a3
{
  v4 = a3;
  v5 = self;
  EngagementManagerAnalyticsHelper.collectLocalSignalsAnalytics(with:)(v4);
}

- (BKEngagementManagerAnalyticsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
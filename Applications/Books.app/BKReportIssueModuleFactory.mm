@interface BKReportIssueModuleFactory
+ (void)instantiateWithAnalyticsContentId:(NSString *)id analyticsSupplementalContentCount:(NSNumber *)count analyticsTracker:(_TtC13BookAnalytics9BATracker *)tracker completionHandler:(id)handler;
- (BKReportIssueModuleFactory)init;
@end

@implementation BKReportIssueModuleFactory

+ (void)instantiateWithAnalyticsContentId:(NSString *)id analyticsSupplementalContentCount:(NSNumber *)count analyticsTracker:(_TtC13BookAnalytics9BATracker *)tracker completionHandler:(id)handler
{
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = id;
  v15[3] = count;
  v15[4] = tracker;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1007A2744();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1008344C0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10081C0F0;
  v18[5] = v17;
  idCopy = id;
  countCopy = count;
  trackerCopy = tracker;
  sub_10069E794(0, 0, v13, &unk_1008344D0, v18);
}

- (BKReportIssueModuleFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BKReportIssueModuleFactory *)&v3 init];
}

@end
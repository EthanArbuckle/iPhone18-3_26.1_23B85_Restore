@interface BKReportIssueModuleFactory
+ (void)instantiateWithAnalyticsContentId:(NSString *)a3 analyticsSupplementalContentCount:(NSNumber *)a4 analyticsTracker:(_TtC13BookAnalytics9BATracker *)a5 completionHandler:(id)a6;
- (BKReportIssueModuleFactory)init;
@end

@implementation BKReportIssueModuleFactory

+ (void)instantiateWithAnalyticsContentId:(NSString *)a3 analyticsSupplementalContentCount:(NSNumber *)a4 analyticsTracker:(_TtC13BookAnalytics9BATracker *)a5 completionHandler:(id)a6
{
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = a1;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_10069E794(0, 0, v13, &unk_1008344D0, v18);
}

- (BKReportIssueModuleFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BKReportIssueModuleFactory *)&v3 init];
}

@end
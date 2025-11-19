@interface UploadRecordAnalytics
- (UploadRecordAnalytics)init;
@end

@implementation UploadRecordAnalytics

- (UploadRecordAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v6.receiver = self;
  v6.super_class = UploadRecordAnalytics;
  v4 = [(ObjectAnalytics *)&v6 initWithWorkspace:v3 entityName:@"UploadRecord" withCache:1];

  return v4;
}

@end
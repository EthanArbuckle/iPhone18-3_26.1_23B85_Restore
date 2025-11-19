@interface PLCoreAnalyticsReportingMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLCoreAnalyticsReportingMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = [PLAssetResourceUploadJobCoreAnalytics alloc];
  v5 = [(PLMaintenanceTask *)self photoLibrary];
  v6 = [v4 initWithPhotoLibrary:v5];

  [v6 publishCoreAnalyticsEvent];
  return 1;
}

@end
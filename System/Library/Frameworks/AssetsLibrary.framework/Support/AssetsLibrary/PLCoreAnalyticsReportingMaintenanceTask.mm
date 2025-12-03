@interface PLCoreAnalyticsReportingMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCoreAnalyticsReportingMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  v4 = [PLAssetResourceUploadJobCoreAnalytics alloc];
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  v6 = [v4 initWithPhotoLibrary:photoLibrary];

  [v6 publishCoreAnalyticsEvent];
  return 1;
}

@end
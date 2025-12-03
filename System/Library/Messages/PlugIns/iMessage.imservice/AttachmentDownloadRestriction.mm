@interface AttachmentDownloadRestriction
- (void)collectMetricsForDownloadedFile:(id)file;
- (void)collectMetricsForFailureWithReportedSize:(id)size;
@end

@implementation AttachmentDownloadRestriction

- (void)collectMetricsForDownloadedFile:(id)file
{
  fileCopy = file;
  v6 = +[IMMetricsCollector sharedInstance];
  metricsContext = [(AttachmentDownloadRestriction *)self metricsContext];
  [v6 trackAttachmentDownloadSuccess:fileCopy context:metricsContext];
}

- (void)collectMetricsForFailureWithReportedSize:(id)size
{
  sizeCopy = size;
  v7 = +[IMMetricsCollector sharedInstance];
  restrictionReason = [(AttachmentDownloadRestriction *)self restrictionReason];
  metricsContext = [(AttachmentDownloadRestriction *)self metricsContext];
  [v7 trackAttachmentDownloadFailedWithFileSize:sizeCopy reason:restrictionReason context:metricsContext];
}

@end
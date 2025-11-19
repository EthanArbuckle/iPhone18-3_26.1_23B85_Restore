@interface AttachmentDownloadRestriction
- (void)collectMetricsForDownloadedFile:(id)a3;
- (void)collectMetricsForFailureWithReportedSize:(id)a3;
@end

@implementation AttachmentDownloadRestriction

- (void)collectMetricsForDownloadedFile:(id)a3
{
  v4 = a3;
  v6 = +[IMMetricsCollector sharedInstance];
  v5 = [(AttachmentDownloadRestriction *)self metricsContext];
  [v6 trackAttachmentDownloadSuccess:v4 context:v5];
}

- (void)collectMetricsForFailureWithReportedSize:(id)a3
{
  v4 = a3;
  v7 = +[IMMetricsCollector sharedInstance];
  v5 = [(AttachmentDownloadRestriction *)self restrictionReason];
  v6 = [(AttachmentDownloadRestriction *)self metricsContext];
  [v7 trackAttachmentDownloadFailedWithFileSize:v4 reason:v5 context:v6];
}

@end
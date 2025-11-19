@interface IMDebugDownloadReportDataProvider
- (IMDebugDownloadReportDataProvider)init;
- (void)createDebugDataWithCompletion:(id)a3;
@end

@implementation IMDebugDownloadReportDataProvider

- (IMDebugDownloadReportDataProvider)init
{
  v11.receiver = self;
  v11.super_class = IMDebugDownloadReportDataProvider;
  v2 = [(IMDebugDownloadReportDataProvider *)&v11 init];
  if (v2)
  {
    v3 = +[MTDB sharedInstance];
    v4 = [v3 privateQueueContext];

    v5 = [PFDownloadsStateReportCollector alloc];
    v13[0] = kEpisodeUuid;
    v13[1] = kEpisodeDownloadBehavior;
    v13[2] = kEpisodeTitle;
    v6 = [NSArray arrayWithObjects:v13 count:3];
    v12[0] = kPodcastUuid;
    v12[1] = kPodcastEpisodeLimit;
    v12[2] = kPodcastTitle;
    v12[3] = kPodcastDownloadedEpisodesCount;
    v7 = [NSArray arrayWithObjects:v12 count:4];
    v8 = [v5 initWithManagedObjectContext:v4 episodePropertiesToReport:v6 showPropertiesToReport:v7 allEpisodes:0];
    collector = v2->_collector;
    v2->_collector = v8;
  }

  return v2;
}

- (void)createDebugDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  collector = self->_collector;
  if (collector)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __67__IMDebugDownloadReportDataProvider_createDebugDataWithCompletion___block_invoke;
    v8[3] = &unk_10558;
    v9 = @"download-state-report.json";
    v10 = v4;
    [(PFDownloadsStateReportCollector *)collector generateReportWithCompletionHandler:v8];
  }

  else
  {
    v7 = [@"Cannot open database" dataUsingEncoding:4];
    (v5)[2](v5, v7, @"download-state-report.json");
  }
}

@end
@interface MTFullDownloadsGateway
- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)uuid;
- (MTFullDownloadsGateway)initWithDownloadManager:(id)manager;
- (id)cancelAllDownloadsUserInitiated:(BOOL)initiated;
- (id)episodeUuidForDownloadWithAdamID:(id)d;
- (void)addEpisodeAutoDownloads:(id)downloads completion:(id)completion;
- (void)cancelDownloadsForEpisodeUuid:(id)uuid userInitiated:(BOOL)initiated;
- (void)downloadEpisode:(id)episode isFromSaving:(BOOL)saving;
- (void)removeDownload:(id)download shouldAllowAutomaticRedownloads:(BOOL)redownloads completion:(id)completion;
- (void)restoreDownloadedEpisodes:(id)episodes completion:(id)completion;
@end

@implementation MTFullDownloadsGateway

- (MTFullDownloadsGateway)initWithDownloadManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = MTFullDownloadsGateway;
  v5 = [(MTFullDownloadsGateway *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTFullDownloadsGateway *)v5 setDownloadManager:managerCopy];
  }

  return v6;
}

- (void)addEpisodeAutoDownloads:(id)downloads completion:(id)completion
{
  completionCopy = completion;
  downloadsCopy = downloads;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  [downloadManager addEpisodeAutoDownloads:downloadsCopy completion:completionCopy];
}

- (id)cancelAllDownloadsUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  v5 = [downloadManager cancelAllDownloadsUserInitiated:initiatedCopy];

  return v5;
}

- (void)cancelDownloadsForEpisodeUuid:(id)uuid userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  uuidCopy = uuid;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  [downloadManager cancelDownloadsForEpisodeUuid:uuidCopy userInitiated:initiatedCopy];
}

- (void)downloadEpisode:(id)episode isFromSaving:(BOOL)saving
{
  savingCopy = saving;
  episodeCopy = episode;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  [downloadManager downloadEpisode:episodeCopy isFromSaving:savingCopy];
}

- (id)episodeUuidForDownloadWithAdamID:(id)d
{
  dCopy = d;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  v6 = [downloadManager episodeUuidForDownloadWithAdamID:dCopy];

  return v6;
}

- (void)removeDownload:(id)download shouldAllowAutomaticRedownloads:(BOOL)redownloads completion:(id)completion
{
  redownloadsCopy = redownloads;
  completionCopy = completion;
  downloadCopy = download;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  [downloadManager removeDownload:downloadCopy shouldAllowAutomaticRedownloads:redownloadsCopy completion:completionCopy];
}

- (void)restoreDownloadedEpisodes:(id)episodes completion:(id)completion
{
  completionCopy = completion;
  episodesCopy = episodes;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  [downloadManager restoreDownloadedEpisodes:episodesCopy completion:completionCopy];
}

- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)uuid
{
  uuidCopy = uuid;
  downloadManager = [(MTFullDownloadsGateway *)self downloadManager];
  v6 = [downloadManager resumeOrPauseEpisodeDownloadWithUuid:uuidCopy];

  return v6;
}

@end
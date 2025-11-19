@interface MTFullDownloadsGateway
- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)a3;
- (MTFullDownloadsGateway)initWithDownloadManager:(id)a3;
- (id)cancelAllDownloadsUserInitiated:(BOOL)a3;
- (id)episodeUuidForDownloadWithAdamID:(id)a3;
- (void)addEpisodeAutoDownloads:(id)a3 completion:(id)a4;
- (void)cancelDownloadsForEpisodeUuid:(id)a3 userInitiated:(BOOL)a4;
- (void)downloadEpisode:(id)a3 isFromSaving:(BOOL)a4;
- (void)removeDownload:(id)a3 shouldAllowAutomaticRedownloads:(BOOL)a4 completion:(id)a5;
- (void)restoreDownloadedEpisodes:(id)a3 completion:(id)a4;
@end

@implementation MTFullDownloadsGateway

- (MTFullDownloadsGateway)initWithDownloadManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTFullDownloadsGateway;
  v5 = [(MTFullDownloadsGateway *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTFullDownloadsGateway *)v5 setDownloadManager:v4];
  }

  return v6;
}

- (void)addEpisodeAutoDownloads:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTFullDownloadsGateway *)self downloadManager];
  [v8 addEpisodeAutoDownloads:v7 completion:v6];
}

- (id)cancelAllDownloadsUserInitiated:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTFullDownloadsGateway *)self downloadManager];
  v5 = [v4 cancelAllDownloadsUserInitiated:v3];

  return v5;
}

- (void)cancelDownloadsForEpisodeUuid:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MTFullDownloadsGateway *)self downloadManager];
  [v7 cancelDownloadsForEpisodeUuid:v6 userInitiated:v4];
}

- (void)downloadEpisode:(id)a3 isFromSaving:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MTFullDownloadsGateway *)self downloadManager];
  [v7 downloadEpisode:v6 isFromSaving:v4];
}

- (id)episodeUuidForDownloadWithAdamID:(id)a3
{
  v4 = a3;
  v5 = [(MTFullDownloadsGateway *)self downloadManager];
  v6 = [v5 episodeUuidForDownloadWithAdamID:v4];

  return v6;
}

- (void)removeDownload:(id)a3 shouldAllowAutomaticRedownloads:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MTFullDownloadsGateway *)self downloadManager];
  [v10 removeDownload:v9 shouldAllowAutomaticRedownloads:v5 completion:v8];
}

- (void)restoreDownloadedEpisodes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTFullDownloadsGateway *)self downloadManager];
  [v8 restoreDownloadedEpisodes:v7 completion:v6];
}

- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTFullDownloadsGateway *)self downloadManager];
  v6 = [v5 resumeOrPauseEpisodeDownloadWithUuid:v4];

  return v6;
}

@end
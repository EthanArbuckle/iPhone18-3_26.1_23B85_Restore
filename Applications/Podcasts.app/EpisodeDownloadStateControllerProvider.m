@interface EpisodeDownloadStateControllerProvider
- (MTLegacyDownloadManagerProtocol)downloadManager;
- (_TtC8Podcasts38EpisodeDownloadStateControllerProvider)init;
- (void)setDownloadManager:(id)a3;
@end

@implementation EpisodeDownloadStateControllerProvider

- (MTLegacyDownloadManagerProtocol)downloadManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDownloadManager:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_downloadManager) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC8Podcasts38EpisodeDownloadStateControllerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
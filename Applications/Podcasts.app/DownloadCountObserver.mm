@interface DownloadCountObserver
- (_TtC8Podcasts21DownloadCountObserver)init;
- (void)dealloc;
- (void)downloadManagerDidUpdateDownload:(void *)download;
@end

@implementation DownloadCountObserver

- (void)downloadManagerDidUpdateDownload:(void *)download
{
  downloadCopy = download;
  sub_10034E218();
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadsNotifier);
  selfCopy = self;
  [v2 unregisterForUpdates:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DownloadCountObserver();
  [(DownloadCountObserver *)&v4 dealloc];
}

- (_TtC8Podcasts21DownloadCountObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
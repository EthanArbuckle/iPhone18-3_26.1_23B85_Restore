@interface DownloadCountObserver
- (_TtC8Podcasts21DownloadCountObserver)init;
- (void)dealloc;
- (void)downloadManagerDidUpdateDownload:(void *)a1;
@end

@implementation DownloadCountObserver

- (void)downloadManagerDidUpdateDownload:(void *)a1
{
  v1 = a1;
  sub_10034E218();
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts21DownloadCountObserver_downloadsNotifier);
  v3 = self;
  [v2 unregisterForUpdates:v3];
  v4.receiver = v3;
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
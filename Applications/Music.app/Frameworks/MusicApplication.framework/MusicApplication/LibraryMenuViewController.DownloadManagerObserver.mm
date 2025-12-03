@interface LibraryMenuViewController.DownloadManagerObserver
- (_TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver)init;
- (void)dealloc;
- (void)downloadManager:(id)manager didCancelAssets:(id)assets;
@end

@implementation LibraryMenuViewController.DownloadManagerObserver

- (_TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didEnqueueAssetDownloads);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didFinishAssetDownload);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didCancelAssetsDownload);
  v6 = type metadata accessor for LibraryMenuViewController.DownloadManagerObserver();
  *v5 = 0;
  v5[1] = 0;
  v12.receiver = self;
  v12.super_class = v6;
  v7 = [(LibraryMenuViewController.DownloadManagerObserver *)&v12 init];
  v8 = objc_opt_self();
  v9 = v7;
  sharedManager = [v8 sharedManager];
  [sharedManager registerObserver:v9];

  return v9;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedManager = [v3 sharedManager];
  [sharedManager unregisterObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for LibraryMenuViewController.DownloadManagerObserver();
  [(LibraryMenuViewController.DownloadManagerObserver *)&v6 dealloc];
}

- (void)downloadManager:(id)manager didCancelAssets:(id)assets
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1F3154, v5);
}

@end
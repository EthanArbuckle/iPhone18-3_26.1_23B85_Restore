@interface EpisodeDownloadsManager
- (BOOL)handleEventsForBackgroundURLSession:(id)a3 handler:(id)a4;
- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)a3;
- (_TtC8Podcasts23EpisodeDownloadsManager)init;
- (id)cancelAllDownloadsUserInitiated:(BOOL)a3;
- (id)downloadAtIndex:(int64_t)a3;
- (id)downloadForEpisodeWithUuid:(id)a3;
- (id)episodeUuidForDownloadWithAdamID:(id)a3;
- (int64_t)indexForDownload:(id)a3;
- (int64_t)numberOfDownloads;
- (int64_t)numberOfDownloadsFrom:(id)a3;
- (void)addEpisodeAutoDownloads:(id)a3 completion:(id)a4;
- (void)cancelDownloadsForEpisodeUuid:(id)a3 userInitiated:(BOOL)a4;
- (void)downloadEpisode:(id)a3 isFromSaving:(BOOL)a4;
- (void)invalidateURLSessions;
- (void)removeDownload:(id)a3 shouldAllowAutomaticRedownloads:(BOOL)a4 completion:(id)a5;
- (void)removeDownloadedEpisodes:(id)a3;
- (void)restoreDownloadedEpisodes:(id)a3 completion:(id)a4;
@end

@implementation EpisodeDownloadsManager

- (_TtC8Podcasts23EpisodeDownloadsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)handleEventsForBackgroundURLSession:(id)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  LOBYTE(v6) = EpisodeDownloadsManager.handleEventsForBackgroundURLSession(identifier:handler:)(v6, v8, sub_10019C604, v9);

  return v6 & 1;
}

- (void)restoreDownloadedEpisodes:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_100371384;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  EpisodeDownloadsManager.restoreDownloadedEpisodes(_:completion:)(v6, v5, v7);
  sub_1000112B4(v5);
}

- (void)downloadEpisode:(id)a3 isFromSaving:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  EpisodeDownloadsManager.downloadEpisode(_:isFromSaving:)(v10, a4);
}

- (void)addEpisodeAutoDownloads:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_100370C60;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  EpisodeDownloadsManager.addEpisodeAutoDownloads(_:completion:)(v6, v5, v7);
  sub_1000112B4(v5);
}

- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = EpisodeDownloadsManager.resumeOrPauseEpisodeDownload(withUuid:)(v8);

  return v4 & 1;
}

- (void)cancelDownloadsForEpisodeUuid:(id)a3 userInitiated:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10 = sub_100011218();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = a4;
  v14[4] = sub_1003713C8;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000F038;
  v14[3] = &unk_1004F07B0;
  v13 = _Block_copy(v14);

  [v10 addOperationWithBlock:v13];
  _Block_release(v13);
}

- (id)cancelAllDownloadsUserInitiated:(BOOL)a3
{
  v4 = self;
  EpisodeDownloadsManager.cancelAllDownloads(userInitiated:)(a3);

  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)episodeUuidForDownloadWithAdamID:(id)a3
{
  v4 = a3;
  v5 = self;
  object = EpisodeDownloadsManager.episodeUuidForDownload(withAdamID:)(v4).value._object;

  if (object)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeDownload:(id)a3 shouldAllowAutomaticRedownloads:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  EpisodeDownloadsManager.removeDownload(_:shouldAllowAutomaticRedownloads:completion:)(v8, v10, a4, sub_100370C18, v11);
}

- (void)removeDownloadedEpisodes:(id)a3
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  EpisodeDownloadsManager.removeDownloadedEpisodes(_:)(v4);
}

- (int64_t)numberOfDownloadsFrom:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = EpisodeDownloadsManager.numberOfDownloads(from:)(v8);

  return v9;
}

- (int64_t)numberOfDownloads
{
  v2 = self;
  v3 = EpisodeDownloadsManager.numberOfDownloads()();

  return v3;
}

- (id)downloadAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = EpisodeDownloadsManager.download(at:)(a3);

  return v5;
}

- (int64_t)indexForDownload:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = EpisodeDownloadsManager.index(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (id)downloadForEpisodeWithUuid:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = EpisodeDownloadsManager.downloadForEpisode(withUuid:)(v4, v6);

  return v8;
}

- (void)invalidateURLSessions
{
  v2 = self;
  EpisodeDownloadsManager.invalidateURLSessions()();
}

@end
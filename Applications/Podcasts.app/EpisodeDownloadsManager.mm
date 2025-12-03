@interface EpisodeDownloadsManager
- (BOOL)handleEventsForBackgroundURLSession:(id)session handler:(id)handler;
- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)uuid;
- (_TtC8Podcasts23EpisodeDownloadsManager)init;
- (id)cancelAllDownloadsUserInitiated:(BOOL)initiated;
- (id)downloadAtIndex:(int64_t)index;
- (id)downloadForEpisodeWithUuid:(id)uuid;
- (id)episodeUuidForDownloadWithAdamID:(id)d;
- (int64_t)indexForDownload:(id)download;
- (int64_t)numberOfDownloads;
- (int64_t)numberOfDownloadsFrom:(id)from;
- (void)addEpisodeAutoDownloads:(id)downloads completion:(id)completion;
- (void)cancelDownloadsForEpisodeUuid:(id)uuid userInitiated:(BOOL)initiated;
- (void)downloadEpisode:(id)episode isFromSaving:(BOOL)saving;
- (void)invalidateURLSessions;
- (void)removeDownload:(id)download shouldAllowAutomaticRedownloads:(BOOL)redownloads completion:(id)completion;
- (void)removeDownloadedEpisodes:(id)episodes;
- (void)restoreDownloadedEpisodes:(id)episodes completion:(id)completion;
@end

@implementation EpisodeDownloadsManager

- (_TtC8Podcasts23EpisodeDownloadsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)handleEventsForBackgroundURLSession:(id)session handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  LOBYTE(v6) = EpisodeDownloadsManager.handleEventsForBackgroundURLSession(identifier:handler:)(v6, v8, sub_10019C604, v9);

  return v6 & 1;
}

- (void)restoreDownloadedEpisodes:(id)episodes completion:(id)completion
{
  v5 = _Block_copy(completion);
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

  selfCopy = self;
  EpisodeDownloadsManager.restoreDownloadedEpisodes(_:completion:)(v6, v5, v7);
  sub_1000112B4(v5);
}

- (void)downloadEpisode:(id)episode isFromSaving:(BOOL)saving
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  EpisodeDownloadsManager.downloadEpisode(_:isFromSaving:)(v10, saving);
}

- (void)addEpisodeAutoDownloads:(id)downloads completion:(id)completion
{
  v5 = _Block_copy(completion);
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

  selfCopy = self;
  EpisodeDownloadsManager.addEpisodeAutoDownloads(_:completion:)(v6, v5, v7);
  sub_1000112B4(v5);
}

- (BOOL)resumeOrPauseEpisodeDownloadWithUuid:(id)uuid
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = EpisodeDownloadsManager.resumeOrPauseEpisodeDownload(withUuid:)(v8);

  return v4 & 1;
}

- (void)cancelDownloadsForEpisodeUuid:(id)uuid userInitiated:(BOOL)initiated
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10 = sub_100011218();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = initiated;
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

- (id)cancelAllDownloadsUserInitiated:(BOOL)initiated
{
  selfCopy = self;
  EpisodeDownloadsManager.cancelAllDownloads(userInitiated:)(initiated);

  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)episodeUuidForDownloadWithAdamID:(id)d
{
  dCopy = d;
  selfCopy = self;
  object = EpisodeDownloadsManager.episodeUuidForDownload(withAdamID:)(dCopy).value._object;

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

- (void)removeDownload:(id)download shouldAllowAutomaticRedownloads:(BOOL)redownloads completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  EpisodeDownloadsManager.removeDownload(_:shouldAllowAutomaticRedownloads:completion:)(v8, v10, redownloads, sub_100370C18, v11);
}

- (void)removeDownloadedEpisodes:(id)episodes
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  EpisodeDownloadsManager.removeDownloadedEpisodes(_:)(v4);
}

- (int64_t)numberOfDownloadsFrom:(id)from
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = EpisodeDownloadsManager.numberOfDownloads(from:)(v8);

  return v9;
}

- (int64_t)numberOfDownloads
{
  selfCopy = self;
  v3 = EpisodeDownloadsManager.numberOfDownloads()();

  return v3;
}

- (id)downloadAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = EpisodeDownloadsManager.download(at:)(index);

  return v5;
}

- (int64_t)indexForDownload:(id)download
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = EpisodeDownloadsManager.index(for:)(download);
  swift_unknownObjectRelease();

  return v6;
}

- (id)downloadForEpisodeWithUuid:(id)uuid
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = EpisodeDownloadsManager.downloadForEpisode(withUuid:)(v4, v6);

  return v8;
}

- (void)invalidateURLSessions
{
  selfCopy = self;
  EpisodeDownloadsManager.invalidateURLSessions()();
}

@end
@interface LibraryDataProvider
- (BOOL)handleEventsForBackgroundURLSessionWithIdentifier:(id)a3 handler:(id)a4;
- (_TtC8Podcasts19LibraryDataProvider)init;
- (void)restorePreviouslyDownloadedEpisodes;
@end

@implementation LibraryDataProvider

- (void)restorePreviouslyDownloadedEpisodes
{
  v2 = self;
  LibraryDataProvider.restorePreviouslyDownloadedEpisodes()();
}

- (_TtC8Podcasts19LibraryDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)handleEventsForBackgroundURLSessionWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  LOBYTE(v6) = _s8Podcasts19LibraryDataProviderC35handleEventsForBackgroundURLSession10identifier7handlerSbSS_yyctF_0(v6, v8, sub_10019C604, v9);

  return v6 & 1;
}

@end
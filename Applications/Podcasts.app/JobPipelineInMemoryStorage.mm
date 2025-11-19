@interface JobPipelineInMemoryStorage
- (id)downloadAtIndex:(int64_t)a3;
- (id)downloadForEpisodeWithUuid:(id)a3;
- (int64_t)indexForDownload:(id)a3;
- (int64_t)numberOfDownloads;
- (int64_t)numberOfDownloadsFrom:(id)a3;
@end

@implementation JobPipelineInMemoryStorage

- (id)downloadForEpisodeWithUuid:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1003AD05C(v3, v5);

  return v6;
}

- (int64_t)indexForDownload:(id)a3
{
  swift_unknownObjectRetain();

  v4 = sub_1003AD358(a3);
  swift_unknownObjectRelease();

  return v4;
}

- (id)downloadAtIndex:(int64_t)a3
{

  v4 = sub_1003AD64C(a3);

  return v4;
}

- (int64_t)numberOfDownloads
{

  v2 = sub_1003AD818();

  return v2;
}

- (int64_t)numberOfDownloadsFrom:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1003AD8D8(v3, v5);

  return v6;
}

@end
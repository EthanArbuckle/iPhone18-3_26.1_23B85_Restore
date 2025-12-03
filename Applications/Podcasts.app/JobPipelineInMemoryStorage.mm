@interface JobPipelineInMemoryStorage
- (id)downloadAtIndex:(int64_t)index;
- (id)downloadForEpisodeWithUuid:(id)uuid;
- (int64_t)indexForDownload:(id)download;
- (int64_t)numberOfDownloads;
- (int64_t)numberOfDownloadsFrom:(id)from;
@end

@implementation JobPipelineInMemoryStorage

- (id)downloadForEpisodeWithUuid:(id)uuid
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1003AD05C(v3, v5);

  return v6;
}

- (int64_t)indexForDownload:(id)download
{
  swift_unknownObjectRetain();

  v4 = sub_1003AD358(download);
  swift_unknownObjectRelease();

  return v4;
}

- (id)downloadAtIndex:(int64_t)index
{

  v4 = sub_1003AD64C(index);

  return v4;
}

- (int64_t)numberOfDownloads
{

  v2 = sub_1003AD818();

  return v2;
}

- (int64_t)numberOfDownloadsFrom:(id)from
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1003AD8D8(v3, v5);

  return v6;
}

@end
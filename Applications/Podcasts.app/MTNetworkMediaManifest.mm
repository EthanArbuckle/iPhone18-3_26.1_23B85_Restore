@interface MTNetworkMediaManifest
+ (id)activityTypeSuffix;
+ (void)createManifestForActivity:(id)activity completion:(id)completion;
+ (void)fetchPlayerItemsFor:(id)for completion:(id)completion;
- (MTNetworkMediaManifest)init;
- (MTNetworkMediaManifest)initWithAssetInfo:(id)info;
- (MTNetworkMediaManifest)initWithEpisodeAdamId:(id)id assetInfo:(id)info;
- (MTNetworkMediaManifest)initWithEpisodeAdamIds:(id)ids assetInfo:(id)info;
- (MTNetworkMediaManifest)initWithItems:(id)items;
- (MTNetworkMediaManifest)initWithPodcastAdamId:(id)id assetInfo:(id)info;
- (MTNetworkMediaManifest)initWithStationId:(id)id assetInfo:(id)info;
- (NSArray)initialEpisodeUuids;
- (NSArray)itemIdsDebug;
- (NSString)initialPodcastUuid;
- (id)parseEpisodeAssetInfo:(id)info error:(id *)error;
- (unint64_t)currentIndex;
- (void)load:(id)load;
- (void)setCurrentIndex:(unint64_t)index;
@end

@implementation MTNetworkMediaManifest

+ (id)activityTypeSuffix
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (MTNetworkMediaManifest)initWithAssetInfo:(id)info
{
  if (info)
  {
    selfCopy = self;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    self = selfCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MTNetworkMediaManifest *)self initWithPodcastAdamId:0 assetInfo:v4];

  return v5;
}

- (MTNetworkMediaManifest)initWithEpisodeAdamId:(id)id assetInfo:(id)info
{
  if (!id)
  {
    v5 = 0;
    v7 = 0;
    if (info)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return sub_1001EE144(v5, v7, v8, v10);
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (!info)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  return sub_1001EE144(v5, v7, v8, v10);
}

- (MTNetworkMediaManifest)initWithEpisodeAdamIds:(id)ids assetInfo:(id)info
{
  infoCopy = info;
  if (!ids)
  {
    v5 = 0;
    if (info)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!infoCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  infoCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
LABEL_6:
  v8 = objc_allocWithZone(type metadata accessor for NetworkMediaManifest());
  v9 = sub_1001EE5D4(0, 0, v5, 0, 0, infoCopy, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (MTNetworkMediaManifest)initWithPodcastAdamId:(id)id assetInfo:(id)info
{
  infoCopy = info;
  if (!id)
  {
    v5 = 0;
    v7 = 0;
    if (info)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (!infoCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  infoCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
LABEL_6:
  v10 = objc_allocWithZone(type metadata accessor for NetworkMediaManifest());
  v11 = sub_1001EE5D4(v5, v7, 0, 0, 0, infoCopy, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (MTNetworkMediaManifest)initWithStationId:(id)id assetInfo:(id)info
{
  infoCopy = info;
  if (!id)
  {
    v5 = 0;
    v7 = 0;
    if (info)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (!infoCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  infoCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
LABEL_6:
  v10 = objc_allocWithZone(type metadata accessor for NetworkMediaManifest());
  v11 = sub_1001EE5D4(0, 0, 0, v5, v7, infoCopy, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)load:(id)load
{
  v4 = _Block_copy(load);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10019C604;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1001EF2E4(v7, v6);
  sub_1000112B4(v7);
}

+ (void)fetchPlayerItemsFor:(id)for completion:(id)completion
{
  v5 = type metadata accessor for MediaRequest.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_1001F702C;
  }

  else
  {
    v11 = 0;
  }

  swift_getObjCClassMetadata();
  v12 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  (*(v6 + 104))(v8, enum case for MediaRequest.ContentType.podcastEpisode(_:), v5);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v9;
  v13[4] = v11;
  v14 = v12;
  sub_100013CB4(v9);
  sub_1001EF530(0, v10, v14, v8, 0x7FFFFFFFFFFFFFFFLL, 0x14, _swiftEmptyArrayStorage, 0, sub_1001F6FFC, v13);

  sub_1000112B4(v9);

  (*(v6 + 8))(v8, v5);
}

- (NSArray)initialEpisodeUuids
{
  selfCopy = self;
  v3 = sub_1001F1C2C();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSString)initialPodcastUuid
{
  selfCopy = self;
  sub_1001F1F0C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseEpisodeAssetInfo:(id)info error:(id *)error
{
  if (info)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_1001F260C(v5, v7);

  type metadata accessor for ServerPodcastEpisode();
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (unint64_t)currentIndex
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NetworkMediaManifest();
  return [(MTNetworkMediaManifest *)&v3 currentIndex];
}

- (void)setCurrentIndex:(unint64_t)index
{
  selfCopy = self;
  if ([(MTNetworkMediaManifest *)selfCopy currentIndex]== index)
  {
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = type metadata accessor for NetworkMediaManifest();
    [(MTNetworkMediaManifest *)&v5 setCurrentIndex:index];
    sub_1001F62C0(0, 0);
  }
}

- (NSArray)itemIdsDebug
{
  selfCopy = self;
  sub_1001F564C();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (MTNetworkMediaManifest)initWithItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (MTNetworkMediaManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)createManifestForActivity:(id)activity completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  activityCopy = activity;
  sub_1001F69FC(activityCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end
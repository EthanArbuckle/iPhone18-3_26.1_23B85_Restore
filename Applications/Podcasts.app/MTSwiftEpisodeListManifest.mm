@interface MTSwiftEpisodeListManifest
+ (id)activityTypeSuffix;
+ (void)createManifestForActivity:(id)activity completion:(id)completion;
- (MTSwiftEpisodeListManifest)initWithInitialEpisodeUuid:(id)uuid fetchRequest:(id)request;
- (NSUserActivity)activity;
@end

@implementation MTSwiftEpisodeListManifest

+ (id)activityTypeSuffix
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (MTSwiftEpisodeListManifest)initWithInitialEpisodeUuid:(id)uuid fetchRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSUserActivity)activity
{
  selfCopy = self;
  v3 = sub_1002CAFF4();

  return v3;
}

+ (void)createManifestForActivity:(id)activity completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = swift_allocObject();
  v8[2] = activity;
  v8[3] = sub_1001F6D40;
  v8[4] = v6;
  v11[4] = sub_1002CBB90;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002CB9C4;
  v11[3] = &unk_1004EAE48;
  v9 = _Block_copy(v11);
  activityCopy = activity;

  [ObjCClassFromMetadata episodeUuidForActivity:activityCopy completion:v9];

  _Block_release(v9);
}

@end
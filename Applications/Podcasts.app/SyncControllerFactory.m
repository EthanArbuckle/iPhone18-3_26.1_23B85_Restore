@interface SyncControllerFactory
+ (Class)resolvedSyncClass;
+ (MTSyncControllerProtocol)resolvedSyncController;
- (_TtC8Podcasts21SyncControllerFactory)init;
@end

@implementation SyncControllerFactory

+ (MTSyncControllerProtocol)resolvedSyncController
{
  v2 = [objc_opt_self() sharedInstance];

  return v2;
}

+ (Class)resolvedSyncClass
{
  sub_10032AABC();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8Podcasts21SyncControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncControllerFactory();
  return [(SyncControllerFactory *)&v3 init];
}

@end
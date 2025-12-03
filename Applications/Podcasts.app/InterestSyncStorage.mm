@interface InterestSyncStorage
+ (void)resetInterestSync;
- (_TtC8Podcasts19InterestSyncStorage)init;
@end

@implementation InterestSyncStorage

- (_TtC8Podcasts19InterestSyncStorage)init
{
  sharedInstance = [objc_opt_self() sharedInstance];
  importContext = [sharedInstance importContext];

  v4 = type metadata accessor for InterestSyncStorage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8Podcasts19InterestSyncStorage_importContext] = importContext;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(InterestSyncStorage *)&v8 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

+ (void)resetInterestSync
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestLastSyncTimestamp.setter();

  v3 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestSyncVersion.setter();

  v4 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isInterestSyncDirty.setter();
}

@end
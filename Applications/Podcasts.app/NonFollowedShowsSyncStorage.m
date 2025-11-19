@interface NonFollowedShowsSyncStorage
+ (void)resetNonFollowedShowsSync;
@end

@implementation NonFollowedShowsSyncStorage

+ (void)resetNonFollowedShowsSync
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();

  v3 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsSyncVersion.setter();

  v4 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

@end
@interface MusicCapabilities
+ (MusicCapabilities)sharedCapabilities;
- (BOOL)hasCellularDataCapability;
- (BOOL)hasWAPICapability;
- (BOOL)hasWatchCompanionCapability;
- (BOOL)isInternalInstall;
- (MusicCapabilities)init;
- (NSDictionary)diskUsage;
- (int64_t)deviceType;
@end

@implementation MusicCapabilities

+ (MusicCapabilities)sharedCapabilities
{
  if (sharedCapabilities_sOnceToken != -1)
  {
    +[MusicCapabilities sharedCapabilities];
  }

  v3 = sharedCapabilities_sSharedCapabilities;

  return v3;
}

void __39__MusicCapabilities_sharedCapabilities__block_invoke(id a1)
{
  sharedCapabilities_sSharedCapabilities = objc_alloc_init(MusicCapabilities);

  _objc_release_x1();
}

- (MusicCapabilities)init
{
  v6.receiver = self;
  v6.super_class = MusicCapabilities;
  v2 = [(MusicCapabilities *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Music.MusicCapabilities.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (BOOL)hasCellularDataCapability
{
  if (hasCellularDataCapability_sOnceToken != -1)
  {
    [MusicCapabilities hasCellularDataCapability];
  }

  return hasCellularDataCapability_sHasCellularDataCapability;
}

- (BOOL)hasWAPICapability
{
  if (hasWAPICapability_sOnceToken != -1)
  {
    [MusicCapabilities hasWAPICapability];
  }

  return hasWAPICapability_sHasWAPICapability;
}

- (BOOL)isInternalInstall
{
  if (isInternalInstall_sOnceToken != -1)
  {
    [MusicCapabilities isInternalInstall];
  }

  return isInternalInstall_sIsInternalInstall;
}

- (BOOL)hasWatchCompanionCapability
{
  if (hasWatchCompanionCapability_sOnceToken != -1)
  {
    [MusicCapabilities hasWatchCompanionCapability];
  }

  return hasWatchCompanionCapability_sHasWatchCompanionCapability;
}

- (int64_t)deviceType
{
  v2 = MGGetSInt32Answer() - 1;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_149748[v2];
  }
}

- (NSDictionary)diskUsage
{
  v2 = MGCopyAnswer();

  return v2;
}

@end
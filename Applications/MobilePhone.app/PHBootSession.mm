@interface PHBootSession
- (BOOL)isInDifferentBootSession;
- (id)getBootSessionUUID;
- (id)lastKnownBootSessionID;
- (void)persistBootSessionID;
@end

@implementation PHBootSession

- (id)getBootSessionUUID
{
  if (getBootSessionUUID_onceToken != -1)
  {
    [PHBootSession getBootSessionUUID];
  }

  v3 = getBootSessionUUID_bootUUID;

  return v3;
}

void __35__PHBootSession_getBootSessionUUID__block_invoke(id a1)
{
  memset(v4, 0, sizeof(v4));
  v3 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v4, &v3, 0, 0))
  {
    v1 = [NSString stringWithUTF8String:v4];
    v2 = getBootSessionUUID_bootUUID;
    getBootSessionUUID_bootUUID = v1;
  }
}

- (id)lastKnownBootSessionID
{
  v2 = PHPreferencesGetValueInDomain();
  v3 = v2;
  if (v2)
  {
    uUIDString = v2;
  }

  else
  {
    v5 = objc_opt_new();
    uUIDString = [v5 UUIDString];
  }

  return uUIDString;
}

- (BOOL)isInDifferentBootSession
{
  lastKnownBootSessionID = [(PHBootSession *)self lastKnownBootSessionID];
  getBootSessionUUID = [(PHBootSession *)self getBootSessionUUID];
  v5 = [lastKnownBootSessionID isEqualToString:getBootSessionUUID];

  return v5 ^ 1;
}

- (void)persistBootSessionID
{
  getBootSessionUUID = [(PHBootSession *)self getBootSessionUUID];
  PHPreferencesSetValueInDomain();
}

@end
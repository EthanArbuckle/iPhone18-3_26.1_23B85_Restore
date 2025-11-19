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
    v4 = v2;
  }

  else
  {
    v5 = objc_opt_new();
    v4 = [v5 UUIDString];
  }

  return v4;
}

- (BOOL)isInDifferentBootSession
{
  v3 = [(PHBootSession *)self lastKnownBootSessionID];
  v4 = [(PHBootSession *)self getBootSessionUUID];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1;
}

- (void)persistBootSessionID
{
  v2 = [(PHBootSession *)self getBootSessionUUID];
  PHPreferencesSetValueInDomain();
}

@end
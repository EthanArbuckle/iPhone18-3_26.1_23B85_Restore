@interface MTUniversalPlaybackPositionTransactionContext
+ (id)UPPDomainVersion;
+ (void)setUPPDomainVersion:(id)a3;
- (id)lastSyncedDomainVersion;
@end

@implementation MTUniversalPlaybackPositionTransactionContext

+ (void)setUPPDomainVersion:(id)a3
{
  v6 = a3;
  v3 = [v6 length];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v6 forKey:@"kMTUPPTransitionContextUPPDomainVersionKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"kMTUPPTransitionContextUPPDomainVersionKey"];
  }
}

+ (id)UPPDomainVersion
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"kMTUPPTransitionContextUPPDomainVersionKey"];

  return v3;
}

- (id)lastSyncedDomainVersion
{
  v2 = objc_opt_class();

  return [v2 UPPDomainVersion];
}

@end
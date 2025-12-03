@interface ASCWatchApps
+ (ASCWatchApps)sharedWatchApps;
- (ASCWatchApps)initWithAppOfferStateCenter:(id)center;
- (id)reinstallAppWithID:(id)d;
- (id)reinstallSystemAppWithBundleID:(id)d;
@end

@implementation ASCWatchApps

+ (ASCWatchApps)sharedWatchApps
{
  if (sharedWatchApps_onceToken != -1)
  {
    +[ASCWatchApps sharedWatchApps];
  }

  v3 = sharedWatchApps_sharedWatchApps;

  return v3;
}

void __31__ASCWatchApps_sharedWatchApps__block_invoke()
{
  v0 = [ASCWatchApps alloc];
  v3 = +[ASCAppOfferStateCenter sharedCenter];
  v1 = [(ASCWatchApps *)v0 initWithAppOfferStateCenter:v3];
  v2 = sharedWatchApps_sharedWatchApps;
  sharedWatchApps_sharedWatchApps = v1;
}

- (ASCWatchApps)initWithAppOfferStateCenter:(id)center
{
  centerCopy = center;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCWatchApps;
  v6 = [(ASCWatchApps *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appOfferStateCenter, center);
  }

  return v7;
}

- (id)reinstallAppWithID:(id)d
{
  dCopy = d;
  appOfferStateCenter = [(ASCWatchApps *)self appOfferStateCenter];
  v6 = [appOfferStateCenter reinstallWatchAppWithID:dCopy];

  return v6;
}

- (id)reinstallSystemAppWithBundleID:(id)d
{
  dCopy = d;
  appOfferStateCenter = [(ASCWatchApps *)self appOfferStateCenter];
  v6 = [appOfferStateCenter reinstallWatchSystemAppWithBundleID:dCopy];

  return v6;
}

@end
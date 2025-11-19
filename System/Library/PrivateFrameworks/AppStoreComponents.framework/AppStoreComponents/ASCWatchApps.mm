@interface ASCWatchApps
+ (ASCWatchApps)sharedWatchApps;
- (ASCWatchApps)initWithAppOfferStateCenter:(id)a3;
- (id)reinstallAppWithID:(id)a3;
- (id)reinstallSystemAppWithBundleID:(id)a3;
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

- (ASCWatchApps)initWithAppOfferStateCenter:(id)a3
{
  v5 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCWatchApps;
  v6 = [(ASCWatchApps *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appOfferStateCenter, a3);
  }

  return v7;
}

- (id)reinstallAppWithID:(id)a3
{
  v4 = a3;
  v5 = [(ASCWatchApps *)self appOfferStateCenter];
  v6 = [v5 reinstallWatchAppWithID:v4];

  return v6;
}

- (id)reinstallSystemAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(ASCWatchApps *)self appOfferStateCenter];
  v6 = [v5 reinstallWatchSystemAppWithBundleID:v4];

  return v6;
}

@end
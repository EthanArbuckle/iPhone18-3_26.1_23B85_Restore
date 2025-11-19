@interface INSystemAppMatch
+ (id)matchWithiOSBundleIdentifier:(id)a3 macOSBundleIdentifier:(id)a4 watchOSBundleIdentifier:(id)a5 tvOSBundleIdentifier:(id)a6;
- (BOOL)appIsUnavailableOnCurrentPlatform;
- (INSystemAppMatch)initWithiOSBundleIdentifier:(id)a3 macOSBundleIdentifier:(id)a4 watchOSBundleIdentifier:(id)a5 tvOSBundleIdentifier:(id)a6;
@end

@implementation INSystemAppMatch

- (BOOL)appIsUnavailableOnCurrentPlatform
{
  v2 = [(INSystemAppMatch *)self bundleIdentifierForCurrentPlatform];
  v3 = v2 == 0;

  return v3;
}

- (INSystemAppMatch)initWithiOSBundleIdentifier:(id)a3 macOSBundleIdentifier:(id)a4 watchOSBundleIdentifier:(id)a5 tvOSBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = INSystemAppMatch;
  v14 = [(INSystemAppMatch *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    iOSBundleIdentifier = v14->_iOSBundleIdentifier;
    v14->_iOSBundleIdentifier = v15;

    v17 = [v11 copy];
    macOSBundleIdentifier = v14->_macOSBundleIdentifier;
    v14->_macOSBundleIdentifier = v17;

    v19 = [v12 copy];
    watchOSBundleIdentifier = v14->_watchOSBundleIdentifier;
    v14->_watchOSBundleIdentifier = v19;

    v21 = [v13 copy];
    tvOSBundleIdentifier = v14->_tvOSBundleIdentifier;
    v14->_tvOSBundleIdentifier = v21;

    v23 = v14;
  }

  return v14;
}

+ (id)matchWithiOSBundleIdentifier:(id)a3 macOSBundleIdentifier:(id)a4 watchOSBundleIdentifier:(id)a5 tvOSBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initWithiOSBundleIdentifier:v10 macOSBundleIdentifier:v11 watchOSBundleIdentifier:v12 tvOSBundleIdentifier:v13];

  return v14;
}

@end
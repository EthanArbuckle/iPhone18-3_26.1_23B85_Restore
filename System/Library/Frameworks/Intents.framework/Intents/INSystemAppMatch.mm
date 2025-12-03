@interface INSystemAppMatch
+ (id)matchWithiOSBundleIdentifier:(id)identifier macOSBundleIdentifier:(id)bundleIdentifier watchOSBundleIdentifier:(id)sBundleIdentifier tvOSBundleIdentifier:(id)oSBundleIdentifier;
- (BOOL)appIsUnavailableOnCurrentPlatform;
- (INSystemAppMatch)initWithiOSBundleIdentifier:(id)identifier macOSBundleIdentifier:(id)bundleIdentifier watchOSBundleIdentifier:(id)sBundleIdentifier tvOSBundleIdentifier:(id)oSBundleIdentifier;
@end

@implementation INSystemAppMatch

- (BOOL)appIsUnavailableOnCurrentPlatform
{
  bundleIdentifierForCurrentPlatform = [(INSystemAppMatch *)self bundleIdentifierForCurrentPlatform];
  v3 = bundleIdentifierForCurrentPlatform == 0;

  return v3;
}

- (INSystemAppMatch)initWithiOSBundleIdentifier:(id)identifier macOSBundleIdentifier:(id)bundleIdentifier watchOSBundleIdentifier:(id)sBundleIdentifier tvOSBundleIdentifier:(id)oSBundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  sBundleIdentifierCopy = sBundleIdentifier;
  oSBundleIdentifierCopy = oSBundleIdentifier;
  v25.receiver = self;
  v25.super_class = INSystemAppMatch;
  v14 = [(INSystemAppMatch *)&v25 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    iOSBundleIdentifier = v14->_iOSBundleIdentifier;
    v14->_iOSBundleIdentifier = v15;

    v17 = [bundleIdentifierCopy copy];
    macOSBundleIdentifier = v14->_macOSBundleIdentifier;
    v14->_macOSBundleIdentifier = v17;

    v19 = [sBundleIdentifierCopy copy];
    watchOSBundleIdentifier = v14->_watchOSBundleIdentifier;
    v14->_watchOSBundleIdentifier = v19;

    v21 = [oSBundleIdentifierCopy copy];
    tvOSBundleIdentifier = v14->_tvOSBundleIdentifier;
    v14->_tvOSBundleIdentifier = v21;

    v23 = v14;
  }

  return v14;
}

+ (id)matchWithiOSBundleIdentifier:(id)identifier macOSBundleIdentifier:(id)bundleIdentifier watchOSBundleIdentifier:(id)sBundleIdentifier tvOSBundleIdentifier:(id)oSBundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  sBundleIdentifierCopy = sBundleIdentifier;
  oSBundleIdentifierCopy = oSBundleIdentifier;
  v14 = [[self alloc] initWithiOSBundleIdentifier:identifierCopy macOSBundleIdentifier:bundleIdentifierCopy watchOSBundleIdentifier:sBundleIdentifierCopy tvOSBundleIdentifier:oSBundleIdentifierCopy];

  return v14;
}

@end
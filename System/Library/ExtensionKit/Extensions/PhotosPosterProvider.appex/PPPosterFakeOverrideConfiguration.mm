@interface PPPosterFakeOverrideConfiguration
- (PPPosterFakeOverrideConfiguration)initWithAssetIdentifier:(id)identifier;
@end

@implementation PPPosterFakeOverrideConfiguration

- (PPPosterFakeOverrideConfiguration)initWithAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PPPosterFakeOverrideConfiguration;
  v6 = [(PPPosterFakeOverrideConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetIdentifier, identifier);
  }

  return v7;
}

@end
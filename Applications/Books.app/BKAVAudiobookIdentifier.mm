@interface BKAVAudiobookIdentifier
+ (id)audiobookIdentifierWithAssetID:(id)d;
- (BKAVAudiobookIdentifier)initWithAssetID:(id)d;
- (BOOL)isEqualToIdentifier:(id)identifier;
- (id)copy;
@end

@implementation BKAVAudiobookIdentifier

+ (id)audiobookIdentifierWithAssetID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithAssetID:dCopy];

  return v5;
}

- (BKAVAudiobookIdentifier)initWithAssetID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BKAVAudiobookIdentifier;
  v5 = [(BKAVAudiobookIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    assetID = v5->_assetID;
    v5->_assetID = v6;
  }

  return v5;
}

- (BOOL)isEqualToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetID = [(BKAVAudiobookIdentifier *)self assetID];
    assetID2 = [identifierCopy assetID];
    v7 = [assetID isEqual:assetID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  assetID = [(BKAVAudiobookIdentifier *)self assetID];
  v5 = [assetID copy];
  [v3 setAssetID:v5];

  return v3;
}

@end
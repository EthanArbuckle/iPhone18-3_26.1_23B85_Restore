@interface BKAVAudiobookIdentifier
+ (id)audiobookIdentifierWithAssetID:(id)a3;
- (BKAVAudiobookIdentifier)initWithAssetID:(id)a3;
- (BOOL)isEqualToIdentifier:(id)a3;
- (id)copy;
@end

@implementation BKAVAudiobookIdentifier

+ (id)audiobookIdentifierWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAssetID:v4];

  return v5;
}

- (BKAVAudiobookIdentifier)initWithAssetID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKAVAudiobookIdentifier;
  v5 = [(BKAVAudiobookIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assetID = v5->_assetID;
    v5->_assetID = v6;
  }

  return v5;
}

- (BOOL)isEqualToIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(BKAVAudiobookIdentifier *)self assetID];
    v6 = [v4 assetID];
    v7 = [v5 isEqual:v6];
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
  v4 = [(BKAVAudiobookIdentifier *)self assetID];
  v5 = [v4 copy];
  [v3 setAssetID:v5];

  return v3;
}

@end
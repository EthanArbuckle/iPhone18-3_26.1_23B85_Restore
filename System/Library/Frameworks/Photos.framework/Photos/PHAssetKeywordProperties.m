@interface PHAssetKeywordProperties
- (PHAssetKeywordProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetKeywordProperties

- (PHAssetKeywordProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PHAssetKeywordProperties;
  v9 = [(PHAssetKeywordProperties *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = MEMORY[0x1E695DFD8];
    v12 = [v7 objectForKeyedSubscript:@"keywordTitles"];
    v13 = [v11 setWithArray:v12];
    keywordTitles = v10->_keywordTitles;
    v10->_keywordTitles = v13;
  }

  return v10;
}

@end
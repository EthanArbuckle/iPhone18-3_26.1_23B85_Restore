@interface BSUIAsset
- (BOOL)hasRACSupport;
- (BOOL)isFinished;
- (BOOL)isLocal;
- (BOOL)isMemberOfSamplesCollection;
- (BOOL)isNew;
- (BOOL)isNonLocalSample;
- (BOOL)isSample;
- (BOOL)isSupplementalContent;
- (BSUIAsset)initWithDictionary:(id)a3;
- (NSDate)lastEngagedDate;
- (NSDate)lastOpenDate;
- (NSDate)purchasedDate;
- (NSDictionary)offer;
- (NSNumber)contentType;
- (NSNumber)fileSize;
- (NSNumber)readingProgress;
- (NSNumber)seriesContentType;
- (NSNumber)seriesItemCount;
- (NSString)assetID;
- (NSString)author;
- (NSString)buyParameters;
- (NSString)cloudAssetType;
- (NSString)coverURL;
- (NSString)fileURL;
- (NSString)formattedPrice;
- (NSString)formattedReadingProgress;
- (NSString)pageProgressionDirection;
- (NSString)sampleURL;
- (NSString)seriesID;
- (NSString)storeID;
- (NSString)storeURL;
- (NSString)title;
- (id)description;
- (id)toDictionary;
- (void)_updateAssetDictionaryReadingProgressAndIsNewOverrides;
@end

@implementation BSUIAsset

- (BSUIAsset)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSUIAsset;
  v5 = [(BSUIAsset *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v6;
  }

  return v5;
}

- (NSString)assetID
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"assetID"];
  v5 = BUDynamicCast();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(BSUIAsset *)self storeID];
  }

  v8 = v7;

  return v8;
}

- (NSString)storeID
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"storeId"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)seriesID
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"seriesId"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)title
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"title"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)author
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"author"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDictionary)offer
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"offer"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)formattedPrice
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"priceFormatted"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)buyParameters
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"buyParameters"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)sampleURL
{
  v2 = [(BSUIAsset *)self assetDictionary];
  v3 = [v2 objectForKeyedSubscript:@"downloadSampleURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 standardizedURL];
      v4 = [v5 absoluteString];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)storeURL
{
  v2 = [(BSUIAsset *)self assetDictionary];
  v3 = [v2 objectForKeyedSubscript:@"storeURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 standardizedURL];
      v4 = [v5 absoluteString];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSNumber)readingProgress
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"readingProgress"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)formattedReadingProgress
{
  v3 = [(BSUIAsset *)self readingProgress];
  v4 = [NSString bc_formattedReadingProgress:v3 isFinished:[(BSUIAsset *)self isFinished]];

  return v4;
}

- (NSNumber)contentType
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"contentType"];
  v5 = BUDynamicCast();

  return v5;
}

- (BOOL)isFinished
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isFinished"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isNew
{
  v3 = [(BSUIAsset *)self readingProgress];
  objc_opt_class();
  v4 = [(BSUIAsset *)self assetDictionary];
  v5 = [v4 objectForKeyedSubscript:@"isNew"];
  v6 = BUDynamicCast();
  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    [v3 floatValue];
    v7 = v8 == 0.0;
  }

  return v7;
}

- (BOOL)isSample
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isSample"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isNonLocalSample
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isNonLocalSample"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isMemberOfSamplesCollection
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isMemberOfSamplesCollection"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isLocal
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isLocal"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isSupplementalContent
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isSupplementalContent"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)hasRACSupport
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"hasRACSupport"];
  v5 = BUDynamicCast();
  v6 = [v5 BOOLValue];

  return v6;
}

- (NSDate)lastEngagedDate
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"lastEngagedDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDate)lastOpenDate
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"lastOpenDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDate)purchasedDate
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"purchasedDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSNumber)fileSize
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"fileSize"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)fileURL
{
  v2 = [(BSUIAsset *)self assetDictionary];
  v3 = [v2 objectForKeyedSubscript:@"fileURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 standardizedURL];
      v4 = [v5 absoluteString];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)pageProgressionDirection
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"pageProgressionDirection"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)coverURL
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"coverURL"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)cloudAssetType
{
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKey:@"cloudAssetType"];

  if (v4)
  {
    v5 = [(BSUIAsset *)self assetDictionary];
    v6 = [v5 objectForKeyedSubscript:@"cloudAssetType"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)seriesItemCount
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"seriesItemCount"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSNumber)seriesContentType
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"seriesContentType"];
  v5 = BUDynamicCast();

  return v5;
}

- (void)_updateAssetDictionaryReadingProgressAndIsNewOverrides
{
  objc_opt_class();
  v3 = [(BSUIAsset *)self assetDictionary];
  v4 = [v3 objectForKeyedSubscript:@"formattedReadingProgress"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v5 = [(BSUIAsset *)self assetDictionary];
  v6 = [v5 objectForKeyedSubscript:@"isNew"];
  v7 = BUDynamicCast();

  v8 = [(BSUIAsset *)self formattedReadingProgress];
  v9 = [(BSUIAsset *)self isNew];
  if (![v13 isEqualToString:v8] || v9 != objc_msgSend(v7, "BOOLValue"))
  {
    v10 = [(BSUIAsset *)self assetDictionary];
    v11 = [v10 mutableCopy];

    [v11 setObject:v8 forKeyedSubscript:@"formattedReadingProgress"];
    v12 = [NSNumber numberWithBool:v9];
    [v11 setObject:v12 forKeyedSubscript:@"isNew"];

    [(BSUIAsset *)self setAssetDictionary:v11];
  }
}

- (id)toDictionary
{
  [(BSUIAsset *)self _updateAssetDictionaryReadingProgressAndIsNewOverrides];

  return [(BSUIAsset *)self assetDictionary];
}

- (id)description
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2F86C;
  v13 = sub_2F87C;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14 = [NSMutableString stringWithFormat:@"<%@(%p)", v4, self];

  v5 = [(BSUIAsset *)self toDictionary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2F884;
  v8[3] = &unk_387FD8;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v10[5] stringByAppendingString:@">"];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end
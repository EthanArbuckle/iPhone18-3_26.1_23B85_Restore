@interface BSUIAsset
- (BOOL)hasRACSupport;
- (BOOL)isFinished;
- (BOOL)isLocal;
- (BOOL)isMemberOfSamplesCollection;
- (BOOL)isNew;
- (BOOL)isNonLocalSample;
- (BOOL)isSample;
- (BOOL)isSupplementalContent;
- (BSUIAsset)initWithDictionary:(id)dictionary;
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

- (BSUIAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BSUIAsset;
  v5 = [(BSUIAsset *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v6;
  }

  return v5;
}

- (NSString)assetID
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"assetID"];
  v5 = BUDynamicCast();
  v6 = v5;
  if (v5)
  {
    storeID = v5;
  }

  else
  {
    storeID = [(BSUIAsset *)self storeID];
  }

  v8 = storeID;

  return v8;
}

- (NSString)storeID
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"storeId"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)seriesID
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"seriesId"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)title
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"title"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)author
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"author"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDictionary)offer
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"offer"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)formattedPrice
{
  objc_opt_class();
  offer = [(BSUIAsset *)self offer];
  v4 = [offer objectForKeyedSubscript:@"priceFormatted"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)buyParameters
{
  objc_opt_class();
  offer = [(BSUIAsset *)self offer];
  v4 = [offer objectForKeyedSubscript:@"buyParameters"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)sampleURL
{
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v3 = [assetDictionary objectForKeyedSubscript:@"downloadSampleURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      standardizedURL = [v3 standardizedURL];
      absoluteString = [standardizedURL absoluteString];
    }

    else
    {
      absoluteString = 0;
    }
  }

  return absoluteString;
}

- (NSString)storeURL
{
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v3 = [assetDictionary objectForKeyedSubscript:@"storeURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      standardizedURL = [v3 standardizedURL];
      absoluteString = [standardizedURL absoluteString];
    }

    else
    {
      absoluteString = 0;
    }
  }

  return absoluteString;
}

- (NSNumber)readingProgress
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"readingProgress"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)formattedReadingProgress
{
  readingProgress = [(BSUIAsset *)self readingProgress];
  v4 = [NSString bc_formattedReadingProgress:readingProgress isFinished:[(BSUIAsset *)self isFinished]];

  return v4;
}

- (NSNumber)contentType
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"contentType"];
  v5 = BUDynamicCast();

  return v5;
}

- (BOOL)isFinished
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isFinished"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNew
{
  readingProgress = [(BSUIAsset *)self readingProgress];
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v5 = [assetDictionary objectForKeyedSubscript:@"isNew"];
  v6 = BUDynamicCast();
  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    [readingProgress floatValue];
    v7 = v8 == 0.0;
  }

  return v7;
}

- (BOOL)isSample
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isSample"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNonLocalSample
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isNonLocalSample"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isMemberOfSamplesCollection
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isMemberOfSamplesCollection"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLocal
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isLocal"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSupplementalContent
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"isSupplementalContent"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasRACSupport
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"hasRACSupport"];
  v5 = BUDynamicCast();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSDate)lastEngagedDate
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"lastEngagedDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDate)lastOpenDate
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"lastOpenDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSDate)purchasedDate
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"purchasedDate"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSNumber)fileSize
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"fileSize"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)fileURL
{
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v3 = [assetDictionary objectForKeyedSubscript:@"fileURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      standardizedURL = [v3 standardizedURL];
      absoluteString = [standardizedURL absoluteString];
    }

    else
    {
      absoluteString = 0;
    }
  }

  return absoluteString;
}

- (NSString)pageProgressionDirection
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"pageProgressionDirection"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)coverURL
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"coverURL"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)cloudAssetType
{
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKey:@"cloudAssetType"];

  if (v4)
  {
    assetDictionary2 = [(BSUIAsset *)self assetDictionary];
    v6 = [assetDictionary2 objectForKeyedSubscript:@"cloudAssetType"];
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
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"seriesItemCount"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSNumber)seriesContentType
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"seriesContentType"];
  v5 = BUDynamicCast();

  return v5;
}

- (void)_updateAssetDictionaryReadingProgressAndIsNewOverrides
{
  objc_opt_class();
  assetDictionary = [(BSUIAsset *)self assetDictionary];
  v4 = [assetDictionary objectForKeyedSubscript:@"formattedReadingProgress"];
  v13 = BUDynamicCast();

  objc_opt_class();
  assetDictionary2 = [(BSUIAsset *)self assetDictionary];
  v6 = [assetDictionary2 objectForKeyedSubscript:@"isNew"];
  v7 = BUDynamicCast();

  formattedReadingProgress = [(BSUIAsset *)self formattedReadingProgress];
  isNew = [(BSUIAsset *)self isNew];
  if (![v13 isEqualToString:formattedReadingProgress] || isNew != objc_msgSend(v7, "BOOLValue"))
  {
    assetDictionary3 = [(BSUIAsset *)self assetDictionary];
    v11 = [assetDictionary3 mutableCopy];

    [v11 setObject:formattedReadingProgress forKeyedSubscript:@"formattedReadingProgress"];
    v12 = [NSNumber numberWithBool:isNew];
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

  toDictionary = [(BSUIAsset *)self toDictionary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2F884;
  v8[3] = &unk_387FD8;
  v8[4] = &v9;
  [toDictionary enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v10[5] stringByAppendingString:@">"];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end
@interface NSDictionary
- (BOOL)hasAssetTypes;
- (BOOL)hasSeriesTypes;
- (NSArray)series_genres;
- (NSNumber)series_isAudiobook;
- (NSNumber)series_isExplicit;
- (NSString)series_adamId;
- (NSString)series_author;
- (NSString)series_formattedPrice;
- (NSString)series_genre;
- (NSString)series_title;
@end

@implementation NSDictionary

- (NSString)series_genre
{
  v2 = [(NSDictionary *)self series_genres];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)series_genres
{
  objc_opt_class();
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"genres"];
  v4 = BUDynamicCast();

  v5 = sub_12B4C(v4);

  return v5;
}

- (NSString)series_adamId
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"id"];
  v3 = BUProtocolCast();

  v4 = [v3 adamIDStringValue];

  return v4;
}

- (NSString)series_title
{
  objc_opt_class();
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"name"];
  v4 = BUDynamicCast();

  return v4;
}

- (NSString)series_author
{
  objc_opt_class();
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"artistName"];
  v4 = BUDynamicCast();

  return v4;
}

- (NSNumber)series_isExplicit
{
  v2 = [AEUserPublishingProductProfile _isContentRatingExplicitForInfo:self];

  return [NSNumber numberWithBool:v2];
}

- (NSNumber)series_isAudiobook
{
  [(NSDictionary *)self series_genres];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = &__kCFBooleanTrue;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v9 + 1) + 8 * v7) isEqualToString:{@"Audiobooks", v9}])
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        v6 = &__kCFBooleanFalse;
        break;
      }
    }
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (NSString)series_formattedPrice
{
  objc_opt_class();
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"offers"];
  v4 = BUDynamicCast();

  if (!v4)
  {
    v11 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  v5 = [v4 firstObject];
  v6 = BUDynamicCast();

  if (v6)
  {
    objc_opt_class();
    v7 = [v6 objectForKeyedSubscript:@"price"];
    v8 = BUDynamicCast();

    if (v8 && ([v8 isEqualToNumber:&off_2E5840] & 1) != 0)
    {
      v9 = IMCommonCoreBundle();
      v10 = [v9 localizedStringForKey:@"GET" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    }

    else
    {
      objc_opt_class();
      v12 = [v6 objectForKeyedSubscript:@"priceFormatted"];
      v9 = BUDynamicCast();

      if (!v9)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v10 = v9;
      v9 = v10;
    }

    v11 = v10;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

- (BOOL)hasSeriesTypes
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:BKSeriesManagerSeriesTypeBookSeries[0]];
  v4 = [(NSDictionary *)self objectForKeyedSubscript:BKSeriesManagerSeriesTypeAudiobookSeries];
  if ([v3 count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 count] != 0;
  }

  return v5;
}

- (BOOL)hasAssetTypes
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:BKSeriesManagerAssetTypeBooks[0]];
  v4 = [(NSDictionary *)self objectForKeyedSubscript:BKSeriesManagerAssetTypeAudiobooks[0]];
  if ([v3 count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 count] != 0;
  }

  return v5;
}

@end
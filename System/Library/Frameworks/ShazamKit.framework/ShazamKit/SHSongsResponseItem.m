@interface SHSongsResponseItem
- (BOOL)hasHaptics;
- (BOOL)isExplicitContent;
- (NSArray)genreNames;
- (NSArray)lyricsRelationIDs;
- (NSArray)musicVideoRelationIDs;
- (NSDate)releaseDate;
- (NSDictionary)spatialAttributes;
- (NSNumber)durationInMilliseconds;
- (NSString)albumName;
- (NSString)appleMusicID;
- (NSString)appleMusicURLString;
- (NSString)isrc;
- (NSURL)artworkDictionary;
- (NSURL)hapticsURL;
- (SHSongsResponseItem)initWithSongItemDictionary:(id)a3;
- (id)extractIDsFromRelation:(id)a3;
- (id)rawResponseDataWithCampaignToken:(id)a3;
@end

@implementation SHSongsResponseItem

- (SHSongsResponseItem)initWithSongItemDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHSongsResponseItem;
  v6 = [(SHSongsResponseItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songItemDictionary, a3);
  }

  return v7;
}

- (NSString)appleMusicID
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"id"];

  return v3;
}

- (NSURL)artworkDictionary
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"artwork"];

  return v4;
}

- (NSString)appleMusicURLString
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"url"];

  return v4;
}

- (NSURL)hapticsURL
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"hapticsAssetUrl"];

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasHaptics
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"hasHaptics"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (NSNumber)durationInMilliseconds
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"durationInMillis"];

  return v4;
}

- (NSDictionary)spatialAttributes
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"spatialOffsets"];

  return v4;
}

- (NSArray)genreNames
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"genreNames"];

  return v4;
}

- (NSDate)releaseDate
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"releaseDate"];

  if (v4)
  {
    v5 = objc_alloc_init(NSISO8601DateFormatter);
    [v5 setFormatOptions:275];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isExplicitContent
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"contentRating"];
  v5 = [v4 uppercaseString];
  v6 = [v5 isEqualToString:@"EXPLICIT"];

  return v6;
}

- (NSString)albumName
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"albumName"];

  return v4;
}

- (NSString)isrc
{
  v2 = [(SHSongsResponseItem *)self songItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"isrc"];

  return v4;
}

- (NSArray)lyricsRelationIDs
{
  v3 = [(SHSongsResponseItem *)self songItemDictionary];
  v4 = [v3 objectForKeyedSubscript:@"relationships"];
  v5 = [v4 objectForKeyedSubscript:@"public-lyrics"];

  v6 = [(SHSongsResponseItem *)self extractIDsFromRelation:v5];

  return v6;
}

- (NSArray)musicVideoRelationIDs
{
  v3 = [(SHSongsResponseItem *)self songItemDictionary];
  v4 = [v3 objectForKeyedSubscript:@"relationships"];
  v5 = [v4 objectForKeyedSubscript:@"music-videos"];

  v6 = [(SHSongsResponseItem *)self extractIDsFromRelation:v5];

  return v6;
}

- (id)rawResponseDataWithCampaignToken:(id)a3
{
  v4 = a3;
  v5 = [(SHSongsResponseItem *)self songItemDictionary];
  v6 = [v5 mutableCopy];

  v7 = [(SHSongsResponseItem *)self appleMusicURLString];
  v8 = [v7 copy];

  if (v8)
  {
    v9 = [[SHTokenizedURL alloc] initWithString:v8];
    if ([v9 containsTokens])
    {
      [v9 updateToken:5 withValue:v4];
    }

    v10 = [v9 URLRepresentation];

    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"attributes"];
      v12 = [v11 mutableCopy];

      v13 = [v9 URLRepresentation];
      v14 = [v13 absoluteString];
      [v12 setValue:v14 forKey:@"url"];

      v15 = [v12 copy];
      [v6 setValue:v15 forKey:@"attributes"];
    }
  }

  v16 = [v6 copy];
  v22 = 0;
  v17 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:&v22];
  v18 = v22;

  if (v18)
  {
    v19 = sh_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SHSongsResponseItem *)self appleMusicID];
      *buf = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error occured with serializing song response for AdamID %@. Error: %@", buf, 0x16u);
    }
  }

  return v17;
}

- (id)extractIDsFromRelation:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"data"];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"id", v15}];

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"id"];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end
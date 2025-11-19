@interface SHShazamResponseItem
- (NSArray)songRelationIDs;
- (NSNumber)confidence;
- (NSNumber)frequencySkew;
- (NSNumber)matchOffset;
- (NSNumber)shazamCount;
- (NSNumber)speedSkew;
- (NSString)artistName;
- (NSString)shazamID;
- (NSString)title;
- (NSURL)artworkURL;
- (NSURL)shazamURL;
- (SHShazamResponseItem)initWithShazamItemDictionary:(id)a3;
- (id)extractIDsFromRelation:(id)a3;
@end

@implementation SHShazamResponseItem

- (SHShazamResponseItem)initWithShazamItemDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHShazamResponseItem;
  v6 = [(SHShazamResponseItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shazamItemDictionary, a3);
  }

  return v7;
}

- (NSString)shazamID
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"id"];

  return v3;
}

- (NSURL)shazamURL
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"shazamUrl"];

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

- (NSString)title
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"name"];

  return v4;
}

- (NSString)artistName
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"artistName"];

  return v4;
}

- (NSNumber)shazamCount
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"shazamCount"];

  return v4;
}

- (NSURL)artworkURL
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"artwork"];

  v5 = [v4 objectForKeyedSubscript:@"url"];
  v6 = [v4 objectForKeyedSubscript:@"width"];
  v7 = [v4 objectForKeyedSubscript:@"height"];
  if (v5)
  {
    v8 = [NSString stringWithFormat:@"%@", v6];
    v9 = [v5 stringByReplacingOccurrencesOfString:@"{w}" withString:v8];

    v10 = [NSString stringWithFormat:@"%@", v7];
    v11 = [v9 stringByReplacingOccurrencesOfString:@"{h}" withString:v10];

    v5 = [NSURL URLWithString:v11];
  }

  return v5;
}

- (NSNumber)matchOffset
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"meta"];
  v4 = [v3 objectForKeyedSubscript:@"matchOffset"];

  return v4;
}

- (NSNumber)confidence
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"meta"];
  v4 = [v3 objectForKeyedSubscript:@"confidence"];

  return v4;
}

- (NSNumber)speedSkew
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"meta"];
  v4 = [v3 objectForKeyedSubscript:@"speedSkew"];

  return v4;
}

- (NSNumber)frequencySkew
{
  v2 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"meta"];
  v4 = [v3 objectForKeyedSubscript:@"frequencySkew"];

  return v4;
}

- (NSArray)songRelationIDs
{
  v3 = [(SHShazamResponseItem *)self shazamItemDictionary];
  v4 = [v3 objectForKeyedSubscript:@"relationships"];
  v5 = [v4 objectForKeyedSubscript:@"songs"];

  v6 = [(SHShazamResponseItem *)self extractIDsFromRelation:v5];

  return v6;
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
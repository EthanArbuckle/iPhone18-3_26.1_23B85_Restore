@interface AMSMarketingItem
- (AMSMarketingItem)initWithDictionary:(id)dictionary;
- (NSArray)itemActions;
- (NSArray)relatedContent;
- (NSArray)videos;
- (NSDictionary)artworkDictionary;
- (NSString)badge;
- (NSString)campaignID;
- (NSString)itemID;
- (NSString)serviceType;
- (NSString)subtitle;
- (NSString)templateID;
- (NSString)title;
- (NSString)type;
- (id)video;
@end

@implementation AMSMarketingItem

- (AMSMarketingItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AMSMarketingItem;
  v6 = [(AMSMarketingItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValues, dictionary);
  }

  return v7;
}

- (NSDictionary)artworkDictionary
{
  v3 = off_1F0719CD8(off_1F0719C70);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = [v6 ams_mapWithTransform:&__block_literal_global_77];
      goto LABEL_6;
    }
  }

  else
  {

    v6 = 0;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

AMSPair *__37__AMSMarketingItem_artworkDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    if (v9 && v7)
    {
      v10 = [[AMSMediaArtwork alloc] initWithDictionary:v9];
      v11 = [[AMSPair alloc] initWithFirst:v7 second:v10];

      goto LABEL_10;
    }
  }

  else
  {

    v9 = 0;
  }

  v11 = [[AMSPair alloc] initWithFirst:0 second:0];
LABEL_10:

  return v11;
}

- (NSString)badge
{
  v3 = off_1F0719CD8(off_1F0719C78);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)campaignID
{
  v3 = off_1F0719CD8(off_1F0719C80);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)itemID
{
  v2 = qword_1F0719C58;
  rawValues = [(AMSMarketingItem *)self rawValues];
  v4 = [rawValues objectForKeyedSubscript:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)itemActions
{
  v3 = off_1F0719C88;
  v4 = off_1F0719CD8;
  v5 = off_1F0719CD8(v3);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v7 = [rawValues valueForKeyPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = qword_1F0719C90;
  v10 = v4(v9);
  rawValues2 = [(AMSMarketingItem *)self rawValues];
  v12 = [rawValues2 valueForKeyPath:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__AMSMarketingItem_itemActions__block_invoke;
    v16[3] = &unk_1E73B8BA0;
    v17 = v13;
    v14 = [v8 ams_mapWithTransform:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

AMSMarketingItemAction *__31__AMSMarketingItem_itemActions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:qword_1F0719C90];
  v4 = [AMSMarketingItemAction alloc];
  v5 = [v3 copy];
  v6 = [(AMSMarketingItemAction *)v4 initWithDictionary:v5];

  return v6;
}

- (NSArray)relatedContent
{
  v3 = off_1F0719D80();
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)serviceType
{
  v3 = off_1F0719CD8(off_1F0719C98);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)subtitle
{
  v3 = off_1F0719CD8(off_1F0719CA0);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)templateID
{
  v3 = off_1F0719CD8(off_1F0719CA8);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)title
{
  v3 = off_1F0719CD8(off_1F0719CB8);
  rawValues = [(AMSMarketingItem *)self rawValues];
  v5 = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)type
{
  v2 = qword_1F0719C68;
  rawValues = [(AMSMarketingItem *)self rawValues];
  v4 = [rawValues objectForKeyedSubscript:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)videos
{
  v3 = off_1F0719CD8(off_1F0719CC8);
  rawValues = [(AMSMarketingItem *)self rawValues];
  allValues = [rawValues valueForKeyPath:v3];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v6 = allValues;

  if (v6)
  {
    allValues = [v6 allValues];
    v7 = [allValues ams_mapWithTransformIgnoresNil:&__block_literal_global_10_0];
LABEL_5:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

AMSMediaVideo *__26__AMSMarketingItem_videos__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;

    if (v3)
    {
      v4 = [[AMSMediaVideo alloc] initWithDictionary:v3];
      goto LABEL_6;
    }
  }

  else
  {

    v3 = 0;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)video
{
  videos = [(AMSMarketingItem *)self videos];
  firstObject = [videos firstObject];

  return firstObject;
}

@end
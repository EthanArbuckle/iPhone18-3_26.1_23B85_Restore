@interface AMSLookupItem
- (AMSLookupItem)initWithCoder:(id)coder;
- (AMSLookupItem)initWithLookupDictionary:(id)dictionary;
- (BOOL)isPOIBased;
- (NSArray)artwork;
- (NSArray)categoryNames;
- (NSArray)offers;
- (NSNumber)iTunesStoreIdentifier;
- (NSString)artistName;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)itemKind;
- (NSString)offerName;
- (NSURL)productPageURL;
- (float)userRating;
- (float)userRatingForCurrentVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)numberOfUserRatings;
- (int64_t)numberOfUserRatingsForCurrentVersion;
@end

@implementation AMSLookupItem

- (AMSLookupItem)initWithLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = AMSLookupItem;
    v6 = [(AMSLookupItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_itemDictionary, dictionary);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)artistName
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"artistName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)artwork
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_itemDictionary objectForKey:@"artwork"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, 0}];
    }

    else
    {
      v5 = 0;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[AMSLookupItemArtwork alloc] initWithArtworkDictionary:v11];
          if (v12)
          {
            [array addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (NSString)bundleIdentifier
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"bundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)categoryNames
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"genreNames"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)displayName
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isPOIBased
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"poiBased"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)itemKind
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"kind"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)iTunesStoreIdentifier
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:
  v5 = [v4 copy];

  return v5;
}

- (int64_t)numberOfUserRatings
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ratingCount"];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)numberOfUserRatingsForCurrentVersion
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ratingCountCurrentVersion"];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSString)offerName
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"offerName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)offers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_itemDictionary objectForKey:@"offers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [AMSLookupItemOffer alloc];
            v12 = [(AMSLookupItemOffer *)v11 initWithLookupDictionary:v10, v14];
            if (v12)
            {
              [v3 addObject:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (NSURL)productPageURL
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (float)userRating
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"value"];
  }

  else
  {
    v3 = 0;
  }

  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 floatValue];
    v4 = v5;
  }

  return v4;
}

- (float)userRatingForCurrentVersion
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"valueCurrentVersion"];
  }

  else
  {
    v3 = 0;
  }

  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 floatValue];
    v4 = v5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSDictionary *)self->_itemDictionary copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (AMSLookupItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AMSLookupItem;
  v5 = [(AMSLookupItem *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"AMSEncodingDictionary"];
    v7 = [v6 copy];
    itemDictionary = v5->_itemDictionary;
    v5->_itemDictionary = v7;
  }

  return v5;
}

@end
@interface LPProductMetadata
- (BOOL)isEqual:(id)a3;
- (LPProductMetadata)init;
- (LPProductMetadata)initWithCoder:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPProductMetadata

- (LPProductMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPProductMetadata;
  v2 = [(LPProductMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LPProductMetadata *)self init];
  if (v5)
  {
    v6 = stringForKey(v4, @"LPMetadataProductPluralTitle");
    pluralTitle = v5->_pluralTitle;
    v5->_pluralTitle = v6;

    v8 = arrayOfDictionariesForKey(v4, @"LPMetadataProductPrices");
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [LPPriceMetadata alloc];
          v16 = [(LPPriceMetadata *)v15 _initWithDictionary:v14, v20];
          if (v16)
          {
            [(NSArray *)v9 addObject:v16];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    prices = v5->_prices;
    v5->_prices = v9;

    v18 = v5;
  }

  return v5;
}

- (LPProductMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPProductMetadata;
  v5 = [(LPProductMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"pluralTitle");
    pluralTitle = v5->_pluralTitle;
    v5->_pluralTitle = v6;

    v8 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"prices"];
    prices = v5->_prices;
    v5->_prices = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_pluralTitle forKey:@"pluralTitle"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_prices forKey:@"prices"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPProductMetadata;
  if ([(LPProductMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if (objectsAreEqual_0(v6[2], self->_pluralTitle))
      {
        v5 = objectsAreEqual_0(v6[1], self->_prices);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPProductMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPProductMetadata *)self pluralTitle];
    [(LPProductMetadata *)v4 setPluralTitle:v5];

    v6 = [(LPProductMetadata *)self prices];
    [(LPProductMetadata *)v4 setPrices:v6];

    v7 = v4;
  }

  return v4;
}

@end
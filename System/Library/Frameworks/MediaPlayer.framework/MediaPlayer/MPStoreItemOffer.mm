@interface MPStoreItemOffer
- (BOOL)isEqual:(id)equal;
- (MPStoreItemOffer)initWithCoder:(id)coder;
- (MPStoreItemOffer)initWithLookupDictionary:(id)dictionary;
- (NSArray)assets;
- (NSNumber)price;
- (NSString)buyParameters;
- (NSString)formattedPrice;
- (NSString)offerType;
- (id)actionTextForType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPStoreItemOffer

- (id)actionTextForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v5 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"actionText"];
    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:typeCopy];
      if (_NSIsNSString())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (NSNumber)price
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"price"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)offerType
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"type"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)formattedPrice
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"priceFormatted"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)buyParameters
{
  v3 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"buyParams"];
  if ((_NSIsNSString() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"action-params"];

    if (_NSIsNSString())
    {
      v3 = v4;
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)assets
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"assets"];
  if (_NSIsNSArray())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [MPStoreItemOfferAsset alloc];
            v11 = [(MPStoreItemOfferAsset *)v10 initWithLookupDictionary:v9, v13];
            if (v11)
            {
              if (!v6)
              {
                v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
              }

              [v6 addObject:v11];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeObject:self->_lookupDictionary forKey:@"MPStoreItemOfferLookupDictionary"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"Only keyed archiving is supported."];
  }
}

- (MPStoreItemOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MPStoreItemOffer;
  v5 = [(MPStoreItemOffer *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"MPStoreItemOfferLookupDictionary"];
    if (_NSIsNSDictionary())
    {
      v7 = [v6 copy];
      lookupDictionary = v5->_lookupDictionary;
      v5->_lookupDictionary = v7;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  lookupDictionary = self->_lookupDictionary;
  if (lookupDictionary == equalCopy->_lookupDictionary)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSDictionary *)lookupDictionary isEqualToDictionary:?];
  }

LABEL_7:

  return v6;
}

- (MPStoreItemOffer)initWithLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MPStoreItemOffer;
  v5 = [(MPStoreItemOffer *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    lookupDictionary = v5->_lookupDictionary;
    v5->_lookupDictionary = v6;
  }

  return v5;
}

@end
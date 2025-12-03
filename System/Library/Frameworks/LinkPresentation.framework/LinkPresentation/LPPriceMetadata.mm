@interface LPPriceMetadata
- (BOOL)isEqual:(id)equal;
- (LPPriceMetadata)init;
- (LPPriceMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPPriceMetadata

- (LPPriceMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPPriceMetadata;
  v2 = [(LPPriceMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(LPPriceMetadata *)self init];
  if (v5)
  {
    v6 = stringForKey(dictionaryCopy, @"LPMetadataPriceAmount");
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = stringForKey(dictionaryCopy, @"LPMetadataPriceCurrency");
    currency = v5->_currency;
    v5->_currency = v8;

    v10 = v5;
  }

  return v5;
}

- (LPPriceMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = LPPriceMetadata;
  v5 = [(LPPriceMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"amount");
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = decodeStringForKey(coderCopy, @"currency");
    currency = v5->_currency;
    v5->_currency = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_amount forKey:@"amount"];
  [coderCopy _lp_encodeStringIfNotNil:self->_currency forKey:@"currency"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPPriceMetadata;
  if ([(LPPriceMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if (objectsAreEqual_0(v6[1], self->_amount))
      {
        v5 = objectsAreEqual_0(v6[2], self->_currency);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPPriceMetadata allocWithZone:zone];
  if (v4)
  {
    amount = [(LPPriceMetadata *)self amount];
    [(LPPriceMetadata *)v4 setAmount:amount];

    currency = [(LPPriceMetadata *)self currency];
    [(LPPriceMetadata *)v4 setCurrency:currency];

    v7 = v4;
  }

  return v4;
}

@end
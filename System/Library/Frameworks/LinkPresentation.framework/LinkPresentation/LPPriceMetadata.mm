@interface LPPriceMetadata
- (BOOL)isEqual:(id)a3;
- (LPPriceMetadata)init;
- (LPPriceMetadata)initWithCoder:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(LPPriceMetadata *)self init];
  if (v5)
  {
    v6 = stringForKey(v4, @"LPMetadataPriceAmount");
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = stringForKey(v4, @"LPMetadataPriceCurrency");
    currency = v5->_currency;
    v5->_currency = v8;

    v10 = v5;
  }

  return v5;
}

- (LPPriceMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPPriceMetadata;
  v5 = [(LPPriceMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"amount");
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = decodeStringForKey(v4, @"currency");
    currency = v5->_currency;
    v5->_currency = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_amount forKey:@"amount"];
  [v4 _lp_encodeStringIfNotNil:self->_currency forKey:@"currency"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPPriceMetadata;
  if ([(LPPriceMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPPriceMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPPriceMetadata *)self amount];
    [(LPPriceMetadata *)v4 setAmount:v5];

    v6 = [(LPPriceMetadata *)self currency];
    [(LPPriceMetadata *)v4 setCurrency:v6];

    v7 = v4;
  }

  return v4;
}

@end
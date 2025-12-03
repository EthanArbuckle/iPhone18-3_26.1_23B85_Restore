@interface AMSLookupItemOffer
- (AMSLookupItemOffer)initWithLookupDictionary:(id)dictionary;
- (NSNumber)price;
- (NSString)buyParameters;
- (NSString)formattedPrice;
- (NSString)offerType;
- (NSString)subscriptionType;
- (id)actionTextForType:(id)type;
@end

@implementation AMSLookupItemOffer

- (AMSLookupItemOffer)initWithLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AMSLookupItemOffer;
  v5 = [(AMSLookupItemOffer *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    lookupDictionary = v5->_lookupDictionary;
    v5->_lookupDictionary = v6;
  }

  return v5;
}

- (id)actionTextForType:(id)type
{
  typeCopy = type;
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v6 = [lookupDictionary objectForKey:@"actionText"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:typeCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)buyParameters
{
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v4 = [lookupDictionary objectForKey:@"buyParams"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    lookupDictionary2 = [(AMSLookupItemOffer *)self lookupDictionary];
    v5 = [lookupDictionary2 objectForKey:@"action-params"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = v4;

  return v4;
}

- (NSString)formattedPrice
{
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [lookupDictionary objectForKey:@"priceFormatted"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)offerType
{
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [lookupDictionary objectForKey:@"type"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)price
{
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [lookupDictionary objectForKey:@"price"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)subscriptionType
{
  lookupDictionary = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [lookupDictionary objectForKey:@"subscription"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
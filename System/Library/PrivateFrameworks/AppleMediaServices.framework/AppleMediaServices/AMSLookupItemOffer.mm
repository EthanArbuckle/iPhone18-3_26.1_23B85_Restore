@interface AMSLookupItemOffer
- (AMSLookupItemOffer)initWithLookupDictionary:(id)a3;
- (NSNumber)price;
- (NSString)buyParameters;
- (NSString)formattedPrice;
- (NSString)offerType;
- (NSString)subscriptionType;
- (id)actionTextForType:(id)a3;
@end

@implementation AMSLookupItemOffer

- (AMSLookupItemOffer)initWithLookupDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSLookupItemOffer;
  v5 = [(AMSLookupItemOffer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    lookupDictionary = v5->_lookupDictionary;
    v5->_lookupDictionary = v6;
  }

  return v5;
}

- (id)actionTextForType:(id)a3
{
  v4 = a3;
  v5 = [(AMSLookupItemOffer *)self lookupDictionary];
  v6 = [v5 objectForKey:@"actionText"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)buyParameters
{
  v3 = [(AMSLookupItemOffer *)self lookupDictionary];
  v4 = [v3 objectForKey:@"buyParams"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v6 = [(AMSLookupItemOffer *)self lookupDictionary];
    v5 = [v6 objectForKey:@"action-params"];

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
  v2 = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [v2 objectForKey:@"priceFormatted"];

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
  v2 = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [v2 objectForKey:@"type"];

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
  v2 = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [v2 objectForKey:@"price"];

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
  v2 = [(AMSLookupItemOffer *)self lookupDictionary];
  v3 = [v2 objectForKey:@"subscription"];

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
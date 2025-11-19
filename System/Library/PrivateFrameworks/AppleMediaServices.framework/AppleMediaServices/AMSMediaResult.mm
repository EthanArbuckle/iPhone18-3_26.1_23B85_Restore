@interface AMSMediaResult
- (AMSMediaResult)initWithResult:(id)a3;
- (NSArray)responseDataItems;
@end

@implementation AMSMediaResult

- (AMSMediaResult)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSMediaResult;
  v5 = [(AMSURLResult *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v7;
  }

  return v5;
}

- (NSArray)responseDataItems
{
  v2 = [(AMSMediaResult *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"data"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
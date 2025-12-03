@interface AMSMediaResult
- (AMSMediaResult)initWithResult:(id)result;
- (NSArray)responseDataItems;
@end

@implementation AMSMediaResult

- (AMSMediaResult)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = AMSMediaResult;
  v5 = [(AMSURLResult *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    object = [resultCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = object;
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
  responseDictionary = [(AMSMediaResult *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"data"];

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
@interface BYODDomainPurchaseEligibilityResult
- (BYODDomainPurchaseEligibilityResult)initWithDictionary:(id)dictionary;
@end

@implementation BYODDomainPurchaseEligibilityResult

- (BYODDomainPurchaseEligibilityResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = BYODDomainPurchaseEligibilityResult;
  v5 = [(BYODDomainPurchaseEligibilityResult *)&v8 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"purchaseAllowed"];
    v5->_purchaseAllowed = [v6 BOOLValue];
  }

  return v5;
}

@end
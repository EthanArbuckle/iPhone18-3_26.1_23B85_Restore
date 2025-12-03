@interface BYODDomainPurchaseEligibilityResponse
- (BYODDomainPurchaseEligibilityResponse)initWithDictionary:(id)dictionary;
- (BYODDomainPurchaseEligibilityResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODDomainPurchaseEligibilityResponse

- (BYODDomainPurchaseEligibilityResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODDomainPurchaseEligibilityResponse;
  v8 = [(BYODDomainPurchaseEligibilityResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  if (v8)
  {
    v9 = [(BYODDomainPurchaseEligibilityResponse *)v8 initWithDictionary:*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BYODDomainPurchaseEligibilityResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODDomainPurchaseEligibilityResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [BYODDomainPurchaseEligibilityResult alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v8 = [(BYODDomainPurchaseEligibilityResult *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end
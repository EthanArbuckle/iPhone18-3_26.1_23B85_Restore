@interface BYODGetPurchaseURLResponse
- (BYODGetPurchaseURLResponse)initWithDictionary:(id)dictionary;
- (BYODGetPurchaseURLResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODGetPurchaseURLResponse

- (BYODGetPurchaseURLResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODGetPurchaseURLResponse;
  v8 = [(BYODGetPurchaseURLResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  v9 = v8;
  if (v8 && [*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    v9 = [(BYODGetPurchaseURLResponse *)v9 initWithDictionary:*&v9->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v9;
}

- (BYODGetPurchaseURLResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODGetPurchaseURLResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [BYODPurchaseURL alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v8 = [(BYODPurchaseURL *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end
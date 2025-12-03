@interface BYODAddDomainResponse
- (BYODAddDomainResponse)initWithDictionary:(id)dictionary;
- (BYODAddDomainResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODAddDomainResponse

- (BYODAddDomainResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODAddDomainResponse;
  v8 = [(BYODAddDomainResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  if (v8)
  {
    v9 = [(BYODAddDomainResponse *)v8 initWithDictionary:*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BYODAddDomainResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODAddDomainResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [BYODAddDomainResult alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v8 = [(BYODAddDomainResult *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end
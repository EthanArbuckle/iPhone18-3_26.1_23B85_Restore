@interface BYODGetDomainResponse
- (BYODGetDomainResponse)initWithDictionary:(id)dictionary;
- (BYODGetDomainResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODGetDomainResponse

- (BYODGetDomainResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODGetDomainResponse;
  v8 = [(BYODGetDomainResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  v9 = v8;
  if (v8 && [*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    v9 = [(BYODGetDomainResponse *)v9 initWithDictionary:*&v9->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v9;
}

- (BYODGetDomainResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODGetDomainResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [BYODGetDomainResult alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v8 = [(BYODGetDomainResult *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end
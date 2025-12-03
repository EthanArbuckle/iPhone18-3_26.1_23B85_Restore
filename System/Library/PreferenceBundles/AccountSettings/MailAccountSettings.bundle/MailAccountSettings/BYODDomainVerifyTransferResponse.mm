@interface BYODDomainVerifyTransferResponse
- (BYODDomainVerifyTransferResponse)initWithDictionary:(id)dictionary;
- (BYODDomainVerifyTransferResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODDomainVerifyTransferResponse

- (BYODDomainVerifyTransferResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODDomainVerifyTransferResponse;
  v8 = [(BYODDomainVerifyTransferResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  v9 = v8;
  if (v8 && [*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    v9 = [(BYODDomainVerifyTransferResponse *)v9 initWithDictionary:*&v9->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v9;
}

- (BYODDomainVerifyTransferResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = BYODDomainVerifyTransferResponse;
  v5 = [(BYODBaseResponse *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    v5->_verifySuccess = [v6 BOOLValue];
  }

  return v5;
}

@end
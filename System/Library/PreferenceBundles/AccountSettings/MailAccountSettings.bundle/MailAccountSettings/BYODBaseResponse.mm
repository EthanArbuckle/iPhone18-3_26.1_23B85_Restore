@interface BYODBaseResponse
- (BYODBaseResponse)initWithDictionary:(id)dictionary;
- (BYODBaseResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation BYODBaseResponse

- (BYODBaseResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BYODBaseResponse;
  v8 = [(BYODBaseResponse *)&v11 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  if (v8)
  {
    v9 = [(BYODBaseResponse *)v8 initWithDictionary:*&v8->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BYODBaseResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = BYODBaseResponse;
  v5 = [(BYODBaseResponse *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    v5->_success = [v6 BOOLValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v5->_timestamp = [v7 integerValue];

    v8 = [BYODError alloc];
    v9 = [dictionaryCopy valueForKey:@"error"];
    v10 = [(BYODError *)v8 initWithDictionary:v9];
    byodError = v5->_byodError;
    v5->_byodError = v10;
  }

  return v5;
}

@end
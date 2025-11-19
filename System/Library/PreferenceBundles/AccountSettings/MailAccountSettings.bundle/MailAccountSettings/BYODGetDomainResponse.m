@interface BYODGetDomainResponse
- (BYODGetDomainResponse)initWithDictionary:(id)a3;
- (BYODGetDomainResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation BYODGetDomainResponse

- (BYODGetDomainResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYODGetDomainResponse;
  v8 = [(BYODGetDomainResponse *)&v11 initWithHTTPResponse:v6 data:v7 bodyIsPlist:0];
  v9 = v8;
  if (v8 && [*&v8->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    v9 = [(BYODGetDomainResponse *)v9 initWithDictionary:*&v9->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v9;
}

- (BYODGetDomainResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BYODGetDomainResponse;
  v5 = [(BYODBaseResponse *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [BYODGetDomainResult alloc];
    v7 = [v4 objectForKeyedSubscript:@"result"];
    v8 = [(BYODGetDomainResult *)v6 initWithDictionary:v7];
    v9 = v5->_result;
    v5->_result = v8;
  }

  return v5;
}

@end
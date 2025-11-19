@interface PDRelayRequestOperation
+ (id)defaultEndpointInfo;
- (PDRelayRequestOperation)initWithDatabase:(id)a3 data:(id)a4 fileHandle:(id)a5 requestType:(unint64_t)a6;
- (id)requestData;
- (void)didCompleteProcessingResponse;
- (void)execute;
- (void)prepareForNextRequest;
@end

@implementation PDRelayRequestOperation

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"orion");
  sub_10003F68C(v2, @"fetchInsights");
  sub_10003F69C(v2, @"https://p1-pg-iosclient.itunes.apple.com/v1/fetchinsights");
  if (v2)
  {
    v2->_payloadLimitItems = 0;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 60;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (PDRelayRequestOperation)initWithDatabase:(id)a3 data:(id)a4 fileHandle:(id)a5 requestType:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PDRelayRequestOperation;
  v13 = [(PDURLRequestOperation *)&v16 initWithDatabase:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 226), a4);
    objc_storeStrong((v14 + 234), a5);
    *(v14 + 242) = a6;
  }

  return v14;
}

- (void)prepareForNextRequest
{
  v3 = [PDURLResponse alloc];
  v4 = [(PDURLRequestOperation *)self operationID];
  v5 = sub_10011250C(&v3->super.isa, v4, *(&self->_data + 2));

  [(PDURLRequestOperation *)self prepareForNextRequestWithResponse:v5];
}

- (void)didCompleteProcessingResponse
{
  [(PDEndpointRequestOperation *)self markAsFinished];
  v3.receiver = self;
  v3.super_class = PDRelayRequestOperation;
  [(PDEndpointRequestOperation *)&v3 didCompleteProcessingResponse];
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&self->super._responseStatusError + 2);
  }

  return v3;
}

- (void)execute
{
  v2.receiver = self;
  v2.super_class = PDRelayRequestOperation;
  [(PDEndpointRequestOperation *)&v2 execute];
}

@end
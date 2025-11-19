@interface ADAcePassthroughSiriRequest
- (ADAcePassthroughSiriRequest)initWithClientBoundCommand:(id)a3;
- (ADAcePassthroughSiriRequest)initWithCoder:(id)a3;
- (id)_ad_preheatableServiceDomainForDomainSignalRequest;
- (id)createResponseWithReplyCommand:(id)a3;
- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAcePassthroughSiriRequest

- (ADAcePassthroughSiriRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriRequest;
  v5 = [(ADAcePassthroughSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AcePassthroughSiriRequestClientBoundCommand"];
    clientBoundCommand = v5->_clientBoundCommand;
    v5->_clientBoundCommand = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ADAcePassthroughSiriRequest;
  v4 = a3;
  [(ADAcePassthroughSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clientBoundCommand forKey:{@"AcePassthroughSiriRequestClientBoundCommand", v5.receiver, v5.super_class}];
}

- (id)createResponseWithReplyCommand:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ADAcePassthroughSiriRequest.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"replyCommand"}];
  }

  v6 = [[ADAcePassthroughSiriResponse alloc] initWithRequest:self replyCommand:v5];

  return v6;
}

- (ADAcePassthroughSiriRequest)initWithClientBoundCommand:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriRequest;
  v6 = [(ADAcePassthroughSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientBoundCommand, a3);
  }

  return v7;
}

- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ADAcePassthroughSiriRequest *)self clientBoundCommand];
  [v5 _ad_handleAceDomainSignalRequest:self completionHandler:v4];
}

- (id)_ad_preheatableServiceDomainForDomainSignalRequest
{
  v2 = [(ADAcePassthroughSiriRequest *)self clientBoundCommand];
  v3 = [v2 _ad_preheatableDomain];

  return v3;
}

@end
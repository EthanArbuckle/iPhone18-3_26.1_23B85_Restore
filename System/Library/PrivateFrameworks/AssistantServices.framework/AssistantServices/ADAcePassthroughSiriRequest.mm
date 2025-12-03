@interface ADAcePassthroughSiriRequest
- (ADAcePassthroughSiriRequest)initWithClientBoundCommand:(id)command;
- (ADAcePassthroughSiriRequest)initWithCoder:(id)coder;
- (id)_ad_preheatableServiceDomainForDomainSignalRequest;
- (id)createResponseWithReplyCommand:(id)command;
- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADAcePassthroughSiriRequest

- (ADAcePassthroughSiriRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriRequest;
  v5 = [(ADAcePassthroughSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AcePassthroughSiriRequestClientBoundCommand"];
    clientBoundCommand = v5->_clientBoundCommand;
    v5->_clientBoundCommand = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ADAcePassthroughSiriRequest;
  coderCopy = coder;
  [(ADAcePassthroughSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientBoundCommand forKey:{@"AcePassthroughSiriRequestClientBoundCommand", v5.receiver, v5.super_class}];
}

- (id)createResponseWithReplyCommand:(id)command
{
  commandCopy = command;
  if (!commandCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ADAcePassthroughSiriRequest.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"replyCommand"}];
  }

  v6 = [[ADAcePassthroughSiriResponse alloc] initWithRequest:self replyCommand:commandCopy];

  return v6;
}

- (ADAcePassthroughSiriRequest)initWithClientBoundCommand:(id)command
{
  commandCopy = command;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriRequest;
  v6 = [(ADAcePassthroughSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientBoundCommand, command);
  }

  return v7;
}

- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientBoundCommand = [(ADAcePassthroughSiriRequest *)self clientBoundCommand];
  [clientBoundCommand _ad_handleAceDomainSignalRequest:self completionHandler:handlerCopy];
}

- (id)_ad_preheatableServiceDomainForDomainSignalRequest
{
  clientBoundCommand = [(ADAcePassthroughSiriRequest *)self clientBoundCommand];
  _ad_preheatableDomain = [clientBoundCommand _ad_preheatableDomain];

  return _ad_preheatableDomain;
}

@end
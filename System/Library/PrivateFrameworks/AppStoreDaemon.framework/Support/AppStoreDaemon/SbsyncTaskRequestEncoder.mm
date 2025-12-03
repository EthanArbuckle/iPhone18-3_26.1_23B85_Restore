@interface SbsyncTaskRequestEncoder
- (SbsyncTaskRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation SbsyncTaskRequestEncoder

- (SbsyncTaskRequestEncoder)initWithBag:(id)bag
{
  v6.receiver = self;
  v6.super_class = SbsyncTaskRequestEncoder;
  v3 = [(SbsyncTaskRequestEncoder *)&v6 initWithBag:bag];
  v4 = v3;
  if (v3)
  {
    [(SbsyncTaskRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  requestCopy = request;
  [requestCopy setCachePolicy:1];
  [requestCopy setHTTPContentType:@"text/xml"];
  v10.receiver = self;
  v10.super_class = SbsyncTaskRequestEncoder;
  v8 = [(SbsyncTaskRequestEncoder *)&v10 requestByEncodingRequest:requestCopy parameters:parametersCopy];

  return v8;
}

@end
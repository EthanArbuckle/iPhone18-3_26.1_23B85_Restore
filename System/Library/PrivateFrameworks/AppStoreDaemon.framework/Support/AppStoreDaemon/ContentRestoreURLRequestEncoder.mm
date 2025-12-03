@interface ContentRestoreURLRequestEncoder
- (ContentRestoreURLRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation ContentRestoreURLRequestEncoder

- (ContentRestoreURLRequestEncoder)initWithBag:(id)bag
{
  v6.receiver = self;
  v6.super_class = ContentRestoreURLRequestEncoder;
  v3 = [(ContentRestoreURLRequestEncoder *)&v6 initWithBag:bag];
  v4 = v3;
  if (v3)
  {
    [(ContentRestoreURLRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  requestCopy = request;
  [requestCopy setCachePolicy:1];
  [requestCopy setHTTPContentType:@"text/xml"];
  v8 = sub_1003BBF50();
  sub_1003BC30C(requestCopy, 1, v8);

  v11.receiver = self;
  v11.super_class = ContentRestoreURLRequestEncoder;
  v9 = [(ContentRestoreURLRequestEncoder *)&v11 requestByEncodingRequest:requestCopy parameters:parametersCopy];

  return v9;
}

@end
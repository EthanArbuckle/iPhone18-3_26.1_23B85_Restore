@interface SLFacebookRequest
- (SLFacebookRequest)initWithURL:(id)l parameters:(id)parameters requestMethod:(int64_t)method;
- (id)preparedURLRequest;
- (int)responseDataFormat;
- (void)setAccessToken:(id)token;
- (void)setResponseDataFormat:(int)format;
@end

@implementation SLFacebookRequest

- (SLFacebookRequest)initWithURL:(id)l parameters:(id)parameters requestMethod:(int64_t)method
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = SLFacebookRequest;
  v9 = [(SLRequest *)&v12 initWithServiceType:@"com.apple.social.facebook" URL:l parameters:parametersCopy requestMethod:method];
  if (v9)
  {
    v10 = [parametersCopy objectForKey:@"format"];

    if (!v10)
    {
      [(SLFacebookRequest *)v9 setResponseDataFormat:2];
    }
  }

  return v9;
}

- (id)preparedURLRequest
{
  [(SLFacebookRequest *)self preflightRequest];
  v5.receiver = self;
  v5.super_class = SLFacebookRequest;
  preparedURLRequest = [(SLRequest *)&v5 preparedURLRequest];

  return preparedURLRequest;
}

- (void)setAccessToken:(id)token
{
  if (token)
  {
    [(SLRequest *)self setParameterValue:token forKey:@"access_token"];
  }

  else
  {
    [(SLRequest *)self removeParameterForKey:@"access_token"];
  }
}

- (void)setResponseDataFormat:(int)format
{
  if (format == 2)
  {
    v3 = @"json";
  }

  else
  {
    v3 = @"xml";
  }

  [(SLRequest *)self setParameterValue:v3 forKey:@"format"];
}

- (int)responseDataFormat
{
  v2 = [(SLRequest *)self parameterForKey:@"format"];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqualToString:@"json"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end
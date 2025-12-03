@interface AATermsReportUserActionRequest
- (AATermsReportUserActionRequest)initWithAccount:(id)account urlRequest:(id)request parameters:(id)parameters;
@end

@implementation AATermsReportUserActionRequest

- (AATermsReportUserActionRequest)initWithAccount:(id)account urlRequest:(id)request parameters:(id)parameters
{
  accountCopy = account;
  requestCopy = request;
  parametersCopy = parameters;
  v11 = [requestCopy URL];
  absoluteString = [v11 absoluteString];
  v17.receiver = self;
  v17.super_class = AATermsReportUserActionRequest;
  v13 = [(AARequest *)&v17 initWithURLString:absoluteString];

  if (v13)
  {
    v14 = [requestCopy mutableCopy];
    if (parametersCopy && [parametersCopy count])
    {
      [(NSURLRequest *)v14 aa_setJSONBodyWithParameters:parametersCopy];
    }

    [(NSURLRequest *)v14 setHTTPMethod:@"POST"];
    [(NSURLRequest *)v14 ak_addClientInfoHeader];
    [(NSURLRequest *)v14 aa_addAuthTokenOrBasicAuthHeaderWithAccount:accountCopy preferUsingPassword:1];
    urlRequest = v13->_urlRequest;
    v13->_urlRequest = v14;
  }

  return v13;
}

@end
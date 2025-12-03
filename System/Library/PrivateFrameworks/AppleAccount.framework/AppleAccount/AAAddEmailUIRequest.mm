@interface AAAddEmailUIRequest
- (AAAddEmailUIRequest)initWithAccount:(id)account;
- (AAAddEmailUIRequest)initWithURLString:(id)string account:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAAddEmailUIRequest

- (AAAddEmailUIRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = AAAddEmailUIRequest;
  v5 = [(AAAddEmailUIRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AAAddEmailUIRequest *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (AAAddEmailUIRequest)initWithURLString:(id)string account:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = AAAddEmailUIRequest;
  v7 = [(AARequest *)&v10 initWithURLString:string];
  v8 = v7;
  if (v7)
  {
    [(AAAddEmailUIRequest *)v7 setAccount:accountCopy];
  }

  return v8;
}

- (id)urlString
{
  v5.receiver = self;
  v5.super_class = AAAddEmailUIRequest;
  urlString = [(AARequest *)&v5 urlString];
  if (!urlString)
  {
    v3 = +[AAURLConfiguration urlConfiguration];
    urlString = [v3 addEmailURL];
  }

  return urlString;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AAAddEmailUIRequest;
  urlRequest = [(AARequest *)&v7 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  account = [(AAAddEmailUIRequest *)self account];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:account preferUsingPassword:0];

  return v4;
}

@end
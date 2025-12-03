@interface AcmeClient
- (AcmeClient)init;
- (AcmeClient)initWithURLString:(id)string;
- (id)delegate;
- (void)post:(id)post withMethod:(id)method contentType:(id)type;
- (void)start3:(id)start3;
@end

@implementation AcmeClient

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)start3:(id)start3
{
  start3Copy = start3;
  v5 = dispatch_get_global_queue(-2, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000F0C;
  v7[3] = &unk_1000085F8;
  v7[4] = self;
  v8 = start3Copy;
  v6 = start3Copy;
  dispatch_async(v5, v7);
}

- (void)post:(id)post withMethod:(id)method contentType:(id)type
{
  typeCopy = type;
  methodCopy = method;
  postCopy = post;
  urlRequest = [(AcmeClient *)self urlRequest];
  [urlRequest setHTTPMethod:methodCopy];

  [urlRequest setHTTPBody:postCopy];
  [urlRequest setValue:@"com.apple.security.acmeclient/1.0" forHTTPHeaderField:@"User-Agent"];
  [urlRequest setValue:typeCopy forHTTPHeaderField:@"Content-Type"];
}

- (AcmeClient)initWithURLString:(id)string
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = AcmeClient;
  v5 = [(AcmeClient *)&v14 init];
  if (v5)
  {
    v6 = [stringCopy stringByAddingPercentEscapesUsingEncoding:4];
    v7 = [[NSURL alloc] initWithString:v6];
    url = v5->url;
    v5->url = v7;

    v9 = [NSMutableURLRequest alloc];
    v10 = [(AcmeClient *)v5 url];
    v11 = [v9 initWithURL:v10 cachePolicy:1 timeoutInterval:15.0];
    urlRequest = v5->urlRequest;
    v5->urlRequest = v11;
  }

  return v5;
}

- (AcmeClient)init
{
  v3.receiver = self;
  v3.super_class = AcmeClient;
  return [(AcmeClient *)&v3 init];
}

@end
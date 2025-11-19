@interface AcmeClient
- (AcmeClient)init;
- (AcmeClient)initWithURLString:(id)a3;
- (id)delegate;
- (void)post:(id)a3 withMethod:(id)a4 contentType:(id)a5;
- (void)start3:(id)a3;
@end

@implementation AcmeClient

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)start3:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(-2, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000F0C;
  v7[3] = &unk_1000085F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)post:(id)a3 withMethod:(id)a4 contentType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AcmeClient *)self urlRequest];
  [v11 setHTTPMethod:v9];

  [v11 setHTTPBody:v10];
  [v11 setValue:@"com.apple.security.acmeclient/1.0" forHTTPHeaderField:@"User-Agent"];
  [v11 setValue:v8 forHTTPHeaderField:@"Content-Type"];
}

- (AcmeClient)initWithURLString:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AcmeClient;
  v5 = [(AcmeClient *)&v14 init];
  if (v5)
  {
    v6 = [v4 stringByAddingPercentEscapesUsingEncoding:4];
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
@interface MTLibraryLinkService
- (MTLibraryLinkService)init;
- (id)urlRequest;
- (void)performRequest:(id)a3;
- (void)requestWithParams:(id)a3 callback:(id)a4;
- (void)updateAdamIdForPodcast:(id)a3 withFeedURLs:(id)a4;
@end

@implementation MTLibraryLinkService

- (MTLibraryLinkService)init
{
  v3.receiver = self;
  v3.super_class = MTLibraryLinkService;
  return [(MTLibraryLinkService *)&v3 init];
}

- (id)urlRequest
{
  v3 = +[IMURLBag sharedInstance];
  v4 = [v3 syncStringForKey:kBagKeyLibraryLinkURL];
  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
    v6 = [(MTLibraryLinkService *)self requestParams];
    v7 = [v5 pf_URLByAppendingQueryString:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[NSURLRequest alloc] initWithURL:v7];

  return v8;
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  v5 = [(MTLibraryLinkService *)self urlRequest];
  [(MTLibraryLinkService *)self performUrlRequest:v5 callback:v4];
}

- (void)requestWithParams:(id)a3 callback:(id)a4
{
  v6 = a4;
  [(MTLibraryLinkService *)self setRequestParams:a3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015B2E8;
  v8[3] = &unk_1004DD1D8;
  v9 = v6;
  v7 = v6;
  [(MTLibraryLinkService *)self performRequest:v8];
}

- (void)updateAdamIdForPodcast:(id)a3 withFeedURLs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if ([v7 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];

      if (v9)
      {
        v15[0] = @"podcastUrl";
        v10 = [v8 objectAtIndexedSubscript:0];
        v15[1] = @"suppressRedirectToSearch";
        v16[0] = v10;
        v16[1] = @"true";
        v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10015B59C;
        v12[3] = &unk_1004DDD40;
        v13 = v6;
        v14 = v8;
        [(MTLibraryLinkService *)self requestWithParams:v11 callback:v12];
      }
    }
  }
}

@end
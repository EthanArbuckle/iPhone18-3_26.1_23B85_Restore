@interface MTLibraryLinkService
- (MTLibraryLinkService)init;
- (id)urlRequest;
- (void)performRequest:(id)request;
- (void)requestWithParams:(id)params callback:(id)callback;
- (void)updateAdamIdForPodcast:(id)podcast withFeedURLs:(id)ls;
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
    requestParams = [(MTLibraryLinkService *)self requestParams];
    v7 = [v5 pf_URLByAppendingQueryString:requestParams];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[NSURLRequest alloc] initWithURL:v7];

  return v8;
}

- (void)performRequest:(id)request
{
  requestCopy = request;
  urlRequest = [(MTLibraryLinkService *)self urlRequest];
  [(MTLibraryLinkService *)self performUrlRequest:urlRequest callback:requestCopy];
}

- (void)requestWithParams:(id)params callback:(id)callback
{
  callbackCopy = callback;
  [(MTLibraryLinkService *)self setRequestParams:params];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015B2E8;
  v8[3] = &unk_1004DD1D8;
  v9 = callbackCopy;
  v7 = callbackCopy;
  [(MTLibraryLinkService *)self performRequest:v8];
}

- (void)updateAdamIdForPodcast:(id)podcast withFeedURLs:(id)ls
{
  podcastCopy = podcast;
  lsCopy = ls;
  v8 = lsCopy;
  if (podcastCopy)
  {
    if ([lsCopy count])
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
        v13 = podcastCopy;
        v14 = v8;
        [(MTLibraryLinkService *)self requestWithParams:v11 callback:v12];
      }
    }
  }
}

@end
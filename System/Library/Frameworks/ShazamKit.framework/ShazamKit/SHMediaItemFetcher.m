@interface SHMediaItemFetcher
+ (id)urlRequestsForBaseURL:(id)a3 shazamIDs:(id)a4 batchSize:(int64_t)a5;
- (SHMediaItemFetcher)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4;
- (SHMediaItemFetcher)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4 URLBuilder:(id)a5 contextBuilder:(id)a6 networkRequester:(id)a7;
- (void)commonInitWithBundleIdentifier:(id)a3 clientType:(int64_t)a4 URLBuilder:(id)a5 contextBuilder:(id)a6 networkRequester:(id)a7;
- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMediaItemFetcher

- (SHMediaItemFetcher)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SHMediaItemFetcher;
  v7 = [(SHMediaItemFetcher *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(SHShazamKitServerURLBuilder);
    v9 = objc_alloc_init(SHServerResponseContextBuilder);
    v10 = [[SHAMSPaginatedEndpointRequester alloc] initWithClientIdentifier:v6 clientType:a4];
    [(SHMediaItemFetcher *)v7 commonInitWithBundleIdentifier:v6 clientType:a4 URLBuilder:v8 contextBuilder:v9 networkRequester:v10];
  }

  return v7;
}

- (SHMediaItemFetcher)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4 URLBuilder:(id)a5 contextBuilder:(id)a6 networkRequester:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SHMediaItemFetcher;
  v16 = [(SHMediaItemFetcher *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(SHMediaItemFetcher *)v16 commonInitWithBundleIdentifier:v12 clientType:a4 URLBuilder:v13 contextBuilder:v14 networkRequester:v15];
  }

  return v17;
}

- (void)commonInitWithBundleIdentifier:(id)a3 clientType:(int64_t)a4 URLBuilder:(id)a5 contextBuilder:(id)a6 networkRequester:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v12;
  v22 = v12;

  URLBuilder = self->_URLBuilder;
  self->_clientType = a4;
  self->_URLBuilder = v13;
  v18 = v13;

  contextBuilder = self->_contextBuilder;
  self->_contextBuilder = v14;
  v20 = v14;

  networkRequester = self->_networkRequester;
  self->_networkRequester = v15;
}

- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(SHMediaItemFetcher *)self bundleIdentifier];

    if (v8)
    {
      objc_initWeak(&location, self);
      v9 = [(SHMediaItemFetcher *)self URLBuilder];
      v10 = [(SHMediaItemFetcher *)self bundleIdentifier];
      v11 = [(SHMediaItemFetcher *)self clientType];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000F7C0;
      v15[3] = &unk_10007D2D0;
      v17 = v7;
      v15[4] = self;
      objc_copyWeak(&v18, &location);
      v16 = v6;
      [v9 loadLookupEndpointForClientIdentifier:v10 clientType:v11 callback:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Failed fetching media item, bundle identifier missing", &location, 2u);
      }

      v20 = NSDebugDescriptionErrorKey;
      v21 = @"Failed to fetch media item due to missing bundle identifier";
      v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = [SHError errorWithCode:500 underlyingError:0 keyOverrides:v13];
      (*(v7 + 2))(v7, &__NSArray0__struct, v14);
    }
  }

  else
  {
    (*(v7 + 2))(v7, &__NSArray0__struct, 0);
  }
}

+ (id)urlRequestsForBaseURL:(id)a3 shazamIDs:(id)a4 batchSize:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableArray array];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 count];
      if (&v11[-v10] >= a5)
      {
        v12 = a5;
      }

      else
      {
        v12 = &v11[-v10];
      }

      v13 = [v8 subarrayWithRange:{v10, v12}];
      v14 = [[NSURLComponents alloc] initWithURL:v7 resolvingAgainstBaseURL:0];
      v15 = [NSURLQueryItem alloc];
      v16 = [NSString alloc];
      v17 = [v13 componentsJoinedByString:{@", "}];
      v18 = [v16 initWithFormat:@"%@", v17];
      v19 = [v15 initWithName:@"ids" value:v18];

      v20 = [v14 queryItems];
      v21 = v20;
      if (!v20)
      {
        v20 = &__NSArray0__struct;
      }

      v22 = [v20 arrayByAddingObject:v19];
      [v14 setQueryItems:v22];

      v23 = [v14 URL];

      if (v23)
      {
        v24 = [v14 URL];
        v25 = [NSMutableURLRequest requestWithURL:v24];

        [v25 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        v26 = [v25 copy];
        [v9 addObject:v26];
      }

      v10 = v10 + a5;
    }

    while (v10 < [v8 count]);
  }

  v27 = [v9 copy];

  return v27;
}

@end
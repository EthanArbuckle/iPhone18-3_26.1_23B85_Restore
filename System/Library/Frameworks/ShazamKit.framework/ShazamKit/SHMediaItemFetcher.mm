@interface SHMediaItemFetcher
+ (id)urlRequestsForBaseURL:(id)l shazamIDs:(id)ds batchSize:(int64_t)size;
- (SHMediaItemFetcher)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type;
- (SHMediaItemFetcher)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type URLBuilder:(id)builder contextBuilder:(id)contextBuilder networkRequester:(id)requester;
- (void)commonInitWithBundleIdentifier:(id)identifier clientType:(int64_t)type URLBuilder:(id)builder contextBuilder:(id)contextBuilder networkRequester:(id)requester;
- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler;
@end

@implementation SHMediaItemFetcher

- (SHMediaItemFetcher)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SHMediaItemFetcher;
  v7 = [(SHMediaItemFetcher *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(SHShazamKitServerURLBuilder);
    v9 = objc_alloc_init(SHServerResponseContextBuilder);
    v10 = [[SHAMSPaginatedEndpointRequester alloc] initWithClientIdentifier:identifierCopy clientType:type];
    [(SHMediaItemFetcher *)v7 commonInitWithBundleIdentifier:identifierCopy clientType:type URLBuilder:v8 contextBuilder:v9 networkRequester:v10];
  }

  return v7;
}

- (SHMediaItemFetcher)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type URLBuilder:(id)builder contextBuilder:(id)contextBuilder networkRequester:(id)requester
{
  identifierCopy = identifier;
  builderCopy = builder;
  contextBuilderCopy = contextBuilder;
  requesterCopy = requester;
  v19.receiver = self;
  v19.super_class = SHMediaItemFetcher;
  v16 = [(SHMediaItemFetcher *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(SHMediaItemFetcher *)v16 commonInitWithBundleIdentifier:identifierCopy clientType:type URLBuilder:builderCopy contextBuilder:contextBuilderCopy networkRequester:requesterCopy];
  }

  return v17;
}

- (void)commonInitWithBundleIdentifier:(id)identifier clientType:(int64_t)type URLBuilder:(id)builder contextBuilder:(id)contextBuilder networkRequester:(id)requester
{
  identifierCopy = identifier;
  builderCopy = builder;
  contextBuilderCopy = contextBuilder;
  requesterCopy = requester;
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = identifierCopy;
  v22 = identifierCopy;

  URLBuilder = self->_URLBuilder;
  self->_clientType = type;
  self->_URLBuilder = builderCopy;
  v18 = builderCopy;

  contextBuilder = self->_contextBuilder;
  self->_contextBuilder = contextBuilderCopy;
  v20 = contextBuilderCopy;

  networkRequester = self->_networkRequester;
  self->_networkRequester = requesterCopy;
}

- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    bundleIdentifier = [(SHMediaItemFetcher *)self bundleIdentifier];

    if (bundleIdentifier)
    {
      objc_initWeak(&location, self);
      uRLBuilder = [(SHMediaItemFetcher *)self URLBuilder];
      bundleIdentifier2 = [(SHMediaItemFetcher *)self bundleIdentifier];
      clientType = [(SHMediaItemFetcher *)self clientType];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000F7C0;
      v15[3] = &unk_10007D2D0;
      v17 = handlerCopy;
      v15[4] = self;
      objc_copyWeak(&v18, &location);
      v16 = dsCopy;
      [uRLBuilder loadLookupEndpointForClientIdentifier:bundleIdentifier2 clientType:clientType callback:v15];

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
      (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }
}

+ (id)urlRequestsForBaseURL:(id)l shazamIDs:(id)ds batchSize:(int64_t)size
{
  lCopy = l;
  dsCopy = ds;
  v9 = +[NSMutableArray array];
  if ([dsCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [dsCopy count];
      if (&v11[-v10] >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = &v11[-v10];
      }

      v13 = [dsCopy subarrayWithRange:{v10, sizeCopy}];
      v14 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
      v15 = [NSURLQueryItem alloc];
      v16 = [NSString alloc];
      v17 = [v13 componentsJoinedByString:{@", "}];
      v18 = [v16 initWithFormat:@"%@", v17];
      v19 = [v15 initWithName:@"ids" value:v18];

      queryItems = [v14 queryItems];
      v21 = queryItems;
      if (!queryItems)
      {
        queryItems = &__NSArray0__struct;
      }

      v22 = [queryItems arrayByAddingObject:v19];
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

      v10 = v10 + size;
    }

    while (v10 < [dsCopy count]);
  }

  v27 = [v9 copy];

  return v27;
}

@end
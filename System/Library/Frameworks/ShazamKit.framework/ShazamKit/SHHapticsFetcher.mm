@interface SHHapticsFetcher
- (SHHapticsFetcher)init;
- (SHHapticsFetcher)initWithURLBuilder:(id)builder networkRequester:(id)requester;
- (id)reqeustOfType:(int64_t)type fromEndpoint:(id)endpoint withMediaItem:(id)item;
- (void)hapticForMediaItem:(id)item completionHandler:(id)handler;
- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler;
- (void)hasHapticTrackForMediaItem:(id)item completionHandler:(id)handler;
- (void)reqeustOfType:(int64_t)type withMediaItem:(id)item completionHandler:(id)handler;
@end

@implementation SHHapticsFetcher

- (SHHapticsFetcher)init
{
  v3 = objc_alloc_init(SHHapticsServerURLBuilder);
  v4 = [[SHHapticsEndpointRequester alloc] initWithClientIdentifier:@"com.apple.shazamd" clientType:1];
  v5 = [(SHHapticsFetcher *)self initWithURLBuilder:v3 networkRequester:v4];

  return v5;
}

- (SHHapticsFetcher)initWithURLBuilder:(id)builder networkRequester:(id)requester
{
  builderCopy = builder;
  requesterCopy = requester;
  v14.receiver = self;
  v14.super_class = SHHapticsFetcher;
  v9 = [(SHHapticsFetcher *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urlBuilder, builder);
    objc_storeStrong(&v10->_networkRequester, requester);
    v11 = dispatch_queue_create("com.apple.ShazamKit.HapticEndpointRequester", 0);
    requestQueue = v10->_requestQueue;
    v10->_requestQueue = v11;
  }

  return v10;
}

- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v6 = dispatch_group_create();
  if (v6 && ([(SHHapticsFetcher *)self requestQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    *buf = 0;
    v34 = buf;
    v35 = 0x3032000000;
    v36 = sub_1000454D8;
    v37 = sub_1000454E8;
    v38 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = itemsCopy;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          dispatch_group_enter(v6);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000454F0;
          v25[3] = &unk_10007E190;
          v28 = buf;
          v26 = v6;
          v27 = v8;
          [(SHHapticsFetcher *)self hapticForMediaItem:v12 completionHandler:v25];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v9);
    }

    requestQueue = [(SHHapticsFetcher *)self requestQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100045574;
    block[3] = &unk_10007E1B8;
    v22 = v8;
    v23 = handlerCopy;
    v24 = buf;
    v14 = v8;
    dispatch_group_notify(v6, requestQueue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create dispatch group for haptic fetch requests", buf, 2u);
    }

    v40 = NSDebugDescriptionErrorKey;
    v41 = @"Failed to start paginated network request";
    v16 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v17 = [SHError errorWithCode:600 underlyingError:0 keyOverrides:v16];
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, v17);
  }
}

- (void)hapticForMediaItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000456EC;
  v10[3] = &unk_10007E208;
  v8 = handlerCopy;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  v9 = itemCopy;
  v11 = v9;
  [(SHHapticsFetcher *)self reqeustOfType:2 withMediaItem:v9 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)hasHapticTrackForMediaItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004597C;
  v9[3] = &unk_10007E230;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(SHHapticsFetcher *)self reqeustOfType:1 withMediaItem:itemCopy completionHandler:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)reqeustOfType:(int64_t)type withMediaItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  properties = [itemCopy properties];
  v11 = [properties count];

  if (v11)
  {
    objc_initWeak(&location, self);
    urlBuilder = [(SHHapticsFetcher *)self urlBuilder];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100045BB0;
    v14[3] = &unk_10007E258;
    v16 = handlerCopy;
    objc_copyWeak(v17, &location);
    v17[1] = type;
    v15 = itemCopy;
    [urlBuilder loadHapticsEndpointForClientIdentifier:@"com.apple.shazamd" callback:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [SHCoreError errorWithCode:400 underlyingError:0 keyOverrides:&__NSDictionary0__struct];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (id)reqeustOfType:(int64_t)type fromEndpoint:(id)endpoint withMediaItem:(id)item
{
  endpointCopy = endpoint;
  itemCopy = item;
  fetchHapticByAdamIDURL = [endpointCopy fetchHapticByAdamIDURL];
  if (fetchHapticByAdamIDURL)
  {
    appleMusicID = [itemCopy appleMusicID];
    v11 = appleMusicID != 0;
  }

  else
  {
    v11 = 0;
  }

  fetchHapticByISRCURL = [endpointCopy fetchHapticByISRCURL];
  if (!fetchHapticByISRCURL)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    appleMusicID2 = [itemCopy appleMusicID];
    v16 = endpointCopy;
    typeCopy2 = type;
    v18 = appleMusicID2;
    v19 = 1;
    goto LABEL_10;
  }

  v13 = fetchHapticByISRCURL;
  isrc = [itemCopy isrc];

  if (v11)
  {
    goto LABEL_9;
  }

  if (isrc)
  {
    appleMusicID2 = [itemCopy isrc];
    v16 = endpointCopy;
    typeCopy2 = type;
    v18 = appleMusicID2;
    v19 = 2;
LABEL_10:
    v20 = [v16 requestOfType:typeCopy2 forID:v18 ofIDType:v19];

    goto LABEL_12;
  }

LABEL_11:
  v20 = 0;
LABEL_12:

  return v20;
}

@end
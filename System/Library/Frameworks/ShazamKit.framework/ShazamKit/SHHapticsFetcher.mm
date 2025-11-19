@interface SHHapticsFetcher
- (SHHapticsFetcher)init;
- (SHHapticsFetcher)initWithURLBuilder:(id)a3 networkRequester:(id)a4;
- (id)reqeustOfType:(int64_t)a3 fromEndpoint:(id)a4 withMediaItem:(id)a5;
- (void)hapticForMediaItem:(id)a3 completionHandler:(id)a4;
- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4;
- (void)hasHapticTrackForMediaItem:(id)a3 completionHandler:(id)a4;
- (void)reqeustOfType:(int64_t)a3 withMediaItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SHHapticsFetcher

- (SHHapticsFetcher)init
{
  v3 = objc_alloc_init(SHHapticsServerURLBuilder);
  v4 = [[SHHapticsEndpointRequester alloc] initWithClientIdentifier:@"com.apple.shazamd" clientType:1];
  v5 = [(SHHapticsFetcher *)self initWithURLBuilder:v3 networkRequester:v4];

  return v5;
}

- (SHHapticsFetcher)initWithURLBuilder:(id)a3 networkRequester:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SHHapticsFetcher;
  v9 = [(SHHapticsFetcher *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urlBuilder, a3);
    objc_storeStrong(&v10->_networkRequester, a4);
    v11 = dispatch_queue_create("com.apple.ShazamKit.HapticEndpointRequester", 0);
    requestQueue = v10->_requestQueue;
    v10->_requestQueue = v11;
  }

  return v10;
}

- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4
{
  v18 = a3;
  v19 = a4;
  v6 = dispatch_group_create();
  if (v6 && ([(SHHapticsFetcher *)self requestQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v18 count]);
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
    obj = v18;
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

    v13 = [(SHHapticsFetcher *)self requestQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100045574;
    block[3] = &unk_10007E1B8;
    v22 = v8;
    v23 = v19;
    v24 = buf;
    v14 = v8;
    dispatch_group_notify(v6, v13, block);

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
    (*(v19 + 2))(v19, &__NSArray0__struct, v17);
  }
}

- (void)hapticForMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000456EC;
  v10[3] = &unk_10007E208;
  v8 = v7;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v11 = v9;
  [(SHHapticsFetcher *)self reqeustOfType:2 withMediaItem:v9 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)hasHapticTrackForMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004597C;
  v9[3] = &unk_10007E230;
  v8 = v7;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(SHHapticsFetcher *)self reqeustOfType:1 withMediaItem:v6 completionHandler:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)reqeustOfType:(int64_t)a3 withMediaItem:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 properties];
  v11 = [v10 count];

  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = [(SHHapticsFetcher *)self urlBuilder];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100045BB0;
    v14[3] = &unk_10007E258;
    v16 = v9;
    objc_copyWeak(v17, &location);
    v17[1] = a3;
    v15 = v8;
    [v12 loadHapticsEndpointForClientIdentifier:@"com.apple.shazamd" callback:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [SHCoreError errorWithCode:400 underlyingError:0 keyOverrides:&__NSDictionary0__struct];
    (*(v9 + 2))(v9, 0, v13);
  }
}

- (id)reqeustOfType:(int64_t)a3 fromEndpoint:(id)a4 withMediaItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 fetchHapticByAdamIDURL];
  if (v9)
  {
    v10 = [v8 appleMusicID];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 fetchHapticByISRCURL];
  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    v15 = [v8 appleMusicID];
    v16 = v7;
    v17 = a3;
    v18 = v15;
    v19 = 1;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v8 isrc];

  if (v11)
  {
    goto LABEL_9;
  }

  if (v14)
  {
    v15 = [v8 isrc];
    v16 = v7;
    v17 = a3;
    v18 = v15;
    v19 = 2;
LABEL_10:
    v20 = [v16 requestOfType:v17 forID:v18 ofIDType:v19];

    goto LABEL_12;
  }

LABEL_11:
  v20 = 0;
LABEL_12:

  return v20;
}

@end
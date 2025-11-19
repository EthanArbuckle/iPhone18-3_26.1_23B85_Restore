@interface SHAMSPaginatedEndpointRequester
- (SHAMSPaginatedEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4;
- (void)invalidate;
- (void)performRequests:(id)a3 completionHandler:(id)a4;
@end

@implementation SHAMSPaginatedEndpointRequester

- (SHAMSPaginatedEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SHAMSPaginatedEndpointRequester;
  v7 = [(SHAMSPaginatedEndpointRequester *)&v11 init];
  if (v7)
  {
    v8 = [[SHAMSEndpointRequester alloc] initWithClientIdentifier:v6 clientType:a4];
    endpointRequester = v7->_endpointRequester;
    v7->_endpointRequester = v8;
  }

  return v7;
}

- (void)performRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  if (v8)
  {
    v21 = v7;
    queue = dispatch_queue_create("com.apple.ShazamKit.PaginatedEndpointRequester", 0);
    v9 = dispatch_semaphore_create(5);
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v6;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          dispatch_group_enter(v8);
          v16 = dispatch_time(0, 30000000000);
          dispatch_semaphore_wait(v9, v16);
          v17 = [(SHAMSPaginatedEndpointRequester *)self endpointRequester];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000462BC;
          v28[3] = &unk_10007E280;
          v29 = queue;
          v30 = v10;
          v31 = v8;
          v32 = v9;
          [v17 performRequest:v15 withReply:v28];
        }

        v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046388;
    block[3] = &unk_10007D210;
    v7 = v21;
    v26 = v10;
    v27 = v21;
    v18 = v10;
    v19 = queue;
    dispatch_group_notify(v8, queue, block);

    v6 = v22;
  }

  else
  {
    v20 = sh_log_object();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to create dispatch group for paginated network request", buf, 2u);
    }

    v39 = NSDebugDescriptionErrorKey;
    v40 = @"Failed to start paginated network request";
    v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v9 = [SHError errorWithCode:500 underlyingError:0 keyOverrides:v19];
    (*(v7 + 2))(v7, 0, v9);
  }
}

- (void)invalidate
{
  v2 = [(SHAMSPaginatedEndpointRequester *)self endpointRequester];
  [v2 invalidate];
}

@end
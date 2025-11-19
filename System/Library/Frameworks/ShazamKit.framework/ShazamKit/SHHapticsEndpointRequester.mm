@interface SHHapticsEndpointRequester
- (BOOL)isHapticTrackAvailableFrom:(id)a3 songDuration:(double)a4 error:(id *)a5;
- (SHHapticsEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4;
- (SHHapticsEndpointRequester)initWithNetworkRequester:(id)a3;
- (id)cachedHapticsResponseForSongItem:(id)a3 representingMediaItem:(id)a4;
- (id)hapticSongItemFromResponse:(id)a3 songDuration:(double)a4 error:(id *)a5;
- (id)hapticsDownloadRequestFromDownloadURL:(id)a3;
- (id)updateMediaItem:(id)a3 withSongItem:(id)a4;
- (void)invalidate;
- (void)performAvailabilityRequest:(id)a3 completionHandler:(id)a4;
- (void)performFetchRequest:(id)a3 mediaItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SHHapticsEndpointRequester

- (SHHapticsEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4
{
  v6 = a3;
  v7 = [[SHAMSEndpointRequester alloc] initWithClientIdentifier:v6 clientType:a4];

  v8 = [(SHHapticsEndpointRequester *)self initWithNetworkRequester:v7];
  return v8;
}

- (SHHapticsEndpointRequester)initWithNetworkRequester:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHHapticsEndpointRequester;
  v6 = [(SHHapticsEndpointRequester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointRequester, a3);
  }

  return v7;
}

- (void)performAvailabilityRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetching haptic song attributes to check for haptics availability with URL %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(SHHapticsEndpointRequester *)self endpointRequester];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008B0C;
  v11[3] = &unk_10007CFF0;
  objc_copyWeak(&v13, buf);
  v10 = v7;
  v12 = v10;
  [v9 performRequest:v6 withReply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)performFetchRequest:(id)a3 mediaItem:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(SHHapticsEndpointRequester *)self endpointRequester];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008D78;
  v14[3] = &unk_10007D040;
  objc_copyWeak(&v17, &location);
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 performRequest:v8 withReply:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)hapticSongItemFromResponse:(id)a3 songDuration:(double)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 data];

  if (v8)
  {
    v9 = [v7 data];
    v10 = [SHServerHapticsResponseParser hapticSongItemFromServerData:v9 songDuration:a5 error:a4];
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 error];
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No network response for haptics song attributes fetch. Error %@", &v17, 0xCu);
    }

    v13 = [v7 error];
    v14 = [v13 underlyingErrors];
    v15 = [v14 firstObject];
    [SHError annotateClientError:a5 code:600 underlyingError:v15];

    v10 = 0;
  }

  return v10;
}

- (BOOL)isHapticTrackAvailableFrom:(id)a3 songDuration:(double)a4 error:(id *)a5
{
  v5 = [(SHHapticsEndpointRequester *)self hapticSongItemFromResponse:a3 songDuration:a5 error:a4];
  v6 = [v5 hasHaptics];

  return v6;
}

- (id)updateMediaItem:(id)a3 withSongItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 appleMusicID];
  if (v7)
  {

LABEL_3:
    v8 = v5;
    goto LABEL_6;
  }

  v9 = [v6 appleMusicID];

  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = [v5 properties];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v12 = [v6 appleMusicID];
  [v11 setObject:v12 forKeyedSubscript:SHMediaItemAppleMusicID];

  v13 = [v11 copy];
  v8 = [SHMediaItem mediaItemWithProperties:v13];

LABEL_6:

  return v8;
}

- (id)hapticsDownloadRequestFromDownloadURL:(id)a3
{
  v3 = [NSMutableURLRequest requestWithURL:a3];
  [v3 setHTTPMethod:@"GET"];
  [v3 setValue:@"x-apple-archive" forHTTPHeaderField:@"Accept-Encoding"];
  v4 = [v3 copy];

  return v4;
}

- (id)cachedHapticsResponseForSongItem:(id)a3 representingMediaItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 appleMusicID];
  if (v8 || ([v7 appleMusicID], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [SHNetworkDownloadUtilities cachedFileURLWithFilename:v8 type:UTTypeAppleArchive];
    if (v10)
    {
      v11 = [[SHNetworkDownloadResponse alloc] initWithDownloadedFileLocation:v10 urlResponse:0 error:0];
      v12 = [SHHapticsEndpointResponse alloc];
      v13 = [(SHHapticsEndpointRequester *)self updateMediaItem:v7 withSongItem:v6];
      v14 = [(SHHapticsEndpointResponse *)v12 initWithRequestMediaItem:v13 networkDownloadResponse:v11];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)invalidate
{
  v2 = [(SHHapticsEndpointRequester *)self endpointRequester];
  [v2 invalidate];
}

@end
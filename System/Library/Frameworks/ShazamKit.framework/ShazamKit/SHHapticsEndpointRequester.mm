@interface SHHapticsEndpointRequester
- (BOOL)isHapticTrackAvailableFrom:(id)from songDuration:(double)duration error:(id *)error;
- (SHHapticsEndpointRequester)initWithClientIdentifier:(id)identifier clientType:(int64_t)type;
- (SHHapticsEndpointRequester)initWithNetworkRequester:(id)requester;
- (id)cachedHapticsResponseForSongItem:(id)item representingMediaItem:(id)mediaItem;
- (id)hapticSongItemFromResponse:(id)response songDuration:(double)duration error:(id *)error;
- (id)hapticsDownloadRequestFromDownloadURL:(id)l;
- (id)updateMediaItem:(id)item withSongItem:(id)songItem;
- (void)invalidate;
- (void)performAvailabilityRequest:(id)request completionHandler:(id)handler;
- (void)performFetchRequest:(id)request mediaItem:(id)item completionHandler:(id)handler;
@end

@implementation SHHapticsEndpointRequester

- (SHHapticsEndpointRequester)initWithClientIdentifier:(id)identifier clientType:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [[SHAMSEndpointRequester alloc] initWithClientIdentifier:identifierCopy clientType:type];

  v8 = [(SHHapticsEndpointRequester *)self initWithNetworkRequester:v7];
  return v8;
}

- (SHHapticsEndpointRequester)initWithNetworkRequester:(id)requester
{
  requesterCopy = requester;
  v9.receiver = self;
  v9.super_class = SHHapticsEndpointRequester;
  v6 = [(SHHapticsEndpointRequester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointRequester, requester);
  }

  return v7;
}

- (void)performAvailabilityRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetching haptic song attributes to check for haptics availability with URL %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  endpointRequester = [(SHHapticsEndpointRequester *)self endpointRequester];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008B0C;
  v11[3] = &unk_10007CFF0;
  objc_copyWeak(&v13, buf);
  v10 = handlerCopy;
  v12 = v10;
  [endpointRequester performRequest:requestCopy withReply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)performFetchRequest:(id)request mediaItem:(id)item completionHandler:(id)handler
{
  requestCopy = request;
  itemCopy = item;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  endpointRequester = [(SHHapticsEndpointRequester *)self endpointRequester];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008D78;
  v14[3] = &unk_10007D040;
  objc_copyWeak(&v17, &location);
  v12 = itemCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [endpointRequester performRequest:requestCopy withReply:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)hapticSongItemFromResponse:(id)response songDuration:(double)duration error:(id *)error
{
  responseCopy = response;
  data = [responseCopy data];

  if (data)
  {
    data2 = [responseCopy data];
    v10 = [SHServerHapticsResponseParser hapticSongItemFromServerData:data2 songDuration:error error:duration];
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      error = [responseCopy error];
      v17 = 138412290;
      v18 = error;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No network response for haptics song attributes fetch. Error %@", &v17, 0xCu);
    }

    error2 = [responseCopy error];
    underlyingErrors = [error2 underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    [SHError annotateClientError:error code:600 underlyingError:firstObject];

    v10 = 0;
  }

  return v10;
}

- (BOOL)isHapticTrackAvailableFrom:(id)from songDuration:(double)duration error:(id *)error
{
  v5 = [(SHHapticsEndpointRequester *)self hapticSongItemFromResponse:from songDuration:error error:duration];
  hasHaptics = [v5 hasHaptics];

  return hasHaptics;
}

- (id)updateMediaItem:(id)item withSongItem:(id)songItem
{
  itemCopy = item;
  songItemCopy = songItem;
  appleMusicID = [itemCopy appleMusicID];
  if (appleMusicID)
  {

LABEL_3:
    v8 = itemCopy;
    goto LABEL_6;
  }

  appleMusicID2 = [songItemCopy appleMusicID];

  if (!appleMusicID2)
  {
    goto LABEL_3;
  }

  properties = [itemCopy properties];
  v11 = [NSMutableDictionary dictionaryWithDictionary:properties];

  appleMusicID3 = [songItemCopy appleMusicID];
  [v11 setObject:appleMusicID3 forKeyedSubscript:SHMediaItemAppleMusicID];

  v13 = [v11 copy];
  v8 = [SHMediaItem mediaItemWithProperties:v13];

LABEL_6:

  return v8;
}

- (id)hapticsDownloadRequestFromDownloadURL:(id)l
{
  v3 = [NSMutableURLRequest requestWithURL:l];
  [v3 setHTTPMethod:@"GET"];
  [v3 setValue:@"x-apple-archive" forHTTPHeaderField:@"Accept-Encoding"];
  v4 = [v3 copy];

  return v4;
}

- (id)cachedHapticsResponseForSongItem:(id)item representingMediaItem:(id)mediaItem
{
  itemCopy = item;
  mediaItemCopy = mediaItem;
  appleMusicID = [itemCopy appleMusicID];
  if (appleMusicID || ([mediaItemCopy appleMusicID], (appleMusicID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = appleMusicID;
    v10 = [SHNetworkDownloadUtilities cachedFileURLWithFilename:appleMusicID type:UTTypeAppleArchive];
    if (v10)
    {
      v11 = [[SHNetworkDownloadResponse alloc] initWithDownloadedFileLocation:v10 urlResponse:0 error:0];
      v12 = [SHHapticsEndpointResponse alloc];
      v13 = [(SHHapticsEndpointRequester *)self updateMediaItem:mediaItemCopy withSongItem:itemCopy];
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
  endpointRequester = [(SHHapticsEndpointRequester *)self endpointRequester];
  [endpointRequester invalidate];
}

@end
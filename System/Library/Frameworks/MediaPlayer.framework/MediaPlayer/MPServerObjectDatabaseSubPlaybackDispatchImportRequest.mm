@interface MPServerObjectDatabaseSubPlaybackDispatchImportRequest
- (BOOL)performWithDatabaseOperations:(id)operations error:(id *)error;
- (MPServerObjectDatabaseSubPlaybackDispatchImportRequest)initWithIdentifiers:(id)identifiers playbackResponse:(id)response;
@end

@implementation MPServerObjectDatabaseSubPlaybackDispatchImportRequest

- (BOOL)performWithDatabaseOperations:(id)operations error:(id *)error
{
  operationsCopy = operations;
  payload = [(MPServerObjectDatabaseImportRequest *)self payload];
  hlsAssetInfo = [payload hlsAssetInfo];
  v8 = hlsAssetInfo;
  if (hlsAssetInfo)
  {
    playlistURL = [hlsAssetInfo playlistURL];
    absoluteString = [playlistURL absoluteString];
    alternateKeyCertificateURL = [v8 alternateKeyCertificateURL];
    keyCertificateURL = alternateKeyCertificateURL;
    if (!alternateKeyCertificateURL)
    {
      keyCertificateURL = [v8 keyCertificateURL];
    }

    v29 = payload;
    v27 = operationsCopy;
    alternateKeyServerURL = [v8 alternateKeyServerURL];
    keyServerURL = alternateKeyServerURL;
    if (!alternateKeyServerURL)
    {
      keyServerURL = [v8 keyServerURL];
    }

    keyServerAdamID = [v8 keyServerAdamID];
    longLongValue = [keyServerAdamID longLongValue];
    keyServerProtocolType = [v8 keyServerProtocolType];
    isiTunesStoreStream = [v8 isiTunesStoreStream];
    identifiers = self->_identifiers;
    expirationDate = [v29 expirationDate];
    v17 = expirationDate;
    if (expirationDate)
    {
      v21 = identifiers;
      operationsCopy = v27;
      v18 = absoluteString;
      [v27 importHLSAssetURLString:absoluteString keyCertificateURL:keyCertificateURL keyServerURL:keyServerURL redeliveryId:longLongValue protocolType:keyServerProtocolType isiTunesStoreStream:isiTunesStoreStream forIdentifiers:v21 expirationDate:expirationDate];
    }

    else
    {
      [(MPServerObjectDatabaseImportRequest *)self assetURLExpirationDate];
      v19 = v23 = keyCertificateURL;
      v22 = identifiers;
      operationsCopy = v27;
      v18 = absoluteString;
      [v27 importHLSAssetURLString:absoluteString keyCertificateURL:v23 keyServerURL:keyServerURL redeliveryId:longLongValue protocolType:keyServerProtocolType isiTunesStoreStream:isiTunesStoreStream forIdentifiers:v22 expirationDate:v19];

      keyCertificateURL = v23;
    }

    if (!alternateKeyServerURL)
    {
    }

    payload = v29;
    if (!alternateKeyCertificateURL)
    {
    }
  }

  return v8 != 0;
}

- (MPServerObjectDatabaseSubPlaybackDispatchImportRequest)initWithIdentifiers:(id)identifiers playbackResponse:(id)response
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = MPServerObjectDatabaseSubPlaybackDispatchImportRequest;
  v8 = [(MPServerObjectDatabaseImportRequest *)&v11 _initWithPayload:response];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, identifiers);
  }

  return v9;
}

@end
@interface MPServerObjectDatabaseSubPlaybackDispatchImportRequest
- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4;
- (MPServerObjectDatabaseSubPlaybackDispatchImportRequest)initWithIdentifiers:(id)a3 playbackResponse:(id)a4;
@end

@implementation MPServerObjectDatabaseSubPlaybackDispatchImportRequest

- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MPServerObjectDatabaseImportRequest *)self payload];
  v7 = [v6 hlsAssetInfo];
  v8 = v7;
  if (v7)
  {
    v26 = [v7 playlistURL];
    v25 = [v26 absoluteString];
    v9 = [v8 alternateKeyCertificateURL];
    v10 = v9;
    if (!v9)
    {
      v10 = [v8 keyCertificateURL];
    }

    v29 = v6;
    v27 = v5;
    v11 = [v8 alternateKeyServerURL];
    v28 = v11;
    if (!v11)
    {
      v28 = [v8 keyServerURL];
    }

    v12 = [v8 keyServerAdamID];
    v24 = [v12 longLongValue];
    v13 = [v8 keyServerProtocolType];
    v14 = [v8 isiTunesStoreStream];
    identifiers = self->_identifiers;
    v16 = [v29 expirationDate];
    v17 = v16;
    if (v16)
    {
      v21 = identifiers;
      v5 = v27;
      v18 = v25;
      [v27 importHLSAssetURLString:v25 keyCertificateURL:v10 keyServerURL:v28 redeliveryId:v24 protocolType:v13 isiTunesStoreStream:v14 forIdentifiers:v21 expirationDate:v16];
    }

    else
    {
      [(MPServerObjectDatabaseImportRequest *)self assetURLExpirationDate];
      v19 = v23 = v10;
      v22 = identifiers;
      v5 = v27;
      v18 = v25;
      [v27 importHLSAssetURLString:v25 keyCertificateURL:v23 keyServerURL:v28 redeliveryId:v24 protocolType:v13 isiTunesStoreStream:v14 forIdentifiers:v22 expirationDate:v19];

      v10 = v23;
    }

    if (!v11)
    {
    }

    v6 = v29;
    if (!v9)
    {
    }
  }

  return v8 != 0;
}

- (MPServerObjectDatabaseSubPlaybackDispatchImportRequest)initWithIdentifiers:(id)a3 playbackResponse:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MPServerObjectDatabaseSubPlaybackDispatchImportRequest;
  v8 = [(MPServerObjectDatabaseImportRequest *)&v11 _initWithPayload:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a3);
  }

  return v9;
}

@end
@interface SHShazamKitServerURLBuilder
+ (void)updateTokensForEndpoint:(id)a3 language:(id)a4 storefront:(id)a5 installationID:(id)a6;
- (SHStorefront)storefront;
- (void)defaultValuesWithCompletion:(id)a3;
- (void)loadEndpointForClientIdentifier:(id)a3 clientType:(int64_t)a4 endpointType:(int64_t)a5 installationID:(id)a6 callback:(id)a7;
@end

@implementation SHShazamKitServerURLBuilder

- (void)loadEndpointForClientIdentifier:(id)a3 clientType:(int64_t)a4 endpointType:(int64_t)a5 installationID:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  objc_initWeak(&location, self);
  v15 = +[SHRemoteConfiguration sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004A050;
  v19[3] = &unk_10007E3E8;
  v16 = v14;
  v22 = v16;
  v23[1] = a5;
  v17 = v12;
  v20 = v17;
  objc_copyWeak(v23, &location);
  v18 = v13;
  v21 = v18;
  [v15 hostForClientType:a4 completion:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)defaultValuesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SHRemoteConfiguration sharedInstance];
  [v4 defaultValuesWithCompletion:v3];
}

- (SHStorefront)storefront
{
  storefront = self->_storefront;
  if (!storefront)
  {
    v4 = objc_alloc_init(SHStorefront);
    v5 = self->_storefront;
    self->_storefront = v4;

    storefront = self->_storefront;
  }

  return storefront;
}

+ (void)updateTokensForEndpoint:(id)a3 language:(id)a4 storefront:(id)a5 installationID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  [v11 updateToken:2 withValue:a4];
  [v11 updateToken:3 withValue:v10];

  [v11 updateToken:0 withValue:v9];
}

@end
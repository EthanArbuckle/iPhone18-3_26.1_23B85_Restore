@interface SHShazamKitServerURLBuilder
+ (void)updateTokensForEndpoint:(id)endpoint language:(id)language storefront:(id)storefront installationID:(id)d;
- (SHStorefront)storefront;
- (void)defaultValuesWithCompletion:(id)completion;
- (void)loadEndpointForClientIdentifier:(id)identifier clientType:(int64_t)type endpointType:(int64_t)endpointType installationID:(id)d callback:(id)callback;
@end

@implementation SHShazamKitServerURLBuilder

- (void)loadEndpointForClientIdentifier:(id)identifier clientType:(int64_t)type endpointType:(int64_t)endpointType installationID:(id)d callback:(id)callback
{
  identifierCopy = identifier;
  dCopy = d;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v15 = +[SHRemoteConfiguration sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004A050;
  v19[3] = &unk_10007E3E8;
  v16 = callbackCopy;
  v22 = v16;
  v23[1] = endpointType;
  v17 = identifierCopy;
  v20 = v17;
  objc_copyWeak(v23, &location);
  v18 = dCopy;
  v21 = v18;
  [v15 hostForClientType:type completion:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)defaultValuesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SHRemoteConfiguration sharedInstance];
  [v4 defaultValuesWithCompletion:completionCopy];
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

+ (void)updateTokensForEndpoint:(id)endpoint language:(id)language storefront:(id)storefront installationID:(id)d
{
  dCopy = d;
  storefrontCopy = storefront;
  endpointCopy = endpoint;
  [endpointCopy updateToken:2 withValue:language];
  [endpointCopy updateToken:3 withValue:storefrontCopy];

  [endpointCopy updateToken:0 withValue:dCopy];
}

@end
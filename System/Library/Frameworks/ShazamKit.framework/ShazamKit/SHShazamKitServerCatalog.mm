@interface SHShazamKitServerCatalog
- (SHShazamKitServerCatalog)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4 installationID:(id)a5 musicalFeaturesConfiguration:(id)a6;
- (id)_createMatcher;
- (id)_initWithConfiguration:(id)a3 installationID:(id)a4;
- (void)loadConfiguration:(id)a3;
- (void)loadContext:(id)a3;
@end

@implementation SHShazamKitServerCatalog

- (SHShazamKitServerCatalog)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4 installationID:(id)a5 musicalFeaturesConfiguration:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (([objc_opt_class() validateClientIdentifier:v11] & 1) == 0)
  {
    v22 = [NSString stringWithFormat:@"%@ is not a valid client identifier", v11];
    v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  v14 = objc_alloc_init(SHCatalogConfiguration);
  [v14 setInstallationID:v12];
  [v14 setMusicalFeaturesConfiguration:v13];
  v25.receiver = self;
  v25.super_class = SHShazamKitServerCatalog;
  v15 = [(SHShazamKitServerCatalog *)&v25 initWithConfiguration:v14 error:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientIdentifier, a3);
    v16->_clientType = a4;
    objc_storeStrong(&v16->_installationID, a5);
    v17 = objc_alloc_init(SHShazamKitServerURLBuilder);
    URLBuilder = v16->_URLBuilder;
    v16->_URLBuilder = v17;

    v19 = objc_alloc_init(SHServerResponseContextBuilder);
    contextBuilder = v16->_contextBuilder;
    v16->_contextBuilder = v19;
  }

  return v16;
}

- (id)_initWithConfiguration:(id)a3 installationID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", NSInternalInconsistencyException, @"-[_initWithConfiguration:installationID:] should not be used on this class", 0);
  objc_exception_throw(v7);
}

- (void)loadConfiguration:(id)a3
{
  v4 = a3;
  v8 = [(SHShazamKitServerCatalog *)self URLBuilder];
  v5 = [(SHShazamKitServerCatalog *)self clientIdentifier];
  v6 = [(SHShazamKitServerCatalog *)self clientType];
  v7 = [(SHShazamKitServerCatalog *)self installationID];
  [v8 loadMatchEndpointForClientIdentifier:v5 clientType:v6 installationID:v7 callback:v4];
}

- (void)loadContext:(id)a3
{
  v4 = a3;
  v6 = [(SHShazamKitServerCatalog *)self contextBuilder];
  v5 = [(SHShazamKitServerCatalog *)self clientIdentifier];
  [v6 loadContextForClientIdentifier:v5 completion:v4];
}

- (id)_createMatcher
{
  v2 = [[SHShazamKitServerMatcher alloc] initWithCatalog:self];

  return v2;
}

@end
@interface SHShazamKitServerCatalog
- (SHShazamKitServerCatalog)initWithClientIdentifier:(id)identifier clientType:(int64_t)type installationID:(id)d musicalFeaturesConfiguration:(id)configuration;
- (id)_createMatcher;
- (id)_initWithConfiguration:(id)configuration installationID:(id)d;
- (void)loadConfiguration:(id)configuration;
- (void)loadContext:(id)context;
@end

@implementation SHShazamKitServerCatalog

- (SHShazamKitServerCatalog)initWithClientIdentifier:(id)identifier clientType:(int64_t)type installationID:(id)d musicalFeaturesConfiguration:(id)configuration
{
  identifierCopy = identifier;
  dCopy = d;
  configurationCopy = configuration;
  if (([objc_opt_class() validateClientIdentifier:identifierCopy] & 1) == 0)
  {
    identifierCopy = [NSString stringWithFormat:@"%@ is not a valid client identifier", identifierCopy];
    v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:identifierCopy userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  v14 = objc_alloc_init(SHCatalogConfiguration);
  [v14 setInstallationID:dCopy];
  [v14 setMusicalFeaturesConfiguration:configurationCopy];
  v25.receiver = self;
  v25.super_class = SHShazamKitServerCatalog;
  v15 = [(SHShazamKitServerCatalog *)&v25 initWithConfiguration:v14 error:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientIdentifier, identifier);
    v16->_clientType = type;
    objc_storeStrong(&v16->_installationID, d);
    v17 = objc_alloc_init(SHShazamKitServerURLBuilder);
    URLBuilder = v16->_URLBuilder;
    v16->_URLBuilder = v17;

    v19 = objc_alloc_init(SHServerResponseContextBuilder);
    contextBuilder = v16->_contextBuilder;
    v16->_contextBuilder = v19;
  }

  return v16;
}

- (id)_initWithConfiguration:(id)configuration installationID:(id)d
{
  configurationCopy = configuration;
  dCopy = d;
  v7 = +[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", NSInternalInconsistencyException, @"-[_initWithConfiguration:installationID:] should not be used on this class", 0);
  objc_exception_throw(v7);
}

- (void)loadConfiguration:(id)configuration
{
  configurationCopy = configuration;
  uRLBuilder = [(SHShazamKitServerCatalog *)self URLBuilder];
  clientIdentifier = [(SHShazamKitServerCatalog *)self clientIdentifier];
  clientType = [(SHShazamKitServerCatalog *)self clientType];
  installationID = [(SHShazamKitServerCatalog *)self installationID];
  [uRLBuilder loadMatchEndpointForClientIdentifier:clientIdentifier clientType:clientType installationID:installationID callback:configurationCopy];
}

- (void)loadContext:(id)context
{
  contextCopy = context;
  contextBuilder = [(SHShazamKitServerCatalog *)self contextBuilder];
  clientIdentifier = [(SHShazamKitServerCatalog *)self clientIdentifier];
  [contextBuilder loadContextForClientIdentifier:clientIdentifier completion:contextCopy];
}

- (id)_createMatcher
{
  v2 = [[SHShazamKitServerMatcher alloc] initWithCatalog:self];

  return v2;
}

@end
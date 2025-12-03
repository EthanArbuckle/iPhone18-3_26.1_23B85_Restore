@interface BKWK2LoaderContentInfoRequest
+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithLocation:(id)location bookSnapshot:(id)snapshot ordinal:(unint64_t)ordinal configuration:(id)configuration stylesheetSet:(id)set completion:(id)completion;
+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithPaginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions ordinal:(unint64_t)ordinal stylesheetSet:(id)set completion:(id)completion;
- (BKWK2LoaderContentInfoRequest)initWithLocation:(id)location bookSnapshot:(id)snapshot ordinal:(unint64_t)ordinal configuration:(id)configuration stylesheetSet:(id)set completion:(id)completion;
- (BKWK2LoaderContentInfoRequest)initWithPaginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions ordinal:(unint64_t)ordinal stylesheetSet:(id)set fontSize:(double)size completion:(id)completion;
- (NSString)requestID;
- (id)description;
- (void)setState:(unint64_t)state;
@end

@implementation BKWK2LoaderContentInfoRequest

+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithLocation:(id)location bookSnapshot:(id)snapshot ordinal:(unint64_t)ordinal configuration:(id)configuration stylesheetSet:(id)set completion:(id)completion
{
  completionCopy = completion;
  setCopy = set;
  configurationCopy = configuration;
  snapshotCopy = snapshot;
  locationCopy = location;
  v18 = [[BKWK2LoaderContentInfoRequest alloc] initWithLocation:locationCopy bookSnapshot:snapshotCopy ordinal:ordinal configuration:configurationCopy stylesheetSet:setCopy completion:completionCopy];

  return v18;
}

- (BKWK2LoaderContentInfoRequest)initWithLocation:(id)location bookSnapshot:(id)snapshot ordinal:(unint64_t)ordinal configuration:(id)configuration stylesheetSet:(id)set completion:(id)completion
{
  locationCopy = location;
  obj = snapshot;
  snapshotCopy = snapshot;
  completionCopy = completion;
  setCopy = set;
  configurationCopy = configuration;
  [configurationCopy contentLayoutSize];
  v18 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:snapshotCopy withConfiguration:configurationCopy contentLayoutSize:?];
  v19 = [BEContentCleanupJSOptions cleanupJSOptionsForBookInfoSnapshot:snapshotCopy withConfiguration:configurationCopy];
  v20 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:snapshotCopy ordinal:ordinal];
  [configurationCopy fontSize];
  v22 = v21;

  v23 = [(BKWK2LoaderContentInfoRequest *)self initWithPaginationOptions:v18 cleanupOptions:v19 cfiOptions:v20 ordinal:ordinal stylesheetSet:setCopy fontSize:completionCopy completion:v22];
  if (v23)
  {
    objc_storeStrong(&v23->_location, location);
    objc_storeStrong(&v23->_bookSnapshot, obj);
  }

  return v23;
}

+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithPaginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions ordinal:(unint64_t)ordinal stylesheetSet:(id)set completion:(id)completion
{
  completionCopy = completion;
  setCopy = set;
  cfiOptionsCopy = cfiOptions;
  cleanupOptionsCopy = cleanupOptions;
  optionsCopy = options;
  v18 = [BKWK2LoaderContentInfoRequest alloc];
  [optionsCopy fontSize];
  v19 = [(BKWK2LoaderContentInfoRequest *)v18 initWithPaginationOptions:optionsCopy cleanupOptions:cleanupOptionsCopy cfiOptions:cfiOptionsCopy ordinal:ordinal stylesheetSet:setCopy fontSize:completionCopy completion:?];

  return v19;
}

- (BKWK2LoaderContentInfoRequest)initWithPaginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions ordinal:(unint64_t)ordinal stylesheetSet:(id)set fontSize:(double)size completion:(id)completion
{
  optionsCopy = options;
  cleanupOptionsCopy = cleanupOptions;
  cfiOptionsCopy = cfiOptions;
  setCopy = set;
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = BKWK2LoaderContentInfoRequest;
  v20 = [(BKWK2LoaderContentInfoRequest *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_paginationOptions, options);
    objc_storeStrong(&v21->_cleanupOptions, cleanupOptions);
    objc_storeStrong(&v21->_cfiOptions, cfiOptions);
    objc_storeStrong(&v21->_stylesheetSet, set);
    v21->_ordinal = ordinal;
    v21->_fontSize = size;
    v21->_state = 0;
    v21->_restoreFrame = 1;
    v22 = [completionCopy copy];
    completion = v21->_completion;
    v21->_completion = v22;
  }

  return v21;
}

- (NSString)requestID
{
  requestID = self->_requestID;
  if (!requestID)
  {
    bookSnapshot = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
    bookSnapshot2 = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
    assetID = [bookSnapshot2 assetID];
    [(BKWK2LoaderContentInfoRequest *)self fontSize];
    v7 = [NSNumber numberWithDouble:?];
    stylesheetSet = [(BKWK2LoaderContentInfoRequest *)self stylesheetSet];
    unifedAllFrameStylesheet = [stylesheetSet unifedAllFrameStylesheet];
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", bookSnapshot, assetID, v7, unifedAllFrameStylesheet];

    v11 = [v10 dataUsingEncoding:4];
    bu_sha256 = [v11 bu_sha256];
    v13 = self->_requestID;
    self->_requestID = bu_sha256;

    requestID = self->_requestID;
  }

  return requestID;
}

- (void)setState:(unint64_t)state
{
  v5 = _AERePaginationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBKWK2LoaderContentInfoRequestState(self->_state);
    v7 = NSStringFromBKWK2LoaderContentInfoRequestState(state);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Request transition from '%@' to '%@'", &v8, 0x16u);
  }

  self->_state = state;
}

- (id)description
{
  v18.receiver = self;
  v18.super_class = BKWK2LoaderContentInfoRequest;
  v17 = [(BKWK2LoaderContentInfoRequest *)&v18 description];
  v16 = NSStringFromSelector("requestID");
  requestID = [(BKWK2LoaderContentInfoRequest *)self requestID];
  v13 = NSStringFromSelector("location");
  location = [(BKWK2LoaderContentInfoRequest *)self location];
  v4 = NSStringFromSelector("fontSize");
  [(BKWK2LoaderContentInfoRequest *)self fontSize];
  v5 = [NSNumber numberWithDouble:?];
  v6 = NSStringFromSelector("bookSnapshot");
  bookSnapshot = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
  v8 = NSStringFromSelector("stylesheetSet");
  stylesheetSet = [(BKWK2LoaderContentInfoRequest *)self stylesheetSet];
  v10 = NSStringFromSelector("state");
  v11 = NSStringFromBKWK2LoaderContentInfoRequestState([(BKWK2LoaderContentInfoRequest *)self state]);
  v14 = [NSString stringWithFormat:@"%@: %@, %@ %@: %@, %@: %@, %@: %@, %@: %@, %@: %@", v17, v16, requestID, v13, location, v4, v5, v6, bookSnapshot, v8, stylesheetSet, v10, v11];

  return v14;
}

@end
@interface BKWK2LoaderContentInfoRequest
+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithLocation:(id)a3 bookSnapshot:(id)a4 ordinal:(unint64_t)a5 configuration:(id)a6 stylesheetSet:(id)a7 completion:(id)a8;
+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithPaginationOptions:(id)a3 cleanupOptions:(id)a4 cfiOptions:(id)a5 ordinal:(unint64_t)a6 stylesheetSet:(id)a7 completion:(id)a8;
- (BKWK2LoaderContentInfoRequest)initWithLocation:(id)a3 bookSnapshot:(id)a4 ordinal:(unint64_t)a5 configuration:(id)a6 stylesheetSet:(id)a7 completion:(id)a8;
- (BKWK2LoaderContentInfoRequest)initWithPaginationOptions:(id)a3 cleanupOptions:(id)a4 cfiOptions:(id)a5 ordinal:(unint64_t)a6 stylesheetSet:(id)a7 fontSize:(double)a8 completion:(id)a9;
- (NSString)requestID;
- (id)description;
- (void)setState:(unint64_t)a3;
@end

@implementation BKWK2LoaderContentInfoRequest

+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithLocation:(id)a3 bookSnapshot:(id)a4 ordinal:(unint64_t)a5 configuration:(id)a6 stylesheetSet:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [[BKWK2LoaderContentInfoRequest alloc] initWithLocation:v17 bookSnapshot:v16 ordinal:a5 configuration:v15 stylesheetSet:v14 completion:v13];

  return v18;
}

- (BKWK2LoaderContentInfoRequest)initWithLocation:(id)a3 bookSnapshot:(id)a4 ordinal:(unint64_t)a5 configuration:(id)a6 stylesheetSet:(id)a7 completion:(id)a8
{
  v27 = a3;
  obj = a4;
  v14 = a4;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  [v17 contentLayoutSize];
  v18 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v14 withConfiguration:v17 contentLayoutSize:?];
  v19 = [BEContentCleanupJSOptions cleanupJSOptionsForBookInfoSnapshot:v14 withConfiguration:v17];
  v20 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:v14 ordinal:a5];
  [v17 fontSize];
  v22 = v21;

  v23 = [(BKWK2LoaderContentInfoRequest *)self initWithPaginationOptions:v18 cleanupOptions:v19 cfiOptions:v20 ordinal:a5 stylesheetSet:v16 fontSize:v15 completion:v22];
  if (v23)
  {
    objc_storeStrong(&v23->_location, a3);
    objc_storeStrong(&v23->_bookSnapshot, obj);
  }

  return v23;
}

+ (BKWK2LoaderContentInfoRequest)contentInfoRequestWithPaginationOptions:(id)a3 cleanupOptions:(id)a4 cfiOptions:(id)a5 ordinal:(unint64_t)a6 stylesheetSet:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [BKWK2LoaderContentInfoRequest alloc];
  [v17 fontSize];
  v19 = [(BKWK2LoaderContentInfoRequest *)v18 initWithPaginationOptions:v17 cleanupOptions:v16 cfiOptions:v15 ordinal:a6 stylesheetSet:v14 fontSize:v13 completion:?];

  return v19;
}

- (BKWK2LoaderContentInfoRequest)initWithPaginationOptions:(id)a3 cleanupOptions:(id)a4 cfiOptions:(id)a5 ordinal:(unint64_t)a6 stylesheetSet:(id)a7 fontSize:(double)a8 completion:(id)a9
{
  v26 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = BKWK2LoaderContentInfoRequest;
  v20 = [(BKWK2LoaderContentInfoRequest *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_paginationOptions, a3);
    objc_storeStrong(&v21->_cleanupOptions, a4);
    objc_storeStrong(&v21->_cfiOptions, a5);
    objc_storeStrong(&v21->_stylesheetSet, a7);
    v21->_ordinal = a6;
    v21->_fontSize = a8;
    v21->_state = 0;
    v21->_restoreFrame = 1;
    v22 = [v19 copy];
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
    v4 = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
    v5 = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
    v6 = [v5 assetID];
    [(BKWK2LoaderContentInfoRequest *)self fontSize];
    v7 = [NSNumber numberWithDouble:?];
    v8 = [(BKWK2LoaderContentInfoRequest *)self stylesheetSet];
    v9 = [v8 unifedAllFrameStylesheet];
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", v4, v6, v7, v9];

    v11 = [v10 dataUsingEncoding:4];
    v12 = [v11 bu_sha256];
    v13 = self->_requestID;
    self->_requestID = v12;

    requestID = self->_requestID;
  }

  return requestID;
}

- (void)setState:(unint64_t)a3
{
  v5 = _AERePaginationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBKWK2LoaderContentInfoRequestState(self->_state);
    v7 = NSStringFromBKWK2LoaderContentInfoRequestState(a3);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Request transition from '%@' to '%@'", &v8, 0x16u);
  }

  self->_state = a3;
}

- (id)description
{
  v18.receiver = self;
  v18.super_class = BKWK2LoaderContentInfoRequest;
  v17 = [(BKWK2LoaderContentInfoRequest *)&v18 description];
  v16 = NSStringFromSelector("requestID");
  v15 = [(BKWK2LoaderContentInfoRequest *)self requestID];
  v13 = NSStringFromSelector("location");
  v3 = [(BKWK2LoaderContentInfoRequest *)self location];
  v4 = NSStringFromSelector("fontSize");
  [(BKWK2LoaderContentInfoRequest *)self fontSize];
  v5 = [NSNumber numberWithDouble:?];
  v6 = NSStringFromSelector("bookSnapshot");
  v7 = [(BKWK2LoaderContentInfoRequest *)self bookSnapshot];
  v8 = NSStringFromSelector("stylesheetSet");
  v9 = [(BKWK2LoaderContentInfoRequest *)self stylesheetSet];
  v10 = NSStringFromSelector("state");
  v11 = NSStringFromBKWK2LoaderContentInfoRequestState([(BKWK2LoaderContentInfoRequest *)self state]);
  v14 = [NSString stringWithFormat:@"%@: %@, %@ %@: %@, %@: %@, %@: %@, %@: %@, %@: %@", v17, v16, v15, v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v14;
}

@end
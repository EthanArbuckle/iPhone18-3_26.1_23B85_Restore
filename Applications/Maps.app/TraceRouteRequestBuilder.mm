@interface TraceRouteRequestBuilder
- (TraceRouteRequestBuilder)initWithTraceURL:(id)a3;
- (id)buildDirectionsRequestDetails;
@end

@implementation TraceRouteRequestBuilder

- (id)buildDirectionsRequestDetails
{
  v3 = [MNDirectionsRequestDetails alloc];
  v4 = [(TraceRouteRequestBuilder *)self traceURL];
  v5 = [v4 path];
  v6 = [v3 initWithTracePath:v5];

  return v6;
}

- (TraceRouteRequestBuilder)initWithTraceURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TraceRouteRequestBuilder;
  v6 = [(TraceRouteRequestBuilder *)&v10 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v5 isFileURL])
  {
    objc_storeStrong(&v6->_traceURL, a3);
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "TraceRouteRequestBuilder is expecting a file URL, got %{public}@", buf, 0xCu);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end
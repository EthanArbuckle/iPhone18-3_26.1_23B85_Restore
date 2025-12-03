@interface TraceRouteRequestBuilder
- (TraceRouteRequestBuilder)initWithTraceURL:(id)l;
- (id)buildDirectionsRequestDetails;
@end

@implementation TraceRouteRequestBuilder

- (id)buildDirectionsRequestDetails
{
  v3 = [MNDirectionsRequestDetails alloc];
  traceURL = [(TraceRouteRequestBuilder *)self traceURL];
  path = [traceURL path];
  v6 = [v3 initWithTracePath:path];

  return v6;
}

- (TraceRouteRequestBuilder)initWithTraceURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = TraceRouteRequestBuilder;
  v6 = [(TraceRouteRequestBuilder *)&v10 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([lCopy isFileURL])
  {
    objc_storeStrong(&v6->_traceURL, l);
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "TraceRouteRequestBuilder is expecting a file URL, got %{public}@", buf, 0xCu);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end
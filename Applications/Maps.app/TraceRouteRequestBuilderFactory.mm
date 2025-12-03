@interface TraceRouteRequestBuilderFactory
- (TraceRouteRequestBuilderFactory)initWithTraceURL:(id)l;
@end

@implementation TraceRouteRequestBuilderFactory

- (TraceRouteRequestBuilderFactory)initWithTraceURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = TraceRouteRequestBuilderFactory;
  v5 = [(TraceRouteRequestBuilderFactory *)&v10 init];
  if (v5 && (v6 = [[TraceRouteRequestBuilder alloc] initWithTraceURL:lCopy], builder = v5->_builder, v5->_builder = v6, builder, !v5->_builder))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end
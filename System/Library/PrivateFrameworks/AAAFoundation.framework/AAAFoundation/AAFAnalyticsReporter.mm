@interface AAFAnalyticsReporter
+ (id)analyticsReporterWithTransport:(id)transport;
- (AAFAnalyticsReporter)initWithTransport:(id)transport;
- (void)sendEvent:(id)event;
@end

@implementation AAFAnalyticsReporter

- (AAFAnalyticsReporter)initWithTransport:(id)transport
{
  transportCopy = transport;
  v9.receiver = self;
  v9.super_class = AAFAnalyticsReporter;
  v6 = [(AAFAnalyticsReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, transport);
  }

  return v7;
}

+ (id)analyticsReporterWithTransport:(id)transport
{
  transportCopy = transport;
  v5 = [[self alloc] initWithTransport:transportCopy];

  return v5;
}

- (void)sendEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [eventCopy completeEvent];
  v5 = _AAFLogSystemAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [eventCopy debugDescription];
    v9 = [(AAFAnalyticsTransport *)self->_transport debugDescription];
    v11 = 138413058;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1C8644000, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Sending event: [%@] with transport: [%@]", &v11, 0x2Au);
  }

  [(AAFAnalyticsReporter *)self _sendEvent:eventCopy];
  v10 = *MEMORY[0x1E69E9840];
}

@end
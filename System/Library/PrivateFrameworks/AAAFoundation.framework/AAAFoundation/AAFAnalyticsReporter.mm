@interface AAFAnalyticsReporter
+ (id)analyticsReporterWithTransport:(id)a3;
- (AAFAnalyticsReporter)initWithTransport:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation AAFAnalyticsReporter

- (AAFAnalyticsReporter)initWithTransport:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAFAnalyticsReporter;
  v6 = [(AAFAnalyticsReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, a3);
  }

  return v7;
}

+ (id)analyticsReporterWithTransport:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTransport:v4];

  return v5;
}

- (void)sendEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 completeEvent];
  v5 = _AAFLogSystemAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 debugDescription];
    v9 = [(AAFAnalyticsTransport *)self->_transport debugDescription];
    v11 = 138413058;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1C8644000, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Sending event: [%@] with transport: [%@]", &v11, 0x2Au);
  }

  [(AAFAnalyticsReporter *)self _sendEvent:v4];
  v10 = *MEMORY[0x1E69E9840];
}

@end
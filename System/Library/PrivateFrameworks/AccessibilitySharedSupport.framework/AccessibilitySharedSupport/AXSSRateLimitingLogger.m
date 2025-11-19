@interface AXSSRateLimitingLogger
- (AXSSRateLimitingLogger)initWithLogLevel:(unsigned __int8)a3 categoryLog:(id)a4 timeInterval:(double)a5;
- (BOOL)logString:(id)a3;
- (void)_logStringAtProperLevel:(id)a3;
@end

@implementation AXSSRateLimitingLogger

- (AXSSRateLimitingLogger)initWithLogLevel:(unsigned __int8)a3 categoryLog:(id)a4 timeInterval:(double)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = AXSSRateLimitingLogger;
  v10 = [(AXSSRateLimitingLogger *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_timeInterval = a5;
    v10->_logLevel = a3;
    objc_storeStrong(&v10->_categoryLog, a4);
  }

  return v11;
}

- (BOOL)logString:(id)a3
{
  v4 = a3;
  v5 = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];

  v6 = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;
    [(AXSSRateLimitingLogger *)self timeInterval];
    v12 = v10 > v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0 || v12;
  if (v5 == 0 || v12)
  {
    v14 = [MEMORY[0x1E695DF00] date];
    [(AXSSRateLimitingLogger *)self set_dateSinceLastLog:v14];

    [(AXSSRateLimitingLogger *)self _logStringAtProperLevel:v4];
  }

  return v13;
}

- (void)_logStringAtProperLevel:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXSSRateLimitingLogger *)self categoryLog];
  v6 = [(AXSSRateLimitingLogger *)self logLevel];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C0E8A000, v5, v6, "%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
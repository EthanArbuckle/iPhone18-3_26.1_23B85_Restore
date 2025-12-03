@interface AXSSRateLimitingLogger
- (AXSSRateLimitingLogger)initWithLogLevel:(unsigned __int8)level categoryLog:(id)log timeInterval:(double)interval;
- (BOOL)logString:(id)string;
- (void)_logStringAtProperLevel:(id)level;
@end

@implementation AXSSRateLimitingLogger

- (AXSSRateLimitingLogger)initWithLogLevel:(unsigned __int8)level categoryLog:(id)log timeInterval:(double)interval
{
  logCopy = log;
  v13.receiver = self;
  v13.super_class = AXSSRateLimitingLogger;
  v10 = [(AXSSRateLimitingLogger *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_timeInterval = interval;
    v10->_logLevel = level;
    objc_storeStrong(&v10->_categoryLog, log);
  }

  return v11;
}

- (BOOL)logString:(id)string
{
  stringCopy = string;
  _dateSinceLastLog = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];

  _dateSinceLastLog2 = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];
  if (_dateSinceLastLog2)
  {
    date = [MEMORY[0x1E695DF00] date];
    _dateSinceLastLog3 = [(AXSSRateLimitingLogger *)self _dateSinceLastLog];
    [date timeIntervalSinceDate:_dateSinceLastLog3];
    v10 = v9;
    [(AXSSRateLimitingLogger *)self timeInterval];
    v12 = v10 > v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = _dateSinceLastLog == 0 || v12;
  if (_dateSinceLastLog == 0 || v12)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [(AXSSRateLimitingLogger *)self set_dateSinceLastLog:date2];

    [(AXSSRateLimitingLogger *)self _logStringAtProperLevel:stringCopy];
  }

  return v13;
}

- (void)_logStringAtProperLevel:(id)level
{
  v10 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  categoryLog = [(AXSSRateLimitingLogger *)self categoryLog];
  logLevel = [(AXSSRateLimitingLogger *)self logLevel];
  if (os_log_type_enabled(categoryLog, logLevel))
  {
    v8 = 138412290;
    v9 = levelCopy;
    _os_log_impl(&dword_1C0E8A000, categoryLog, logLevel, "%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
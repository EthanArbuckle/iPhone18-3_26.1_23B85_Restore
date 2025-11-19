@interface PKHandwritingSynthesisLogEntry
- (PKHandwritingSynthesisLogEntry)initWithDebugInfo:(id)a3;
- (PKHandwritingSynthesisLogEntry)initWithLocale:(id)a3 duration:(double)a4 debugInfo:(id)a5;
@end

@implementation PKHandwritingSynthesisLogEntry

- (PKHandwritingSynthesisLogEntry)initWithDebugInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"duration"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"duration"];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  v9 = [v4 objectForKeyedSubscript:@"locale"];
  v10 = [(PKHandwritingSynthesisLogEntry *)self initWithLocale:v9 duration:v4 debugInfo:v8];

  return v10;
}

- (PKHandwritingSynthesisLogEntry)initWithLocale:(id)a3 duration:(double)a4 debugInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKHandwritingSynthesisLogEntry;
  v11 = [(PKHandwritingSynthesisLogEntry *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locale, a3);
    v12->_duration = a4;
    v13 = [v10 mutableCopy];
    debugInfo = v12->_debugInfo;
    v12->_debugInfo = v13;

    [(NSMutableDictionary *)v12->_debugInfo setObject:@"generic" forKeyedSubscript:@"type"];
    [(NSMutableDictionary *)v12->_debugInfo setObject:@"0.1" forKeyedSubscript:@"version"];
  }

  return v12;
}

@end
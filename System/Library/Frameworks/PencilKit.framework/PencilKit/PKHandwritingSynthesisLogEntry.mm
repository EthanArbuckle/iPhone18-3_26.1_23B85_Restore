@interface PKHandwritingSynthesisLogEntry
- (PKHandwritingSynthesisLogEntry)initWithDebugInfo:(id)info;
- (PKHandwritingSynthesisLogEntry)initWithLocale:(id)locale duration:(double)duration debugInfo:(id)info;
@end

@implementation PKHandwritingSynthesisLogEntry

- (PKHandwritingSynthesisLogEntry)initWithDebugInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"duration"];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"duration"];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  v9 = [infoCopy objectForKeyedSubscript:@"locale"];
  v10 = [(PKHandwritingSynthesisLogEntry *)self initWithLocale:v9 duration:infoCopy debugInfo:v8];

  return v10;
}

- (PKHandwritingSynthesisLogEntry)initWithLocale:(id)locale duration:(double)duration debugInfo:(id)info
{
  localeCopy = locale;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = PKHandwritingSynthesisLogEntry;
  v11 = [(PKHandwritingSynthesisLogEntry *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locale, locale);
    v12->_duration = duration;
    v13 = [infoCopy mutableCopy];
    debugInfo = v12->_debugInfo;
    v12->_debugInfo = v13;

    [(NSMutableDictionary *)v12->_debugInfo setObject:@"generic" forKeyedSubscript:@"type"];
    [(NSMutableDictionary *)v12->_debugInfo setObject:@"0.1" forKeyedSubscript:@"version"];
  }

  return v12;
}

@end
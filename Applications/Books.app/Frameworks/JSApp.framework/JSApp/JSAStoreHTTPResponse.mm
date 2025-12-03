@interface JSAStoreHTTPResponse
- (JSAStoreHTTPResponse)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toDictionary;
@end

@implementation JSAStoreHTTPResponse

- (JSAStoreHTTPResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = JSAStoreHTTPResponse;
  v5 = [(JSAStoreHTTPResponse *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statusCode"];
    v7 = BUDynamicCast();
    v5->_statusCode = [v7 integerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"output"];
    output = v5->_output;
    v5->_output = v8;

    objc_opt_class();
    v10 = [dictionaryCopy objectForKeyedSubscript:@"_error"];
    v11 = BUDynamicCast();
    error = v5->__error;
    v5->__error = v11;

    objc_opt_class();
    v13 = [dictionaryCopy objectForKeyedSubscript:@"headers"];
    v14 = BUDynamicCast();
    headers = v5->_headers;
    v5->_headers = v14;

    objc_opt_class();
    v16 = [dictionaryCopy objectForKeyedSubscript:@"performance"];
    v17 = BUDynamicCast();
    performanceMetrics = v5->_performanceMetrics;
    v5->_performanceMetrics = v17;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInteger:self->_statusCode];
  [v3 setObject:v4 forKeyedSubscript:@"statusCode"];

  output = self->_output;
  if (output)
  {
    [v3 setObject:output forKeyedSubscript:@"output"];
  }

  error = self->__error;
  if (error)
  {
    [v3 setObject:error forKeyedSubscript:@"_error"];
  }

  headers = self->_headers;
  if (headers)
  {
    [v3 setObject:headers forKeyedSubscript:@"headers"];
  }

  performanceMetrics = self->_performanceMetrics;
  if (performanceMetrics)
  {
    [v3 setObject:performanceMetrics forKeyedSubscript:@"performance"];
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithInteger:[(JSAStoreHTTPResponse *)self statusCode]];
  headers = [(JSAStoreHTTPResponse *)self headers];
  v21 = [headers objectForKeyedSubscript:@"x-apple-jingle-correlation-key"];
  headers2 = [(JSAStoreHTTPResponse *)self headers];
  v20 = [headers2 objectForKeyedSubscript:@"x-apple-request-uuid"];
  headers3 = [(JSAStoreHTTPResponse *)self headers];
  v8 = [headers3 objectForKeyedSubscript:@"x-apple-application-site"];
  headers4 = [(JSAStoreHTTPResponse *)self headers];
  v10 = [headers4 objectForKeyedSubscript:@"x-apple-application-instance"];
  _error = [(JSAStoreHTTPResponse *)self _error];
  if (_error)
  {
    [(JSAStoreHTTPResponse *)self _error];
    v18 = headers;
    v12 = v5;
    v14 = v13 = v4;
    v15 = [NSString stringWithFormat:@", error=%@", v14];
    v16 = [NSString stringWithFormat:@"<%@(%p) code=%@, correlation=%@, uuid=%@, site=%@, instance=%@%@>", v13, self, v12, v21, v20, v8, v10, v15];

    v4 = v13;
    v5 = v12;
    headers = v18;
  }

  else
  {
    v16 = [NSString stringWithFormat:@"<%@(%p) code=%@, correlation=%@, uuid=%@, site=%@, instance=%@%@>", v4, self, v5, v21, v20, v8, v10, &stru_B7300];
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [JSAStoreHTTPResponse allocWithZone:zone];
  toDictionary = [(JSAStoreHTTPResponse *)self toDictionary];
  v6 = [(JSAStoreHTTPResponse *)v4 initWithDictionary:toDictionary];

  return v6;
}

@end
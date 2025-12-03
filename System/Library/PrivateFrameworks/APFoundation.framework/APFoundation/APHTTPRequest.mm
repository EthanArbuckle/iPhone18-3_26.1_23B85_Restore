@interface APHTTPRequest
- (APHTTPRequest)initWithURL:(id)l HTTPMethod:(int64_t)method HTTPHeaders:(id)headers HTTPBody:(id)body serviceName:(id)name completionHandler:(id)handler;
- (NSDictionary)allHTTPHeaderFields;
- (void)setRequestHeader:(id)header withValue:(id)value;
@end

@implementation APHTTPRequest

- (APHTTPRequest)initWithURL:(id)l HTTPMethod:(int64_t)method HTTPHeaders:(id)headers HTTPBody:(id)body serviceName:(id)name completionHandler:(id)handler
{
  lCopy = l;
  headersCopy = headers;
  bodyCopy = body;
  nameCopy = name;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = APHTTPRequest;
  v22 = [(APHTTPRequest *)&v37 init];
  if (v22)
  {
    v23 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v19, v20, v21);
    identifier = v22->_identifier;
    v22->_identifier = v23;

    objc_storeStrong(&v22->_URL, l);
    v22->_HTTPMethod = method;
    if (headersCopy)
    {
      v28 = objc_msgSend_mutableCopy(headersCopy, v25, v26, v27);
    }

    else
    {
      v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26, v27);
    }

    internalHTTPHeaderFields = v22->_internalHTTPHeaderFields;
    v22->_internalHTTPHeaderFields = v28;

    objc_storeStrong(&v22->_HTTPBody, body);
    objc_storeStrong(&v22->_serviceName, name);
    v33 = objc_msgSend_copy(handlerCopy, v30, v31, v32);
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v33;
  }

  return v22;
}

- (void)setRequestHeader:(id)header withValue:(id)value
{
  valueCopy = value;
  headerCopy = header;
  v10 = objc_msgSend_internalHTTPHeaderFields(self, v7, v8, v9);
  v12 = v10;
  if (valueCopy)
  {
    objc_msgSend_setValue_forKey_(v10, valueCopy, valueCopy, headerCopy);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v10, 0, headerCopy, v11);
  }
}

- (NSDictionary)allHTTPHeaderFields
{
  v4 = objc_msgSend_internalHTTPHeaderFields(self, a2, v2, v3);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

@end
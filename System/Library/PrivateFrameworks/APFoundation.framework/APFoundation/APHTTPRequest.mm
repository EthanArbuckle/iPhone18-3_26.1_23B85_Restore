@interface APHTTPRequest
- (APHTTPRequest)initWithURL:(id)a3 HTTPMethod:(int64_t)a4 HTTPHeaders:(id)a5 HTTPBody:(id)a6 serviceName:(id)a7 completionHandler:(id)a8;
- (NSDictionary)allHTTPHeaderFields;
- (void)setRequestHeader:(id)a3 withValue:(id)a4;
@end

@implementation APHTTPRequest

- (APHTTPRequest)initWithURL:(id)a3 HTTPMethod:(int64_t)a4 HTTPHeaders:(id)a5 HTTPBody:(id)a6 serviceName:(id)a7 completionHandler:(id)a8
{
  v36 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v37.receiver = self;
  v37.super_class = APHTTPRequest;
  v22 = [(APHTTPRequest *)&v37 init];
  if (v22)
  {
    v23 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v19, v20, v21);
    identifier = v22->_identifier;
    v22->_identifier = v23;

    objc_storeStrong(&v22->_URL, a3);
    v22->_HTTPMethod = a4;
    if (v15)
    {
      v28 = objc_msgSend_mutableCopy(v15, v25, v26, v27);
    }

    else
    {
      v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26, v27);
    }

    internalHTTPHeaderFields = v22->_internalHTTPHeaderFields;
    v22->_internalHTTPHeaderFields = v28;

    objc_storeStrong(&v22->_HTTPBody, a6);
    objc_storeStrong(&v22->_serviceName, a7);
    v33 = objc_msgSend_copy(v18, v30, v31, v32);
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v33;
  }

  return v22;
}

- (void)setRequestHeader:(id)a3 withValue:(id)a4
{
  v13 = a4;
  v6 = a3;
  v10 = objc_msgSend_internalHTTPHeaderFields(self, v7, v8, v9);
  v12 = v10;
  if (v13)
  {
    objc_msgSend_setValue_forKey_(v10, v13, v13, v6);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v10, 0, v6, v11);
  }
}

- (NSDictionary)allHTTPHeaderFields
{
  v4 = objc_msgSend_internalHTTPHeaderFields(self, a2, v2, v3);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

@end
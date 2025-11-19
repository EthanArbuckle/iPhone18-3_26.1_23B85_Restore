@interface APHTTPResponse
+ (id)createWithResponseData:(id)a3 URLResponse:(id)a4 error:(id)a5;
- (APHTTPResponse)init;
- (BOOL)valid;
- (id)_initWithResponseData:(id)a3 URLResponse:(id)a4 error:(id)a5;
- (id)valueForResponseHeaderField:(id)a3;
@end

@implementation APHTTPResponse

- (APHTTPResponse)init
{

  return 0;
}

+ (id)createWithResponseData:(id)a3 URLResponse:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [APHTTPResponse alloc];
  v12 = objc_msgSend__initWithResponseData_URLResponse_error_(v10, v11, v9, v8, v7);

  return v12;
}

- (id)_initWithResponseData:(id)a3 URLResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = APHTTPResponse;
  v12 = [(APHTTPResponse *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_responseBody, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_URLResponse, a4);
      v13->_responseStatusCode = objc_msgSend_statusCode(v10, v14, v15, v16);
      v20 = objc_msgSend_allHeaderFields(v10, v17, v18, v19);
      responseHeaders = v13->_responseHeaders;
      v13->_responseHeaders = v20;
    }

    objc_storeStrong(&v13->_responseError, a5);
  }

  return v13;
}

- (id)valueForResponseHeaderField:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_responseHeaders(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, v4, v10);

  return v11;
}

- (BOOL)valid
{
  v8 = objc_msgSend_responseError(self, a2, v2, v3);
  v12 = !v8 && objc_msgSend_responseStatusCode(self, v5, v6, v7) >= 200 && objc_msgSend_responseStatusCode(self, v9, v10, v11) < 300;

  return v12;
}

@end
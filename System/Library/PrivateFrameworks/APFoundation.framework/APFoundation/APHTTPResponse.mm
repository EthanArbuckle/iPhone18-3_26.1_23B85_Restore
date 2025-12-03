@interface APHTTPResponse
+ (id)createWithResponseData:(id)data URLResponse:(id)response error:(id)error;
- (APHTTPResponse)init;
- (BOOL)valid;
- (id)_initWithResponseData:(id)data URLResponse:(id)response error:(id)error;
- (id)valueForResponseHeaderField:(id)field;
@end

@implementation APHTTPResponse

- (APHTTPResponse)init
{

  return 0;
}

+ (id)createWithResponseData:(id)data URLResponse:(id)response error:(id)error
{
  errorCopy = error;
  responseCopy = response;
  dataCopy = data;
  v10 = [APHTTPResponse alloc];
  v12 = objc_msgSend__initWithResponseData_URLResponse_error_(v10, v11, dataCopy, responseCopy, errorCopy);

  return v12;
}

- (id)_initWithResponseData:(id)data URLResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = APHTTPResponse;
  v12 = [(APHTTPResponse *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_responseBody, data);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_URLResponse, response);
      v13->_responseStatusCode = objc_msgSend_statusCode(responseCopy, v14, v15, v16);
      v20 = objc_msgSend_allHeaderFields(responseCopy, v17, v18, v19);
      responseHeaders = v13->_responseHeaders;
      v13->_responseHeaders = v20;
    }

    objc_storeStrong(&v13->_responseError, error);
  }

  return v13;
}

- (id)valueForResponseHeaderField:(id)field
{
  fieldCopy = field;
  v8 = objc_msgSend_responseHeaders(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, fieldCopy, v10);

  return v11;
}

- (BOOL)valid
{
  v8 = objc_msgSend_responseError(self, a2, v2, v3);
  v12 = !v8 && objc_msgSend_responseStatusCode(self, v5, v6, v7) >= 200 && objc_msgSend_responseStatusCode(self, v9, v10, v11) < 300;

  return v12;
}

@end
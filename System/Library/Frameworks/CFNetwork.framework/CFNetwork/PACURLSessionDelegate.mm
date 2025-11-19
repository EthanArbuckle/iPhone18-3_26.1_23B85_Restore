@interface PACURLSessionDelegate
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
@end

@implementation PACURLSessionDelegate

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = [objc_msgSend(a5 protectionSpace];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC received challenge for %@", &v17, 0xCu);
  }

  if (self && objc_getProperty(self, v10, 8, 1) && objc_getProperty(self, v11, 16, 1) && (([v9 isEqualToString:NSURLAuthenticationMethodHTTPDigest] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", NSURLAuthenticationMethodHTTPBasic)))
  {
    v12 = [NSURLCredential alloc];
    Property = objc_getProperty(self, v13, 8, 1);
    v16 = [v12 initWithUser:Property password:objc_getProperty(self persistence:{v15, 16, 1), 1}];
    (*(a6 + 2))(a6, 0, v16);
  }

  else
  {
    (*(a6 + 2))(a6, 1, [a5 proposedCredential]);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = [objc_msgSend(a4 protectionSpace];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC received challenge for %@", &v16, 0xCu);
  }

  if (self && objc_getProperty(self, v9, 8, 1) && objc_getProperty(self, v10, 16, 1) && (([v8 isEqualToString:NSURLAuthenticationMethodNegotiate] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", NSURLAuthenticationMethodNTLM)))
  {
    v11 = [NSURLCredential alloc];
    Property = objc_getProperty(self, v12, 8, 1);
    v15 = [v11 initWithUser:Property password:objc_getProperty(self persistence:{v14, 16, 1), 1}];
    (*(a5 + 2))(a5, 0, v15);
  }

  else
  {
    (*(a5 + 2))(a5, 1, [a4 proposedCredential]);
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 8);
    objc_setProperty_atomic(self, v3, 0, 16);
  }

  v4.receiver = self;
  v4.super_class = PACURLSessionDelegate;
  [(PACURLSessionDelegate *)&v4 dealloc];
}

@end
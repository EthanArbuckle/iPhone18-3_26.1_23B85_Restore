@interface PACURLSessionDelegate
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation PACURLSessionDelegate

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = protectionSpace;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC received challenge for %@", &v17, 0xCu);
  }

  if (self && objc_getProperty(self, v10, 8, 1) && objc_getProperty(self, v11, 16, 1) && (([protectionSpace isEqualToString:NSURLAuthenticationMethodHTTPDigest] & 1) != 0 || objc_msgSend(protectionSpace, "isEqualToString:", NSURLAuthenticationMethodHTTPBasic)))
  {
    v12 = [NSURLCredential alloc];
    Property = objc_getProperty(self, v13, 8, 1);
    v16 = [v12 initWithUser:Property password:objc_getProperty(self persistence:{v15, 16, 1), 1}];
    (*(handler + 2))(handler, 0, v16);
  }

  else
  {
    (*(handler + 2))(handler, 1, [challenge proposedCredential]);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = protectionSpace;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC received challenge for %@", &v16, 0xCu);
  }

  if (self && objc_getProperty(self, v9, 8, 1) && objc_getProperty(self, v10, 16, 1) && (([protectionSpace isEqualToString:NSURLAuthenticationMethodNegotiate] & 1) != 0 || objc_msgSend(protectionSpace, "isEqualToString:", NSURLAuthenticationMethodNTLM)))
  {
    v11 = [NSURLCredential alloc];
    Property = objc_getProperty(self, v12, 8, 1);
    v15 = [v11 initWithUser:Property password:objc_getProperty(self persistence:{v14, 16, 1), 1}];
    (*(handler + 2))(handler, 0, v15);
  }

  else
  {
    (*(handler + 2))(handler, 1, [challenge proposedCredential]);
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
@interface WKNetworkSessionDelegateAllowingOnlyNonRedirectedJSON
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation WKNetworkSessionDelegateAllowingOnlyNonRedirectedJSON

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  MEMORY[0x19EB02040](&v11, [response MIMEType]);
  isSupportedJSONMIMEType = WebCore::MIMETypeRegistry::isSupportedJSONMIMEType(&v11, v7);
  v10 = v11;
  v11 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  (*(handler + 2))(handler, isSupportedJSONMIMEType);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  if ([protectionSpace isEqualToString:*MEMORY[0x1E695AB80]] && objc_msgSend(objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "host"), "isEqualToString:", @"127.0.0.1"))
  {
    {
      v9 = allowedLocalTestServerTrust(void)::serverTrust;
      if (allowedLocalTestServerTrust(void)::serverTrust)
      {
        v10 = [objc_msgSend(challenge "protectionSpace")];
        if (WebCore::certificatesMatch(v9, v10, v11))
        {
          v12 = [MEMORY[0x1E695AC48] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];
          v13 = *(handler + 2);
          handlerCopy2 = handler;
          v15 = 0;
          goto LABEL_9;
        }
      }
    }

    else
    {
      allowedLocalTestServerTrust(void)::serverTrust = 0;
    }
  }

  v13 = *(handler + 2);
  handlerCopy2 = handler;
  v15 = 1;
  v12 = 0;
LABEL_9:

  v13(handlerCopy2, v15, v12);
}

@end
@interface WKNetworkSessionDelegateAllowingOnlyNonRedirectedJSON
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
@end

@implementation WKNetworkSessionDelegateAllowingOnlyNonRedirectedJSON

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  MEMORY[0x19EB02040](&v11, [a5 MIMEType]);
  isSupportedJSONMIMEType = WebCore::MIMETypeRegistry::isSupportedJSONMIMEType(&v11, v7);
  v10 = v11;
  v11 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  (*(a6 + 2))(a6, isSupportedJSONMIMEType);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = [objc_msgSend(a5 protectionSpace];
  if ([v8 isEqualToString:*MEMORY[0x1E695AB80]] && objc_msgSend(objc_msgSend(objc_msgSend(a5, "protectionSpace"), "host"), "isEqualToString:", @"127.0.0.1"))
  {
    {
      v9 = allowedLocalTestServerTrust(void)::serverTrust;
      if (allowedLocalTestServerTrust(void)::serverTrust)
      {
        v10 = [objc_msgSend(a5 "protectionSpace")];
        if (WebCore::certificatesMatch(v9, v10, v11))
        {
          v12 = [MEMORY[0x1E695AC48] credentialForTrust:{objc_msgSend(objc_msgSend(a5, "protectionSpace"), "serverTrust")}];
          v13 = *(a6 + 2);
          v14 = a6;
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

  v13 = *(a6 + 2);
  v14 = a6;
  v15 = 1;
  v12 = 0;
LABEL_9:

  v13(v14, v15, v12);
}

@end
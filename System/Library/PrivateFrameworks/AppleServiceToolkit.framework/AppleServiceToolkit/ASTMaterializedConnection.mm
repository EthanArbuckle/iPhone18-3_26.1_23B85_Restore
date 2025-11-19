@interface ASTMaterializedConnection
- (ASTConnectionStatusDelegate)delegate;
- (ASTMaterializedConnection)init;
- (NSMutableURLRequest)request;
- (id)_acceptLanguage;
- (unint64_t)_rootOfTrust;
- (void)addBody:(id)a3;
- (void)addBody:(id)a3 gzip:(BOOL)a4;
- (void)setIdentity:(id)a3;
- (void)setSessionId:(id)a3;
- (void)setSignature:(id)a3;
- (void)setTimeout:(double)a3;
- (void)signBodyWithPayloadSigner:(id)a3;
- (void)signPayload:(id)a3 withPayloadSigner:(id)a4;
@end

@implementation ASTMaterializedConnection

- (ASTMaterializedConnection)init
{
  v5.receiver = self;
  v5.super_class = ASTMaterializedConnection;
  v2 = [(ASTMaterializedConnection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_networkDisconnectedRetryCount = 0;
    v2->_rootOfTrust = [(ASTMaterializedConnection *)v2 _rootOfTrust];
    v3->_state = 0;
  }

  return v3;
}

- (NSMutableURLRequest)request
{
  request = self->_request;
  if (!request)
  {
    v4 = [(ASTMaterializedConnection *)self serverURL];

    if (v4)
    {
      v5 = [(ASTMaterializedConnection *)self serverURL];
      v6 = [(ASTMaterializedConnection *)self endpoint];
      v7 = [v5 URLByAppendingPathComponent:v6];
    }

    else
    {
      v5 = +[ASTEnvironment currentEnvironment];
      v6 = [v5 serverURL];
      v8 = [(ASTMaterializedConnection *)self endpoint];
      v7 = [v6 URLByAppendingPathComponent:v8];
    }

    v9 = [(ASTMaterializedConnection *)self parameters];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACE0] componentsWithURL:v7 resolvingAgainstBaseURL:0];
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = [(ASTMaterializedConnection *)self parameters];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __36__ASTMaterializedConnection_request__block_invoke;
      v42[3] = &unk_278CBD4F0;
      v43 = v12;
      v14 = v12;
      [v13 enumerateKeysAndObjectsUsingBlock:v42];

      v15 = [v14 copy];
      [v11 setQueryItems:v15];

      v16 = [v11 URL];

      v7 = v16;
    }

    v17 = objc_alloc(MEMORY[0x277CCAB70]);
    [(ASTMaterializedConnection *)self timeout];
    v18 = [v17 initWithURL:v7 cachePolicy:0 timeoutInterval:?];
    v19 = self->_request;
    self->_request = v18;

    v20 = [(ASTMaterializedConnection *)self method];
    [(NSMutableURLRequest *)self->_request setHTTPMethod:v20];

    [(NSMutableURLRequest *)self->_request setHTTPShouldHandleCookies:0];
    [(NSMutableURLRequest *)self->_request setAllowsCellularAccess:[(ASTMaterializedConnection *)self allowsCellularAccess]];
    v21 = self->_request;
    v22 = [(ASTMaterializedConnection *)self accept];
    [(NSMutableURLRequest *)v21 setValue:v22 forHTTPHeaderField:@"Accept"];

    v23 = self->_request;
    v24 = [(ASTMaterializedConnection *)self contentType];
    [(NSMutableURLRequest *)v23 setValue:v24 forHTTPHeaderField:@"Content-Type"];

    v25 = self->_request;
    v26 = [v7 host];
    [(NSMutableURLRequest *)v25 setValue:v26 forHTTPHeaderField:@"Host"];

    v27 = self->_request;
    v28 = [(ASTMaterializedConnection *)self _acceptLanguage];
    [(NSMutableURLRequest *)v27 setValue:v28 forHTTPHeaderField:@"Accept-Language"];

    v29 = self->_request;
    v30 = [(ASTMaterializedConnection *)self identity];
    v31 = [v30 userAgent];
    [(NSMutableURLRequest *)v29 setValue:v31 forHTTPHeaderField:@"User-Agent"];

    v32 = self->_request;
    v33 = +[ASTConnectionUtilities getServerLoggingSelection];
    v34 = [v33 stringValue];
    [(NSMutableURLRequest *)v32 setValue:v34 forHTTPHeaderField:@"X-DA-LOG-LEVEL"];

    v35 = [(ASTMaterializedConnection *)self signature];

    if (v35)
    {
      v36 = self->_request;
      v37 = [(ASTMaterializedConnection *)self signature];
      [(NSMutableURLRequest *)v36 setValue:v37 forHTTPHeaderField:@"Signature"];
    }

    v38 = [(ASTMaterializedConnection *)self sessionId];

    if (v38)
    {
      v39 = self->_request;
      v40 = [(ASTMaterializedConnection *)self sessionId];
      [(NSMutableURLRequest *)v39 setValue:v40 forHTTPHeaderField:@"Diagnostic-Session-ID"];
    }

    request = self->_request;
  }

  return request;
}

void __36__ASTMaterializedConnection_request__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

- (void)setSignature:(id)a3
{
  objc_storeStrong(&self->_signature, a3);
  v5 = [(ASTMaterializedConnection *)self request];
  v4 = [(ASTMaterializedConnection *)self signature];
  [v5 setValue:v4 forHTTPHeaderField:@"Signature"];
}

- (void)setIdentity:(id)a3
{
  objc_storeStrong(&self->_identity, a3);
  v5 = a3;
  v7 = [(ASTMaterializedConnection *)self request];
  v6 = [v5 userAgent];

  [v7 setValue:v6 forHTTPHeaderField:@"User-Agent"];
}

- (void)setTimeout:(double)a3
{
  self->_timeout = a3;
  v4 = [(ASTMaterializedConnection *)self request];
  [v4 setTimeoutInterval:a3];
}

- (void)setSessionId:(id)a3
{
  objc_storeStrong(&self->_sessionId, a3);
  v5 = [(ASTMaterializedConnection *)self request];
  v4 = [(ASTMaterializedConnection *)self sessionId];
  [v5 setValue:v4 forHTTPHeaderField:@"Diagnostic-Session-ID"];
}

- (void)addBody:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = [ASTEncodingUtilities jsonSerializeObject:a3 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "Error during json serialization: %@", buf, 0xCu);
    }
  }

  else if (v4)
  {
    [(ASTMaterializedConnection *)self addBody:v4 gzip:+[ASTConnectionUtilities isGzipEnabled]];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addBody:(id)a3 gzip:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
      v9 = ASTLogHandleForCategory(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = objc_opt_class();
        v22 = 2112;
        v23 = v8;
        v10 = v21;
        _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Request Body: %@", buf, 0x16u);
      }

      v11 = +[ASTTestAutomation sharedInstance];
      v12 = [v11 testAutomationEnabled];

      if (v12)
      {
        v18 = @"payload";
        v19 = v8;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        [ASTTestAutomation postServerRequest:v13];
      }
    }

    v14 = [v7 dataGZipDeflated];

    v15 = [(ASTMaterializedConnection *)self request];
    [v15 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];

    v7 = v14;
  }

  v16 = [(ASTMaterializedConnection *)self request];
  [v16 setHTTPBody:v7];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)signBodyWithPayloadSigner:(id)a3
{
  v4 = a3;
  v5 = [(ASTMaterializedConnection *)self rawBody];

  if (v5)
  {
    v6 = [(ASTMaterializedConnection *)self rawBody];
    [(ASTMaterializedConnection *)self signPayload:v6 withPayloadSigner:v4];
  }

  else
  {
    v7 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ASTMaterializedConnection signBodyWithPayloadSigner:v7];
    }
  }
}

- (void)signPayload:(id)a3 withPayloadSigner:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [ASTEncodingUtilities jsonSerializeObject:a3 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = v8;
    v10 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASTMaterializedConnection signPayload:v9 withPayloadSigner:v10];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v6 && v7)
  {
    v12 = 0;
    v10 = v6[2](v6, v7, &v12);
    v9 = v12;
    if (v10)
    {
      v11 = [v10 base64EncodedStringWithOptions:0];
      [(ASTMaterializedConnection *)self setSignature:v11];
    }

    else
    {
      v11 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ASTMaterializedConnection signPayload:v9 withPayloadSigner:v11];
      }
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (unint64_t)_rootOfTrust
{
  v2 = +[ASTEnvironment currentEnvironment];
  v3 = [v2 server];

  if ((v3 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_240F6E6D0[v3 - 1];
  }
}

- (id)_acceptLanguage
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v4 languageIdentifier];
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

    v3 = v6;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ASTMaterializedConnection__acceptLanguage__block_invoke;
  v11[3] = &unk_278CBD428;
  v12 = v2;
  v7 = v2;
  [v3 enumerateObjectsUsingBlock:v11];
  v8 = [v7 componentsJoinedByString:{@", "}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __44__ASTMaterializedConnection__acceptLanguage__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, BOOL *a4)
{
  v5 = (a3 * -0.1) + 1.0;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@q=%0.1g", a2, v5];;
  [v6 addObject:v7];

  *a4 = v5 <= 0.5;
}

- (ASTConnectionStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)signPayload:(uint64_t)a1 withPayloadSigner:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize payload, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)signPayload:(uint64_t)a1 withPayloadSigner:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "Unable to create connection signature, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
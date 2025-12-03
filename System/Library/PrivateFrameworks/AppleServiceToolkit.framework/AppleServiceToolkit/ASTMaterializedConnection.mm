@interface ASTMaterializedConnection
- (ASTConnectionStatusDelegate)delegate;
- (ASTMaterializedConnection)init;
- (NSMutableURLRequest)request;
- (id)_acceptLanguage;
- (unint64_t)_rootOfTrust;
- (void)addBody:(id)body;
- (void)addBody:(id)body gzip:(BOOL)gzip;
- (void)setIdentity:(id)identity;
- (void)setSessionId:(id)id;
- (void)setSignature:(id)signature;
- (void)setTimeout:(double)timeout;
- (void)signBodyWithPayloadSigner:(id)signer;
- (void)signPayload:(id)payload withPayloadSigner:(id)signer;
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
    serverURL = [(ASTMaterializedConnection *)self serverURL];

    if (serverURL)
    {
      serverURL2 = [(ASTMaterializedConnection *)self serverURL];
      endpoint = [(ASTMaterializedConnection *)self endpoint];
      v7 = [serverURL2 URLByAppendingPathComponent:endpoint];
    }

    else
    {
      serverURL2 = +[ASTEnvironment currentEnvironment];
      endpoint = [serverURL2 serverURL];
      endpoint2 = [(ASTMaterializedConnection *)self endpoint];
      v7 = [endpoint URLByAppendingPathComponent:endpoint2];
    }

    parameters = [(ASTMaterializedConnection *)self parameters];
    v10 = [parameters count];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACE0] componentsWithURL:v7 resolvingAgainstBaseURL:0];
      array = [MEMORY[0x277CBEB18] array];
      parameters2 = [(ASTMaterializedConnection *)self parameters];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __36__ASTMaterializedConnection_request__block_invoke;
      v42[3] = &unk_278CBD4F0;
      v43 = array;
      v14 = array;
      [parameters2 enumerateKeysAndObjectsUsingBlock:v42];

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

    method = [(ASTMaterializedConnection *)self method];
    [(NSMutableURLRequest *)self->_request setHTTPMethod:method];

    [(NSMutableURLRequest *)self->_request setHTTPShouldHandleCookies:0];
    [(NSMutableURLRequest *)self->_request setAllowsCellularAccess:[(ASTMaterializedConnection *)self allowsCellularAccess]];
    v21 = self->_request;
    accept = [(ASTMaterializedConnection *)self accept];
    [(NSMutableURLRequest *)v21 setValue:accept forHTTPHeaderField:@"Accept"];

    v23 = self->_request;
    contentType = [(ASTMaterializedConnection *)self contentType];
    [(NSMutableURLRequest *)v23 setValue:contentType forHTTPHeaderField:@"Content-Type"];

    v25 = self->_request;
    host = [v7 host];
    [(NSMutableURLRequest *)v25 setValue:host forHTTPHeaderField:@"Host"];

    v27 = self->_request;
    _acceptLanguage = [(ASTMaterializedConnection *)self _acceptLanguage];
    [(NSMutableURLRequest *)v27 setValue:_acceptLanguage forHTTPHeaderField:@"Accept-Language"];

    v29 = self->_request;
    identity = [(ASTMaterializedConnection *)self identity];
    userAgent = [identity userAgent];
    [(NSMutableURLRequest *)v29 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

    v32 = self->_request;
    v33 = +[ASTConnectionUtilities getServerLoggingSelection];
    stringValue = [v33 stringValue];
    [(NSMutableURLRequest *)v32 setValue:stringValue forHTTPHeaderField:@"X-DA-LOG-LEVEL"];

    signature = [(ASTMaterializedConnection *)self signature];

    if (signature)
    {
      v36 = self->_request;
      signature2 = [(ASTMaterializedConnection *)self signature];
      [(NSMutableURLRequest *)v36 setValue:signature2 forHTTPHeaderField:@"Signature"];
    }

    sessionId = [(ASTMaterializedConnection *)self sessionId];

    if (sessionId)
    {
      v39 = self->_request;
      sessionId2 = [(ASTMaterializedConnection *)self sessionId];
      [(NSMutableURLRequest *)v39 setValue:sessionId2 forHTTPHeaderField:@"Diagnostic-Session-ID"];
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

- (void)setSignature:(id)signature
{
  objc_storeStrong(&self->_signature, signature);
  request = [(ASTMaterializedConnection *)self request];
  signature = [(ASTMaterializedConnection *)self signature];
  [request setValue:signature forHTTPHeaderField:@"Signature"];
}

- (void)setIdentity:(id)identity
{
  objc_storeStrong(&self->_identity, identity);
  identityCopy = identity;
  request = [(ASTMaterializedConnection *)self request];
  userAgent = [identityCopy userAgent];

  [request setValue:userAgent forHTTPHeaderField:@"User-Agent"];
}

- (void)setTimeout:(double)timeout
{
  self->_timeout = timeout;
  request = [(ASTMaterializedConnection *)self request];
  [request setTimeoutInterval:timeout];
}

- (void)setSessionId:(id)id
{
  objc_storeStrong(&self->_sessionId, id);
  request = [(ASTMaterializedConnection *)self request];
  sessionId = [(ASTMaterializedConnection *)self sessionId];
  [request setValue:sessionId forHTTPHeaderField:@"Diagnostic-Session-ID"];
}

- (void)addBody:(id)body
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = [ASTEncodingUtilities jsonSerializeObject:body error:&v8];
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

- (void)addBody:(id)body gzip:(BOOL)gzip
{
  gzipCopy = gzip;
  v24 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v7 = bodyCopy;
  if (gzipCopy)
  {
    if (bodyCopy)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:bodyCopy encoding:4];
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
      testAutomationEnabled = [v11 testAutomationEnabled];

      if (testAutomationEnabled)
      {
        v18 = @"payload";
        v19 = v8;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        [ASTTestAutomation postServerRequest:v13];
      }
    }

    dataGZipDeflated = [v7 dataGZipDeflated];

    request = [(ASTMaterializedConnection *)self request];
    [request setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];

    v7 = dataGZipDeflated;
  }

  request2 = [(ASTMaterializedConnection *)self request];
  [request2 setHTTPBody:v7];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)signBodyWithPayloadSigner:(id)signer
{
  signerCopy = signer;
  rawBody = [(ASTMaterializedConnection *)self rawBody];

  if (rawBody)
  {
    rawBody2 = [(ASTMaterializedConnection *)self rawBody];
    [(ASTMaterializedConnection *)self signPayload:rawBody2 withPayloadSigner:signerCopy];
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

- (void)signPayload:(id)payload withPayloadSigner:(id)signer
{
  signerCopy = signer;
  v13 = 0;
  v7 = [ASTEncodingUtilities jsonSerializeObject:payload error:&v13];
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

  if (signerCopy && v7)
  {
    v12 = 0;
    v10 = signerCopy[2](signerCopy, v7, &v12);
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
  server = [v2 server];

  if ((server - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_240F6E6D0[server - 1];
  }
}

- (id)_acceptLanguage
{
  v13[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageIdentifier = [currentLocale languageIdentifier];
    v13[0] = languageIdentifier;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

    preferredLanguages = v6;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ASTMaterializedConnection__acceptLanguage__block_invoke;
  v11[3] = &unk_278CBD428;
  v12 = array;
  v7 = array;
  [preferredLanguages enumerateObjectsUsingBlock:v11];
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
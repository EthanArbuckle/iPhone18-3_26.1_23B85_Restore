@interface VSCookieServer
- (NSURL)URL;
- (VSCookieServer)init;
- (id)cookieGetter;
- (id)cookieSetter;
- (void)webServer:(id)server didOpenConnection:(id)connection;
- (void)webServer:(id)server didReceiveError:(id)error;
- (void)webServerConnection:(id)connection didReceiveRequest:(id)request;
@end

@implementation VSCookieServer

- (VSCookieServer)init
{
  v14.receiver = self;
  v14.super_class = VSCookieServer;
  v2 = [(VSCookieServer *)&v14 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v5 = [uUIDString copy];
    cookieName = v2->_cookieName;
    v2->_cookieName = v5;

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v9 = [uUIDString2 copy];
    cookieValue = v2->_cookieValue;
    v2->_cookieValue = v9;

    v11 = objc_alloc_init(VSWebServer);
    server = v2->_server;
    v2->_server = v11;

    [(VSWebServer *)v2->_server setDelegate:v2];
    [(VSWebServer *)v2->_server resume];
  }

  return v2;
}

- (id)cookieGetter
{
  v3 = MEMORY[0x277CCACA8];
  cookieName = [(VSCookieServer *)self cookieName];
  cookieValue = [(VSCookieServer *)self cookieValue];
  v6 = [v3 stringWithFormat:@"%@=%@", cookieName, cookieValue];

  return v6;
}

- (id)cookieSetter
{
  cookieGetter = [(VSCookieServer *)self cookieGetter];
  cookieMaxAge = [(VSCookieServer *)self cookieMaxAge];
  v5 = cookieMaxAge;
  if (cookieMaxAge)
  {
    v6 = [cookieGetter stringByAppendingFormat:@" max-age=%d", objc_msgSend(cookieMaxAge, "intValue")];;

    cookieGetter = v6;
  }

  return cookieGetter;
}

- (void)webServer:(id)server didOpenConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setDelegate:self];
  [connectionCopy resume];
}

- (void)webServer:(id)server didReceiveError:(id)error
{
  serverCopy = server;
  v6 = -[VSWebServer initWithPort:]([VSWebServer alloc], "initWithPort:", [serverCopy port]);
  [serverCopy invalidate];

  [(VSWebServer *)v6 setDelegate:self];
  [(VSCookieServer *)self setServer:v6];
  [(VSWebServer *)v6 resume];
}

- (void)webServerConnection:(id)connection didReceiveRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  method = [requestCopy method];
  if ([method isEqual:@"GET"])
  {
    headerFields = [requestCopy headerFields];
    cookieSetter = [headerFields objectForKey:@"Cookie"];

    if ([cookieSetter length])
    {
      cookieGetter = [(VSCookieServer *)self cookieGetter];
      if ([cookieSetter isEqual:cookieGetter])
      {
        v11 = VSDefaultLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Correct cookie supplied.", &v16, 2u);
        }

        v12 = 204;
      }

      else
      {
        v11 = VSErrorLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(VSCookieServer *)cookieGetter webServerConnection:cookieSetter didReceiveRequest:v11];
        }

        v12 = 403;
      }
    }

    else
    {
      cookieGetter = VSErrorLogObject();
      if (os_log_type_enabled(cookieGetter, OS_LOG_TYPE_ERROR))
      {
        [VSCookieServer webServerConnection:cookieGetter didReceiveRequest:?];
      }

      v12 = 401;
    }

LABEL_20:
    goto LABEL_21;
  }

  if ([method isEqual:@"POST"])
  {
    cookieSetter = [(VSCookieServer *)self cookieSetter];
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = cookieSetter;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Setting cookie %@.", &v16, 0xCu);
    }

    [v6 setObject:cookieSetter forKey:@"Set-Cookie"];
    [v6 setObject:@"*" forKey:@"Access-Control-Allow-Origin"];
    v12 = 201;
    goto LABEL_20;
  }

  v12 = 405;
LABEL_21:
  v14 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v15 = [VSWebServerResponse responseToRequest:requestCopy withCode:v12 headers:v6 bodyData:v14];
  [v15 enqueue];
}

- (NSURL)URL
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v3 setScheme:@"http"];
  [v3 setHost:@"localhost"];
  v4 = MEMORY[0x277CCABB0];
  server = [(VSCookieServer *)self server];
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(server, "port")}];
  [v3 setPort:v6];

  [v3 setPath:@"/"];
  v7 = [v3 URL];

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [components URL] parameter must not be nil."];
  }

  v8 = [v3 URL];

  return v8;
}

- (void)webServerConnection:(os_log_t)log didReceiveRequest:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Incorrect cookie supplied.  Expected %@, Received %@", &v3, 0x16u);
}

@end
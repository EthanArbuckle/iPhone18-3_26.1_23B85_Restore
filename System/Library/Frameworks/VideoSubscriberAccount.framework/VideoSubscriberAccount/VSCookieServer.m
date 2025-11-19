@interface VSCookieServer
- (NSURL)URL;
- (VSCookieServer)init;
- (id)cookieGetter;
- (id)cookieSetter;
- (void)webServer:(id)a3 didOpenConnection:(id)a4;
- (void)webServer:(id)a3 didReceiveError:(id)a4;
- (void)webServerConnection:(id)a3 didReceiveRequest:(id)a4;
@end

@implementation VSCookieServer

- (VSCookieServer)init
{
  v14.receiver = self;
  v14.super_class = VSCookieServer;
  v2 = [(VSCookieServer *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    v5 = [v4 copy];
    cookieName = v2->_cookieName;
    v2->_cookieName = v5;

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    v9 = [v8 copy];
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
  v4 = [(VSCookieServer *)self cookieName];
  v5 = [(VSCookieServer *)self cookieValue];
  v6 = [v3 stringWithFormat:@"%@=%@", v4, v5];

  return v6;
}

- (id)cookieSetter
{
  v3 = [(VSCookieServer *)self cookieGetter];
  v4 = [(VSCookieServer *)self cookieMaxAge];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 stringByAppendingFormat:@" max-age=%d", objc_msgSend(v4, "intValue")];;

    v3 = v6;
  }

  return v3;
}

- (void)webServer:(id)a3 didOpenConnection:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  [v5 resume];
}

- (void)webServer:(id)a3 didReceiveError:(id)a4
{
  v5 = a3;
  v6 = -[VSWebServer initWithPort:]([VSWebServer alloc], "initWithPort:", [v5 port]);
  [v5 invalidate];

  [(VSWebServer *)v6 setDelegate:self];
  [(VSCookieServer *)self setServer:v6];
  [(VSWebServer *)v6 resume];
}

- (void)webServerConnection:(id)a3 didReceiveRequest:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 method];
  if ([v7 isEqual:@"GET"])
  {
    v8 = [v5 headerFields];
    v9 = [v8 objectForKey:@"Cookie"];

    if ([v9 length])
    {
      v10 = [(VSCookieServer *)self cookieGetter];
      if ([v9 isEqual:v10])
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
          [(VSCookieServer *)v10 webServerConnection:v9 didReceiveRequest:v11];
        }

        v12 = 403;
      }
    }

    else
    {
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [VSCookieServer webServerConnection:v10 didReceiveRequest:?];
      }

      v12 = 401;
    }

LABEL_20:
    goto LABEL_21;
  }

  if ([v7 isEqual:@"POST"])
  {
    v9 = [(VSCookieServer *)self cookieSetter];
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Setting cookie %@.", &v16, 0xCu);
    }

    [v6 setObject:v9 forKey:@"Set-Cookie"];
    [v6 setObject:@"*" forKey:@"Access-Control-Allow-Origin"];
    v12 = 201;
    goto LABEL_20;
  }

  v12 = 405;
LABEL_21:
  v14 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v15 = [VSWebServerResponse responseToRequest:v5 withCode:v12 headers:v6 bodyData:v14];
  [v15 enqueue];
}

- (NSURL)URL
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v3 setScheme:@"http"];
  [v3 setHost:@"localhost"];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(VSCookieServer *)self server];
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(v5, "port")}];
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
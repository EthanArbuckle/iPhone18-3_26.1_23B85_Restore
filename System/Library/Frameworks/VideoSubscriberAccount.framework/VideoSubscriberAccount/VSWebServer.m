@interface VSWebServer
- (VSWebServer)initWithPort:(unsigned __int16)a3;
- (VSWebServerDelegate)delegate;
- (id)description;
- (id)name;
- (id)serviceType;
- (unsigned)port;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)suspend;
@end

@implementation VSWebServer

- (VSWebServer)initWithPort:(unsigned __int16)a3
{
  v6.receiver = self;
  v6.super_class = VSWebServer;
  v3 = [(VSWebServer *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_server = _CFHTTPServerCreateService();
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_server);
  v3.receiver = self;
  v3.super_class = VSWebServer;
  [(VSWebServer *)&v3 dealloc];
}

- (id)name
{
  [(VSWebServer *)self server];
  v2 = _CFHTTPServerCopyProperty();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)serviceType
{
  [(VSWebServer *)self server];
  v2 = _CFHTTPServerCopyProperty();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)port
{
  [(VSWebServer *)self server];
  v2 = _CFHTTPServerCopyProperty();
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (void)resume
{
  v3 = [(VSWebServer *)self privateQueue];
  v5 = v3;
  if (v3)
  {
    dispatch_resume(v3);
  }

  else
  {
    v4 = dispatch_queue_create("com.apple.VideoSubscriberAccount.WebServer", 0);
    [(VSWebServer *)self setPrivateQueue:v4];
    [(VSWebServer *)self server];
    _CFHTTPServerSetDispatchQueue();
  }
}

- (void)suspend
{
  v2 = [(VSWebServer *)self privateQueue];
  dispatch_suspend(v2);
}

- (void)invalidate
{
  v2 = [(VSWebServer *)self server];

  MEMORY[0x28210D0F8](v2);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VSWebServer;
  v4 = [(VSWebServer *)&v8 description];
  v5 = CFCopyDescription([(VSWebServer *)self server]);
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

- (VSWebServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
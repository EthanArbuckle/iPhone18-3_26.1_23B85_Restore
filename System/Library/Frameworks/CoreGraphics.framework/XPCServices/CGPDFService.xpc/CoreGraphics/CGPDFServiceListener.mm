@interface CGPDFServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CGPDFServiceListener)initWithListener:(id)listener;
- (id)initForLoopback;
- (id)initForXPCService;
- (void)run;
@end

@implementation CGPDFServiceListener

- (CGPDFServiceListener)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = CGPDFServiceListener;
  v6 = [(CGPDFServiceListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
    [(NSXPCListener *)v7->_listener setDelegate:v7];
  }

  return v7;
}

- (id)initForXPCService
{
  v3 = +[NSXPCListener serviceListener];
  v4 = [(CGPDFServiceListener *)self initWithListener:v3];

  return v4;
}

- (id)initForLoopback
{
  v3 = +[NSXPCListener anonymousListener];
  v4 = [(CGPDFServiceListener *)self initWithListener:v3];

  return v4;
}

- (void)run
{
  listener = [(CGPDFServiceListener *)self listener];
  [listener resume];

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[CGRemotePDFServiceProxy interface];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end
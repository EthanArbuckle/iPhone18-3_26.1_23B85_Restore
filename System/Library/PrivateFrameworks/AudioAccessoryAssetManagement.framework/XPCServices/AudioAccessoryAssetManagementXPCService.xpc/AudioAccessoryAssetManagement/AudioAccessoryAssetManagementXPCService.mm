@interface AudioAccessoryAssetManagementXPCService
- (AudioAccessoryAssetManagementXPCService)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_xpcConnectionInvalidated:(id)invalidated;
@end

@implementation AudioAccessoryAssetManagementXPCService

- (AudioAccessoryAssetManagementXPCService)init
{
  v8.receiver = self;
  v8.super_class = AudioAccessoryAssetManagementXPCService;
  v2 = [(AudioAccessoryAssetManagementXPCService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AudioAccessoryAssetManagementXPCService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AudioAccessoryAssetManagementXPCClientInterface];
  v7 = [NSSet alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:"getTranslationAssets:error:" argumentIndex:0 ofReply:0];
  v11 = objc_alloc_init(AudioAccessoryAssetManagementClientXPCConnection);
  [(AudioAccessoryAssetManagementClientXPCConnection *)v11 setDispatchQueue:self->_dispatchQueue];
  [(AudioAccessoryAssetManagementClientXPCConnection *)v11 setXpcCnx:connectionCopy];
  [(AudioAccessoryAssetManagementClientXPCConnection *)v11 setXpcService:self];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_xpcConnections;
    self->_xpcConnections = v13;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v11];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AudioAccessoryAssetManagementXPCServiceInterface];
  [connectionCopy setExportedInterface:v15];

  exportedInterface = [connectionCopy exportedInterface];
  [exportedInterface setClasses:v10 forSelector:"getTranslationAssetsDownloadSize:localeIdentifiers:completion:" argumentIndex:0 ofReply:0];

  [connectionCopy setExportedObject:v11];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000119C;
  v18[3] = &unk_10000C2E0;
  v18[4] = self;
  v18[5] = v11;
  [connectionCopy setInvalidationHandler:v18];
  [connectionCopy setRemoteObjectInterface:v6];
  [connectionCopy resume];
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000040BC(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_100010D38 <= 20)
  {
    if (dword_100010D38 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_100004124(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
}

@end
@interface CLKWatchFaceLibraryServer
+ (id)sharedInstance;
- (void)_clearConnection;
- (void)_queue_setupConnectionIfNeeded;
- (void)dealloc;
- (void)openWatchFaceURLWithSecurityScopedURL:(id)l sourceApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)validateFaceType:(id)type faceBundleId:(id)id completionHandler:(id)handler;
@end

@implementation CLKWatchFaceLibraryServer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CLKWatchFaceLibraryServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedServer;

  return v2;
}

uint64_t __43__CLKWatchFaceLibraryServer_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedServer = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(CLKWatchFaceLibraryServer *)self _clearConnection];
  v3.receiver = self;
  v3.super_class = CLKWatchFaceLibraryServer;
  [(CLKWatchFaceLibraryServer *)&v3 dealloc];
}

- (void)_queue_setupConnectionIfNeeded
{
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.ClockKit.CLKWatchFaceLibrary"];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = CLKWatchFaceLibraryServerInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v7 = self->_connection;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __59__CLKWatchFaceLibraryServer__queue_setupConnectionIfNeeded__block_invoke;
    v11 = &unk_278A1E700;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:&v8];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_0, v8, v9, v10, v11];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __59__CLKWatchFaceLibraryServer__queue_setupConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)openWatchFaceURLWithSecurityScopedURL:(id)l sourceApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  lCopy = l;
  [(CLKWatchFaceLibraryServer *)self _queue_setupConnectionIfNeeded];
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __119__CLKWatchFaceLibraryServer_openWatchFaceURLWithSecurityScopedURL_sourceApplicationBundleIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_278A1E728;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 openWatchFaceURLWithSecurityScopedURL:lCopy sourceApplicationBundleIdentifier:identifierCopy completionHandler:v12];
}

void __119__CLKWatchFaceLibraryServer_openWatchFaceURLWithSecurityScopedURL_sourceApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLKLoggingObjectForDomain(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __119__CLKWatchFaceLibraryServer_openWatchFaceURLWithSecurityScopedURL_sourceApplicationBundleIdentifier_completionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)validateFaceType:(id)type faceBundleId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  typeCopy = type;
  [(CLKWatchFaceLibraryServer *)self _queue_setupConnectionIfNeeded];
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CLKWatchFaceLibraryServer_validateFaceType_faceBundleId_completionHandler___block_invoke;
  v14[3] = &unk_278A1E728;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 validateFaceType:typeCopy faceBundleId:idCopy completionHandler:v12];
}

void __77__CLKWatchFaceLibraryServer_validateFaceType_faceBundleId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLKLoggingObjectForDomain(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__CLKWatchFaceLibraryServer_validateFaceType_faceBundleId_completionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __119__CLKWatchFaceLibraryServer_openWatchFaceURLWithSecurityScopedURL_sourceApplicationBundleIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "openWatchFaceURLWithSecurityScopedURL: Error: %@", &v2, 0xCu);
}

void __77__CLKWatchFaceLibraryServer_validateFaceType_faceBundleId_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "validateFaceType: faceBundleId: Error: %@", &v2, 0xCu);
}

@end
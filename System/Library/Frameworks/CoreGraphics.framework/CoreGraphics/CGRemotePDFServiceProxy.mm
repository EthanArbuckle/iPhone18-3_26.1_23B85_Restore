@interface CGRemotePDFServiceProxy
+ (id)interface;
+ (id)sharedInstance;
- (CGRemotePDFServiceProxy)initWithCGPDFServiceConnection:(id *)connection;
- (CGRemotePDFServiceProxy)initWithConnection:(id)connection error:(id *)error;
- (CGRemotePDFServiceProxy)initWithLoopbackListener:(id)listener error:(id *)error;
- (id)newRemotePDFDocumentWithData:(id)data error:(id *)error;
- (void)dealloc;
- (void)newRemotePDFDocumentProxyWithData:(id)data withReply:(id)reply;
- (void)newRemotePDFDocumentWithData:(id)data completion:(id)completion;
@end

@implementation CGRemotePDFServiceProxy

- (id)newRemotePDFDocumentWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__19381;
  v23 = __Block_byref_object_dispose__19382;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19381;
  v17 = __Block_byref_object_dispose__19382;
  v18 = 0;
  proxy = self->_proxy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_error___block_invoke;
  v12[3] = &unk_1E6E32FC0;
  v12[4] = &v13;
  v8 = [(CGRemotePDFServiceProtocol *)proxy synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_error___block_invoke_2;
  v11[3] = &unk_1E6E33080;
  v11[4] = &v19;
  [v8 newPDFDocumentWithData:dataCopy withReply:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __62__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v3 = a2;
  NSLog(&cfstr_SError.isa, "[CGRemotePDFServiceProxy newRemotePDFDocumentWithData:error:]_block_invoke", v3);
}

void __62__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_error___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[CGRemotePDFDocumentProxy alloc] initWithRemoteDocument:v3];

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)newRemotePDFDocumentWithData:(id)data completion:(id)completion
{
  completionCopy = completion;
  proxy = self->_proxy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_completion___block_invoke;
  v14[3] = &unk_1E6E336B8;
  v8 = completionCopy;
  v15 = v8;
  dataCopy = data;
  v10 = [(CGRemotePDFServiceProtocol *)proxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_completion___block_invoke_2;
  v12[3] = &unk_1E6E33058;
  v13 = v8;
  v11 = v8;
  [v10 newPDFDocumentWithData:dataCopy withReply:v12];
}

void __67__CGRemotePDFServiceProxy_newRemotePDFDocumentWithData_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[CGRemotePDFDocumentProxy alloc] initWithRemoteDocument:v3];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)newRemotePDFDocumentProxyWithData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__CGRemotePDFServiceProxy_newRemotePDFDocumentProxyWithData_withReply___block_invoke;
  v8[3] = &unk_1E6E33030;
  v9 = replyCopy;
  v7 = replyCopy;
  [(CGRemotePDFServiceProxy *)self newRemotePDFDocumentWithData:data completion:v8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CGRemotePDFServiceProxy;
  [(CGRemotePDFServiceProxy *)&v3 dealloc];
}

- (CGRemotePDFServiceProxy)initWithLoopbackListener:(id)listener error:(id *)error
{
  listenerCopy = listener;
  v7 = MEMORY[0x1E696AF00];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CGRemotePDFServiceProxy_initWithLoopbackListener_error___block_invoke;
  v14[3] = &unk_1E6E33008;
  v15 = listenerCopy;
  v8 = listenerCopy;
  [v7 detachNewThreadWithBlock:v14];
  listener = [v8 listener];
  endpoint = [listener endpoint];

  v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpoint];
  v12 = [(CGRemotePDFServiceProxy *)self initWithConnection:v11 error:error];

  return v12;
}

void __58__CGRemotePDFServiceProxy_initWithLoopbackListener_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:&__block_literal_global_92_19390 block:1000000.0];
  [*(a1 + 32) run];
  abort();
}

- (CGRemotePDFServiceProxy)initWithCGPDFServiceConnection:(id *)connection
{
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CoreGraphics.CGPDFService"];
  v6 = [(CGRemotePDFServiceProxy *)self initWithConnection:v5 error:connection];

  return v6;
}

- (CGRemotePDFServiceProxy)initWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v22.receiver = self;
  v22.super_class = CGRemotePDFServiceProxy;
  v8 = [(CGRemotePDFServiceProxy *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    interface = [objc_opt_class() interface];
    [(NSXPCConnection *)v9->_connection setRemoteObjectInterface:interface];

    [(NSXPCConnection *)v9->_connection resume];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__19381;
    v20 = __Block_byref_object_dispose__19382;
    v21 = 0;
    connection = v9->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__CGRemotePDFServiceProxy_initWithConnection_error___block_invoke;
    v15[3] = &unk_1E6E32FC0;
    v15[4] = &v16;
    v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
    proxy = v9->_proxy;
    v9->_proxy = v12;

    if (!v9->_proxy)
    {

      v9 = 0;
      if (error)
      {
        *error = v17[5];
      }
    }

    _Block_object_dispose(&v16, 8);
  }

  return v9;
}

void __52__CGRemotePDFServiceProxy_initWithConnection_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 description];
  pdf_error("Error connecting to PDFService: %s", [v4 UTF8String]);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_19399);
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __41__CGRemotePDFServiceProxy_sharedInstance__block_invoke()
{
  sharedInstance_singleton = [[CGRemotePDFServiceProxy alloc] initWithCGPDFServiceConnection:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)interface
{
  v22 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF25E458];
  v21 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF25E4B8];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF25E518];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_drawWithBox_size_colorSpace_options_completion_ argumentIndex:2 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
  [v2 setClasses:v19 forSelector:sel_drawWithBox_size_colorSpace_options_completion_ argumentIndex:3 ofReply:0];

  [v21 setInterface:v2 forSelector:sel_getPageAtIndex_completion_ argumentIndex:0 ofReply:1];
  [v22 setInterface:v21 forSelector:sel_newPDFDocumentWithData_withReply_ argumentIndex:0 ofReply:1];

  return v22;
}

@end
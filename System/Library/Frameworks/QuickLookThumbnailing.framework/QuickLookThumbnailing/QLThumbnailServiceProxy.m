@interface QLThumbnailServiceProxy
+ (id)interface;
+ (id)sharedInstanceWithError:(id *)a3;
- (QLThumbnailServiceProxy)initWithError:(id *)a3;
- (id)indexProxy;
- (void)dealloc;
- (void)touchOrAddThumbnailAddition:(id)a3 forURL:(id)a4;
- (void)updateLastHitDateOfAddition:(id)a3 onPhysicalURL:(id)a4;
@end

@implementation QLThumbnailServiceProxy

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49F1500];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49F1560];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v30 = v3;
  [v3 setClasses:v6 forSelector:sel_retrieveAllAdditions_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49EA808];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v7 setClasses:v10 forSelector:sel_didGenerateThumbnailForRequestWithUUID_images_metadata_contentRect_iconFlavor_thumbnailType_clientShouldTakeOwnership_ argumentIndex:1 ofReply:0];

  [v2 setInterface:v7 forSelector:sel_generateSuccessiveThumbnailRepresentationsForRequests_generationHandler_completionHandler_ argumentIndex:1 ofReply:0];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_generateSuccessiveThumbnailRepresentationsForRequests_generationHandler_completionHandler_ argumentIndex:0 ofReply:0];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v2 setClasses:v16 forSelector:sel_cancelThumbnailRequests_ argumentIndex:0 ofReply:0];

  [v2 setInterface:v3 forSelector:sel_askThumbnailAdditionIndex_ argumentIndex:0 ofReply:1];
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v2 setClasses:v19 forSelector:sel_fetchAllDataSeparatedVolumesWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v20 setWithObjects:{v21, v22, v23, v24, v25, v26, v27, objc_opt_class(), 0}];
  [v2 setClasses:v28 forSelector:sel_getAllThumbnailsForIno_fsid_completionHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)sharedInstanceWithError:(id *)a3
{
  v3 = sSharedProxy;
  if (!sSharedProxy)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__QLThumbnailServiceProxy_sharedInstanceWithError___block_invoke;
    v6[3] = &unk_1E836A0A8;
    v6[4] = &v7;
    v6[5] = a1;
    if (sharedInstanceWithError__once == -1)
    {
      if (!a3)
      {
LABEL_5:
        _Block_object_dispose(&v7, 8);

        v3 = sSharedProxy;
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&sharedInstanceWithError__once, v6);
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    *a3 = v8[5];
    goto LABEL_5;
  }

LABEL_6:

  return v3;
}

void __51__QLThumbnailServiceProxy_sharedInstanceWithError___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [v2 initWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = sSharedProxy;
  sSharedProxy = v4;
}

- (QLThumbnailServiceProxy)initWithError:(id *)a3
{
  v19.receiver = self;
  v19.super_class = QLThumbnailServiceProxy;
  v4 = [(QLThumbnailServiceProxy *)&v19 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.quicklook.ThumbnailsAgent" options:4096];
    connection = v4->_connection;
    v4->_connection = v5;

    v7 = [objc_opt_class() interface];
    [(NSXPCConnection *)v4->_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v4->_connection resume];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    v8 = v4->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__QLThumbnailServiceProxy_initWithError___block_invoke;
    v12[3] = &unk_1E836A0D0;
    v12[4] = &v13;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v12];
    proxy = v4->_proxy;
    v4->_proxy = v9;

    if (!v4->_proxy)
    {

      v4 = 0;
      if (a3)
      {
        *a3 = v14[5];
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  return v4;
}

void __41__QLThumbnailServiceProxy_initWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __41__QLThumbnailServiceProxy_initWithError___block_invoke_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = QLThumbnailServiceProxy;
  [(QLThumbnailServiceProxy *)&v3 dealloc];
}

- (id)indexProxy
{
  indexProxy = self->_indexProxy;
  if (!indexProxy)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_indexProxy)
    {
      v5 = +[QLThumbnailServiceProxy sharedInstance];
      v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __37__QLThumbnailServiceProxy_indexProxy__block_invoke_91;
      v8[3] = &unk_1E836A0F8;
      v8[4] = v4;
      [v6 askThumbnailAdditionIndex:v8];
    }

    objc_sync_exit(v4);

    indexProxy = self->_indexProxy;
  }

  return indexProxy;
}

void __37__QLThumbnailServiceProxy_indexProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _log_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __37__QLThumbnailServiceProxy_indexProxy__block_invoke_cold_1(v2, v3);
  }
}

- (void)touchOrAddThumbnailAddition:(id)a3 forURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v7 extensionClass:"com.apple.quicklook.readonly" error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = _log_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailServiceProxy touchOrAddThumbnailAddition:forURL:];
    }
  }

  v11 = [(QLThumbnailServiceProxy *)self indexProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__QLThumbnailServiceProxy_touchOrAddThumbnailAddition_forURL___block_invoke;
  v14[3] = &unk_1E836A140;
  v14[4] = self;
  v15 = v8;
  v16 = v6;
  v12 = v6;
  v13 = v8;
  [v11 hasThumbnailForURLWrapper:v13 updateLastHitDate:1 andSize:0 completion:v14];
}

void __62__QLThumbnailServiceProxy_touchOrAddThumbnailAddition_forURL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) indexProxy];
    [v4 addThumbnailForURLWrapper:*(a1 + 40) size:objc_msgSend(*(a1 + 48) completion:{"additionSize"), &__block_literal_global_95}];
  }
}

- (void)updateLastHitDateOfAddition:(id)a3 onPhysicalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v8 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v7 extensionClass:"com.apple.quicklook.readonly" error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = _log_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailServiceProxy touchOrAddThumbnailAddition:forURL:];
    }
  }

  v11 = [(QLThumbnailServiceProxy *)self indexProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__QLThumbnailServiceProxy_updateLastHitDateOfAddition_onPhysicalURL___block_invoke;
  v15[3] = &unk_1E836A168;
  v16 = v7;
  v17 = self;
  v18 = v8;
  v19 = v6;
  v12 = v6;
  v13 = v8;
  v14 = v7;
  [v11 hasThumbnailForURLWrapper:v13 updateLastHitDate:1 andSize:0 completion:v15];
}

void __69__QLThumbnailServiceProxy_updateLastHitDateOfAddition_onPhysicalURL___block_invoke(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = _log_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1CA1E7000, v3, OS_LOG_TYPE_INFO, "GenStore has a thumbnail for %@ but it was not present in the Quick Look DB", &v7, 0xCu);
    }

    v5 = [*(a1 + 40) indexProxy];
    [v5 addThumbnailForURLWrapper:*(a1 + 48) size:objc_msgSend(*(a1 + 56) completion:{"additionSize"), &__block_literal_global_98}];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __41__QLThumbnailServiceProxy_initWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Error caught while looking for a thumbnail: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __37__QLThumbnailServiceProxy_indexProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "indexProxy received error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)touchOrAddThumbnailAddition:forURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not create FPSandboxingURLWrapper with url: %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end
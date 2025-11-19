@interface NLXPCEmbeddingServerClient
+ (id)sharedClient;
- (NLXPCEmbeddingServerClient)init;
- (void)batchDataFromTokenVectorEmbeddingForStrings:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)compileModelWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dataFromSentenceVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)dataFromTokenVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)loadModelWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)synchronousBatchDataFromTokenVectorEmbeddingForStrings:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)synchronousDataFromTokenVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)synchronousLoadModelWithIdentifier:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation NLXPCEmbeddingServerClient

- (NLXPCEmbeddingServerClient)init
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = NLXPCEmbeddingServerClient;
  v2 = [(NLXPCEmbeddingServerClient *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F10DA488];
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v27[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    v8 = [v6 setWithArray:v7];
    [v5 setClasses:v8 forSelector:sel__xpc_dataFromTokenVectorEmbeddingForString_language_identifier_completionHandler_ argumentIndex:1 ofReply:1];

    v9 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    v11 = [v9 setWithArray:v10];
    [v5 setClasses:v11 forSelector:sel__xpc_batchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler_ argumentIndex:1 ofReply:1];

    v12 = dispatch_queue_create("com.apple.nlcontextualembedding.xpc", 0);
    v13 = dispatch_get_global_queue(2, 0);
    dispatch_set_target_queue(v12, v13);

    v4->_valid = 1;
    v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.naturallanguaged" options:0];
    connection = v4->_connection;
    v4->_connection = v14;

    [(NSXPCConnection *)v4->_connection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v4->_connection _setQueue:v12];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __34__NLXPCEmbeddingServerClient_init__block_invoke;
    v23 = &unk_1E7628FC8;
    v24 = v4;
    v16 = v4->_connection;
    v17 = v4;
    [(NSXPCConnection *)v16 setInvalidationHandler:&v20];
    [(NSXPCConnection *)v4->_connection resume:v20];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __34__NLXPCEmbeddingServerClient_init__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Nlxpcembedding.isa);
  v2 = *(a1 + 32);

  return [v2 setValid:0];
}

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[NLXPCEmbeddingServerClient sharedClient];
  }

  v3 = sharedClient_sharedClient;

  return v3;
}

uint64_t __42__NLXPCEmbeddingServerClient_sharedClient__block_invoke()
{
  sharedClient_sharedClient = objc_alloc_init(NLXPCEmbeddingServerClient);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dataFromTokenVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__NLXPCEmbeddingServerClient_dataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke;
  v20[3] = &unk_1E7628FF0;
  v12 = v10;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__NLXPCEmbeddingServerClient_dataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7629018;
  v19 = v12;
  v17 = v12;
  [v16 _xpc_dataFromTokenVectorEmbeddingForString:v15 language:v14 identifier:v13 completionHandler:v18];
}

void __106__NLXPCEmbeddingServerClient_dataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)synchronousDataFromTokenVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__NLXPCEmbeddingServerClient_synchronousDataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke;
  v20[3] = &unk_1E7628FF0;
  v12 = v10;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__NLXPCEmbeddingServerClient_synchronousDataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7629018;
  v19 = v12;
  v17 = v12;
  [v16 _xpc_dataFromTokenVectorEmbeddingForString:v15 language:v14 identifier:v13 completionHandler:v18];
}

void __117__NLXPCEmbeddingServerClient_synchronousDataFromTokenVectorEmbeddingForString_language_identifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)batchDataFromTokenVectorEmbeddingForStrings:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__NLXPCEmbeddingServerClient_batchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke;
  v20[3] = &unk_1E7628FF0;
  v12 = v10;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__NLXPCEmbeddingServerClient_batchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7629040;
  v19 = v12;
  v17 = v12;
  [v16 _xpc_batchDataFromTokenVectorEmbeddingForStrings:v15 language:v14 identifier:v13 completionHandler:v18];
}

void __112__NLXPCEmbeddingServerClient_batchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)synchronousBatchDataFromTokenVectorEmbeddingForStrings:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __123__NLXPCEmbeddingServerClient_synchronousBatchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke;
  v20[3] = &unk_1E7628FF0;
  v12 = v10;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__NLXPCEmbeddingServerClient_synchronousBatchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7629040;
  v19 = v12;
  v17 = v12;
  [v16 _xpc_batchDataFromTokenVectorEmbeddingForStrings:v15 language:v14 identifier:v13 completionHandler:v18];
}

void __123__NLXPCEmbeddingServerClient_synchronousBatchDataFromTokenVectorEmbeddingForStrings_language_identifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)dataFromSentenceVectorEmbeddingForString:(id)a3 language:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__NLXPCEmbeddingServerClient_dataFromSentenceVectorEmbeddingForString_language_identifier_completionHandler___block_invoke;
  v20[3] = &unk_1E7628FF0;
  v12 = v10;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__NLXPCEmbeddingServerClient_dataFromSentenceVectorEmbeddingForString_language_identifier_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7629068;
  v19 = v12;
  v17 = v12;
  [v16 _xpc_dataFromSentenceVectorEmbeddingForString:v15 language:v14 identifier:v13 completionHandler:v18];
}

void __109__NLXPCEmbeddingServerClient_dataFromSentenceVectorEmbeddingForString_language_identifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)loadModelWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__NLXPCEmbeddingServerClient_loadModelWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E7628FF0;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NLXPCEmbeddingServerClient_loadModelWithIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7629090;
  v13 = v8;
  v11 = v8;
  [v10 _xpc_loadTokenVectorEmbeddingForIdentifier:v9 timeout:v12 completionHandler:0.0];
}

void __72__NLXPCEmbeddingServerClient_loadModelWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)synchronousLoadModelWithIdentifier:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__NLXPCEmbeddingServerClient_synchronousLoadModelWithIdentifier_timeout_completionHandler___block_invoke;
  v16[3] = &unk_1E7628FF0;
  v10 = v8;
  v17 = v10;
  v11 = a3;
  v12 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__NLXPCEmbeddingServerClient_synchronousLoadModelWithIdentifier_timeout_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7629090;
  v15 = v10;
  v13 = v10;
  [v12 _xpc_loadTokenVectorEmbeddingForIdentifier:v11 timeout:v14 completionHandler:a4];
}

void __91__NLXPCEmbeddingServerClient_synchronousLoadModelWithIdentifier_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

- (void)compileModelWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__NLXPCEmbeddingServerClient_compileModelWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E7628FF0;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__NLXPCEmbeddingServerClient_compileModelWithIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7629090;
  v13 = v8;
  v11 = v8;
  [v10 _xpc_compileEmbeddingForIdentifier:v9 completionHandler:v12];
}

void __75__NLXPCEmbeddingServerClient_compileModelWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Nlxpcembedding_0.isa, v3);
  (*(*(a1 + 32) + 16))();
}

@end
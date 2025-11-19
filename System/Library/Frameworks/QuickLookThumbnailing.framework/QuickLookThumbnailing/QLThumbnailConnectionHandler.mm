@interface QLThumbnailConnectionHandler
+ (id)hostXPCInterface;
+ (id)serviceXPCInterface;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (QLThumbnailConnectionHandler)initWithPrincipalObject:(id)a3;
- (void)generateThumbnailForRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation QLThumbnailConnectionHandler

+ (id)serviceXPCInterface
{
  if (serviceXPCInterface_onceToken != -1)
  {
    +[QLThumbnailConnectionHandler serviceXPCInterface];
  }

  v3 = serviceXPCInterface___interface;

  return v3;
}

void __51__QLThumbnailConnectionHandler_serviceXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49ECAC8];
  v1 = serviceXPCInterface___interface;
  serviceXPCInterface___interface = v0;

  v2 = serviceXPCInterface___interface;
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_generateThumbnailForRequest_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = serviceXPCInterface___interface;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_generateThumbnailForRequest_completionHandler_ argumentIndex:0 ofReply:1];
}

+ (id)hostXPCInterface
{
  if (hostXPCInterface_onceToken != -1)
  {
    +[QLThumbnailConnectionHandler hostXPCInterface];
  }

  v3 = hostXPCInterface___interface;

  return v3;
}

uint64_t __48__QLThumbnailConnectionHandler_hostXPCInterface__block_invoke()
{
  hostXPCInterface___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49F15C0];

  return MEMORY[0x1EEE66BB8]();
}

- (QLThumbnailConnectionHandler)initWithPrincipalObject:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = QLThumbnailConnectionHandler;
  v6 = [(QLThumbnailConnectionHandler *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_principalObject, a3);
    v8 = MEMORY[0x1E69E96A8];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.quicklook.thumbnail.connectionhandler.generation", v9);
    generationQueue = v7->_generationQueue;
    v7->_generationQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.quicklook.thumbnail.connectionhandler.reply", v12);
    replyQueue = v7->_replyQueue;
    v7->_replyQueue = v13;
  }

  return v7;
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = +[QLThumbnailConnectionHandler serviceXPCInterface];
  [v4 setExportedInterface:v5];

  [v4 setExportedObject:self];
  v6 = +[QLThumbnailConnectionHandler hostXPCInterface];
  [v4 setRemoteObjectInterface:v6];

  [v4 activate];
  return 1;
}

- (void)generateThumbnailForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = [(QLThumbnailConnectionHandler *)self generationQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E836A1E8;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v13);
}

void __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] item];
  [v2 startAccessingIfNeeded];

  v3 = [a1[4] item];
  v4 = [v3 urlWrapper];
  v5 = [v4 url];
  if (v5)
  {
  }

  else
  {
    v6 = [a1[4] item];
    v7 = [v6 data];

    if (v7)
    {
      goto LABEL_5;
    }

    v10 = a1[7];
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:113 userInfo:0];
    v10[2](v10, 0, v3);
  }

LABEL_5:
  v8 = [a1[5] principalObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke_2;
  v12[3] = &unk_1E836A1C0;
  v11 = *(a1 + 2);
  v9 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v15 = a1[7];
  v14 = a1[6];
  [v8 provideThumbnailForFileRequest:v9 completionHandler:v12];
}

void __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke_3;
  block[3] = &unk_1E836A198;
  v11 = v6;
  v12 = a1[5];
  v15 = a1[7];
  v13 = v5;
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __78__QLThumbnailConnectionHandler_generateThumbnailForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) item];
    [v2 cleanup];

    v3 = *(a1 + 32);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [[QLServiceThumbnailRenderer alloc] initWithRequest:*(a1 + 40) reply:*(a1 + 48) connection:*(a1 + 56) completionHandler:*(a1 + 64)];
    [(QLServiceThumbnailRenderer *)v5 generateThumbnailAndPerformCompletionHandler];
  }
}

@end
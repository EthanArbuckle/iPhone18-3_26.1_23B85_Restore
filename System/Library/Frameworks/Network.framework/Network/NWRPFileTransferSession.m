@interface NWRPFileTransferSession
- (NSData)peerPublicKey;
- (NSData)selfPublicKey;
- (NSString)targetID;
- (NSURL)temporaryDirectoryURL;
- (id)initAsTarget:(BOOL)a3;
- (void)activate;
- (void)handleProgress:(id)a3;
- (void)handleReceivedItem:(id)a3;
- (void)invalidate;
- (void)prepare;
- (void)setPeerPublicKey:(id)a3;
- (void)setTargetID:(id)a3;
- (void)setTemporaryDirectoryURL:(id)a3;
- (void)transferFileURL:(id)a3 completion:(id)a4;
@end

@implementation NWRPFileTransferSession

- (void)handleProgress:(id)a3
{
  v7 = a3;
  v4 = [(NWRPFileTransferSession *)self completionHandler];

  if (v4)
  {
    if (-[NWRPFileTransferSession isTarget](self, "isTarget") && [v7 type] == 11 || objc_msgSend(v7, "totalFileCount") >= 1 && (v5 = objc_msgSend(v7, "totalFileCount"), v5 == objc_msgSend(v7, "transferredFileCount")))
    {
      v6 = [(NWRPFileTransferSession *)self completionHandler];
      v6[2]();
    }
  }
}

- (void)handleReceivedItem:(id)a3
{
  v6 = [a3 filename];
  if (v6)
  {
    v4 = [(NWRPFileTransferSession *)self receivedFileHandler];

    if (v4)
    {
      v5 = [(NWRPFileTransferSession *)self receivedFileHandler];
      (v5)[2](v5, v6);
    }
  }
}

- (void)transferFileURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  gotLoadHelper_x8__OBJC_CLASS___RPFileTransferItem(v7);
  v9 = *(v8 + 2944);
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setItemURL:v10];
  v12 = [v10 lastPathComponent];

  [v11 setFilename:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__NWRPFileTransferSession_transferFileURL_completion___block_invoke;
  v15[3] = &unk_1E6A2E2A0;
  v16 = v6;
  v13 = v6;
  [v11 setCompletionHandler:v15];
  v14 = [(NWRPFileTransferSession *)self session];
  [v14 addItem:v11];
}

- (void)prepare
{
  v2 = [(NWRPFileTransferSession *)self session];
  [v2 prepareTemplateAndReturnError:0];
}

- (void)invalidate
{
  v2 = [(NWRPFileTransferSession *)self session];
  [v2 invalidate];
}

- (void)activate
{
  v2 = [(NWRPFileTransferSession *)self session];
  [v2 activate];
}

- (void)setTemporaryDirectoryURL:(id)a3
{
  v4 = a3;
  v5 = [(NWRPFileTransferSession *)self session];
  [v5 setTemporaryDirectoryURL:v4];
}

- (NSURL)temporaryDirectoryURL
{
  v2 = [(NWRPFileTransferSession *)self session];
  v3 = [v2 temporaryDirectoryURL];

  return v3;
}

- (void)setTargetID:(id)a3
{
  v4 = a3;
  v5 = [(NWRPFileTransferSession *)self session];
  [v5 setTargetID:v4];
}

- (NSString)targetID
{
  v2 = [(NWRPFileTransferSession *)self session];
  v3 = [v2 targetID];

  return v3;
}

- (NSData)selfPublicKey
{
  v2 = [(NWRPFileTransferSession *)self session];
  v3 = [v2 selfPublicKey];

  return v3;
}

- (void)setPeerPublicKey:(id)a3
{
  v4 = a3;
  v5 = [(NWRPFileTransferSession *)self session];
  [v5 setPeerPublicKey:v4];
}

- (NSData)peerPublicKey
{
  v2 = [(NWRPFileTransferSession *)self session];
  v3 = [v2 peerPublicKey];

  return v3;
}

- (id)initAsTarget:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = NWRPFileTransferSession;
  v4 = [(NWRPFileTransferSession *)&v15 init];
  v4->_isTarget = v3;
  objc_initWeak(&location, v4);
  gotLoadHelper_x8__OBJC_CLASS___RPFileTransferSession(v5);
  v7 = objc_alloc_init(*(v6 + 2968));
  session = v4->_session;
  v4->_session = v7;

  [(RPFileTransferSession *)v4->_session setFlags:v3 | 0x50u];
  [(RPFileTransferSession *)v4->_session setProgressHandlerTimeInterval:1.0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__NWRPFileTransferSession_initAsTarget___block_invoke;
  v12[3] = &unk_1E6A2E250;
  objc_copyWeak(&v13, &location);
  [(RPFileTransferSession *)v4->_session setReceivedItemHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__NWRPFileTransferSession_initAsTarget___block_invoke_2;
  v10[3] = &unk_1E6A2E278;
  objc_copyWeak(&v11, &location);
  [(RPFileTransferSession *)v4->_session setProgressHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return v4;
}

void __40__NWRPFileTransferSession_initAsTarget___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a2;
  v5(a3, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleReceivedItem:v6];
}

void __40__NWRPFileTransferSession_initAsTarget___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleProgress:v3];
}

@end
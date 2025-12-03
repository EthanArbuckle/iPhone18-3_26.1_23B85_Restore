@interface NWRPFileTransferSession
- (NSData)peerPublicKey;
- (NSData)selfPublicKey;
- (NSString)targetID;
- (NSURL)temporaryDirectoryURL;
- (id)initAsTarget:(BOOL)target;
- (void)activate;
- (void)handleProgress:(id)progress;
- (void)handleReceivedItem:(id)item;
- (void)invalidate;
- (void)prepare;
- (void)setPeerPublicKey:(id)key;
- (void)setTargetID:(id)d;
- (void)setTemporaryDirectoryURL:(id)l;
- (void)transferFileURL:(id)l completion:(id)completion;
@end

@implementation NWRPFileTransferSession

- (void)handleProgress:(id)progress
{
  progressCopy = progress;
  completionHandler = [(NWRPFileTransferSession *)self completionHandler];

  if (completionHandler)
  {
    if (-[NWRPFileTransferSession isTarget](self, "isTarget") && [progressCopy type] == 11 || objc_msgSend(progressCopy, "totalFileCount") >= 1 && (v5 = objc_msgSend(progressCopy, "totalFileCount"), v5 == objc_msgSend(progressCopy, "transferredFileCount")))
    {
      completionHandler2 = [(NWRPFileTransferSession *)self completionHandler];
      completionHandler2[2]();
    }
  }
}

- (void)handleReceivedItem:(id)item
{
  filename = [item filename];
  if (filename)
  {
    receivedFileHandler = [(NWRPFileTransferSession *)self receivedFileHandler];

    if (receivedFileHandler)
    {
      receivedFileHandler2 = [(NWRPFileTransferSession *)self receivedFileHandler];
      (receivedFileHandler2)[2](receivedFileHandler2, filename);
    }
  }
}

- (void)transferFileURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  gotLoadHelper_x8__OBJC_CLASS___RPFileTransferItem(v7);
  v9 = *(v8 + 2944);
  lCopy = l;
  v11 = objc_alloc_init(v9);
  [v11 setItemURL:lCopy];
  lastPathComponent = [lCopy lastPathComponent];

  [v11 setFilename:lastPathComponent];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__NWRPFileTransferSession_transferFileURL_completion___block_invoke;
  v15[3] = &unk_1E6A2E2A0;
  v16 = completionCopy;
  v13 = completionCopy;
  [v11 setCompletionHandler:v15];
  session = [(NWRPFileTransferSession *)self session];
  [session addItem:v11];
}

- (void)prepare
{
  session = [(NWRPFileTransferSession *)self session];
  [session prepareTemplateAndReturnError:0];
}

- (void)invalidate
{
  session = [(NWRPFileTransferSession *)self session];
  [session invalidate];
}

- (void)activate
{
  session = [(NWRPFileTransferSession *)self session];
  [session activate];
}

- (void)setTemporaryDirectoryURL:(id)l
{
  lCopy = l;
  session = [(NWRPFileTransferSession *)self session];
  [session setTemporaryDirectoryURL:lCopy];
}

- (NSURL)temporaryDirectoryURL
{
  session = [(NWRPFileTransferSession *)self session];
  temporaryDirectoryURL = [session temporaryDirectoryURL];

  return temporaryDirectoryURL;
}

- (void)setTargetID:(id)d
{
  dCopy = d;
  session = [(NWRPFileTransferSession *)self session];
  [session setTargetID:dCopy];
}

- (NSString)targetID
{
  session = [(NWRPFileTransferSession *)self session];
  targetID = [session targetID];

  return targetID;
}

- (NSData)selfPublicKey
{
  session = [(NWRPFileTransferSession *)self session];
  selfPublicKey = [session selfPublicKey];

  return selfPublicKey;
}

- (void)setPeerPublicKey:(id)key
{
  keyCopy = key;
  session = [(NWRPFileTransferSession *)self session];
  [session setPeerPublicKey:keyCopy];
}

- (NSData)peerPublicKey
{
  session = [(NWRPFileTransferSession *)self session];
  peerPublicKey = [session peerPublicKey];

  return peerPublicKey;
}

- (id)initAsTarget:(BOOL)target
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = NWRPFileTransferSession;
  v4 = [(NWRPFileTransferSession *)&v15 init];
  v4->_isTarget = targetCopy;
  objc_initWeak(&location, v4);
  gotLoadHelper_x8__OBJC_CLASS___RPFileTransferSession(v5);
  v7 = objc_alloc_init(*(v6 + 2968));
  session = v4->_session;
  v4->_session = v7;

  [(RPFileTransferSession *)v4->_session setFlags:targetCopy | 0x50u];
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
@interface _MPStoreDownloadBlockObserver
- (_MPStoreDownloadBlockObserver)initWithDownload:(id)a3;
- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4;
- (void)downloadManager:(id)a3 downloadPurchaseDidFinish:(id)a4;
@end

@implementation _MPStoreDownloadBlockObserver

- (void)downloadManager:(id)a3 downloadPurchaseDidFinish:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  didFinishPurchaseHandler = self->_didFinishPurchaseHandler;
  if (didFinishPurchaseHandler)
  {
    didFinishPurchaseHandler[2](didFinishPurchaseHandler, v7);
    v9 = self->_didFinishPurchaseHandler;
    self->_didFinishPurchaseHandler = 0;
  }

  if (!self->_didFinishDownloadHandler)
  {
    if (self->_download)
    {
      v10 = +[MPStoreDownloadManager sharedManager];
      v13[0] = self->_download;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v10 removeObserver:self forDownloads:v11];
    }

    v12 = +[MPStoreDownloadManager sharedManager];
    [v12 _unregisterBlockObserver:self];
  }
}

- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_download == v7)
  {
    didFinishPurchaseHandler = self->_didFinishPurchaseHandler;
    if (didFinishPurchaseHandler)
    {
      didFinishPurchaseHandler[2](didFinishPurchaseHandler, v7);
      v9 = self->_didFinishPurchaseHandler;
      self->_didFinishPurchaseHandler = 0;
    }

    didFinishDownloadHandler = self->_didFinishDownloadHandler;
    if (didFinishDownloadHandler)
    {
      didFinishDownloadHandler[2](didFinishDownloadHandler, v7);
      v11 = self->_didFinishDownloadHandler;
      self->_didFinishDownloadHandler = 0;
    }

    if (self->_download)
    {
      v12 = +[MPStoreDownloadManager sharedManager];
      v15[0] = self->_download;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 removeObserver:self forDownloads:v13];
    }

    v14 = +[MPStoreDownloadManager sharedManager];
    [v14 _unregisterBlockObserver:self];
  }
}

- (_MPStoreDownloadBlockObserver)initWithDownload:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _MPStoreDownloadBlockObserver;
  v6 = [(_MPStoreDownloadBlockObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_download, a3);
    if (v5)
    {
      v8 = +[MPStoreDownloadManager sharedManager];
      v12[0] = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v8 addObserver:v7 forDownloads:v9];
    }
  }

  return v7;
}

@end
@interface _MPStoreDownloadBlockObserver
- (_MPStoreDownloadBlockObserver)initWithDownload:(id)download;
- (void)downloadManager:(id)manager downloadDidFinish:(id)finish;
- (void)downloadManager:(id)manager downloadPurchaseDidFinish:(id)finish;
@end

@implementation _MPStoreDownloadBlockObserver

- (void)downloadManager:(id)manager downloadPurchaseDidFinish:(id)finish
{
  v13[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  finishCopy = finish;
  didFinishPurchaseHandler = self->_didFinishPurchaseHandler;
  if (didFinishPurchaseHandler)
  {
    didFinishPurchaseHandler[2](didFinishPurchaseHandler, finishCopy);
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

- (void)downloadManager:(id)manager downloadDidFinish:(id)finish
{
  v15[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  finishCopy = finish;
  if (self->_download == finishCopy)
  {
    didFinishPurchaseHandler = self->_didFinishPurchaseHandler;
    if (didFinishPurchaseHandler)
    {
      didFinishPurchaseHandler[2](didFinishPurchaseHandler, finishCopy);
      v9 = self->_didFinishPurchaseHandler;
      self->_didFinishPurchaseHandler = 0;
    }

    didFinishDownloadHandler = self->_didFinishDownloadHandler;
    if (didFinishDownloadHandler)
    {
      didFinishDownloadHandler[2](didFinishDownloadHandler, finishCopy);
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

- (_MPStoreDownloadBlockObserver)initWithDownload:(id)download
{
  v12[1] = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  v11.receiver = self;
  v11.super_class = _MPStoreDownloadBlockObserver;
  v6 = [(_MPStoreDownloadBlockObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_download, download);
    if (downloadCopy)
    {
      v8 = +[MPStoreDownloadManager sharedManager];
      v12[0] = downloadCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v8 addObserver:v7 forDownloads:v9];
    }
  }

  return v7;
}

@end
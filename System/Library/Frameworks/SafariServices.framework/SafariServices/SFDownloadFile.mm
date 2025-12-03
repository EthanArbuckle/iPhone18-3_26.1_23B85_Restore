@interface SFDownloadFile
- (SFDownloadFile)initWithURL:(id)l bookmarkData:(id)data;
- (SFDownloadFileDelegate)delegate;
- (void)_resumeWithCurrentURL:(id)l previousURL:(id)rL;
- (void)_startResuming;
- (void)_suspend;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)presentedItemDidChange;
- (void)presentedItemDidMoveToURL:(id)l;
@end

@implementation SFDownloadFile

- (SFDownloadFile)initWithURL:(id)l bookmarkData:(id)data
{
  lCopy = l;
  dataCopy = data;
  if (!(lCopy | dataCopy))
  {
    v8 = 0;
    lCopy = 0;
    goto LABEL_18;
  }

  v8 = dataCopy;
  if (lCopy)
  {
    if (dataCopy)
    {
      LOBYTE(startAccessingSecurityScopedResource) = 0;
      goto LABEL_5;
    }

    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v28 = 0;
    v8 = [lCopy bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v28];
    v19 = v28;
    if (v19)
    {
      v20 = v19;
      v21 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SFDownloadFile initWithURL:v21 bookmarkData:v20];
        if (!startAccessingSecurityScopedResource)
        {
          goto LABEL_17;
        }
      }

      else if (!startAccessingSecurityScopedResource)
      {
LABEL_17:

        goto LABEL_18;
      }

      [lCopy stopAccessingSecurityScopedResource];
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(location) = 0;
    v29 = 0;
    lCopy = [objc_alloc(MEMORY[0x1E695DFF8]) initByResolvingBookmarkData:dataCopy options:0 relativeToURL:0 bookmarkDataIsStale:&location error:&v29];
    v17 = v29;
    if (v17 || location == 1)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SFDownloadFile initWithURL:v18 bookmarkData:v17];
      }

      [lCopy stopAccessingSecurityScopedResource];

      goto LABEL_18;
    }

    getpid();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    if (sandbox_check())
    {
      LOBYTE(startAccessingSecurityScopedResource) = [lCopy startAccessingSecurityScopedResource];
    }

    else
    {
      LOBYTE(startAccessingSecurityScopedResource) = 1;
    }
  }

LABEL_5:
  v27.receiver = self;
  v27.super_class = SFDownloadFile;
  self = [(SFDownloadFile *)&v27 init];
  if (!self)
  {
LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

  objc_initWeak(&location, self);
  objc_storeStrong(&self->_URL, lCopy);
  objc_storeStrong(&self->_bookmarkData, v8);
  self->_usingSecurityScopedURL = startAccessingSecurityScopedResource;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SFDownloadFile.%p", self];
  uTF8String = [v10 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create(uTF8String, v13);
  queue = self->_queue;
  self->_queue = v14;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDownloadFile_initWithURL_bookmarkData___block_invoke;
  block[3] = &unk_1E848F8F0;
  objc_copyWeak(&v25, &location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  self = self;
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

void __43__SFDownloadFile_initWithURL_bookmarkData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x1E69DC668] sharedApplication];
    v3 = [v2 applicationState];

    if (v3 == 2)
    {
      v5[10] = 1;
    }

    else
    {
      [MEMORY[0x1E696ABF8] addFilePresenter:v5];
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v5 selector:sel__suspend name:*MEMORY[0x1E69DDAC8] object:0];
    [v4 addObserver:v5 selector:sel__startResuming name:*MEMORY[0x1E69DDBC0] object:0];

    WeakRetained = v5;
  }
}

- (void)dealloc
{
  [(SFDownloadFile *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFDownloadFile;
  [(SFDownloadFile *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    if (!self->_suspended)
    {
      [MEMORY[0x1E696ABF8] removeFilePresenter:self];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    self->_invalidated = 1;
    if (self->_usingSecurityScopedURL)
    {
      URL = self->_URL;

      [(NSURL *)URL stopAccessingSecurityScopedResource];
    }
  }
}

- (void)_suspend
{
  if (!self->_invalidated)
  {
    if (self->_hasPendingResume)
    {
      self->_hasPendingResume = 0;
    }

    else
    {
      self->_suspended = 1;
      v3 = MEMORY[0x1E696ABF8];
      selfCopy = self;
      [v3 removeFilePresenter:selfCopy];
    }
  }
}

- (void)_startResuming
{
  if (!self->_invalidated && !self->_hasPendingResume)
  {
    self->_hasPendingResume = 1;
    v3 = self->_bookmarkData;
    v4 = self->_URL;
    objc_initWeak(&location, self);
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__SFDownloadFile__startResuming__block_invoke;
    v8[3] = &unk_1E8495A28;
    v9 = v3;
    v10 = v4;
    v6 = v4;
    v7 = v3;
    objc_copyWeak(&v11, &location);
    dispatch_async(queue, v8);
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }
}

void __32__SFDownloadFile__startResuming__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFF8]);
  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [v2 initByResolvingBookmarkData:v3 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v5 safari_privacyPreservingDescription];
      *buf = 138740227;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Could not resolve bookmark previously at %{sensitive}@; %{public}@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__SFDownloadFile__startResuming__block_invoke_13;
  v11[3] = &unk_1E848FB68;
  objc_copyWeak(&v14, (a1 + 48));
  v12 = v4;
  v13 = *(a1 + 40);
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
}

void __32__SFDownloadFile__startResuming__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _resumeWithCurrentURL:*(a1 + 32) previousURL:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_resumeWithCurrentURL:(id)l previousURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if (!self->_invalidated && self->_hasPendingResume)
  {
    *&self->_suspended = 0;
    objc_storeStrong(&self->_URL, l);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    URL = self->_URL;
    if (URL)
    {
      if (([(NSURL *)URL isEqual:rLCopy]& 1) == 0)
      {
        [WeakRetained downloadFileDidChangeURL:self];
      }
    }

    else
    {
      [WeakRetained downloadFileWillBeDeleted:self];
    }

    if (!self->_invalidated)
    {
      [MEMORY[0x1E696ABF8] addFilePresenter:self];
    }
  }
}

- (void)presentedItemDidMoveToURL:(id)l
{
  objc_storeStrong(&self->_URL, l);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained downloadFileDidChangeURL:self];
}

- (void)presentedItemDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained downloadFileContentsDidChange:self];
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained downloadFileWillBeDeleted:self];

  handlerCopy[2](handlerCopy, 0);
}

- (SFDownloadFileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithURL:(void *)a1 bookmarkData:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed to resolve download file bookmark data: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)initWithURL:(void *)a1 bookmarkData:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed to create bookmark data for download file: %{public}@", v7, v8, v9, v10, 2u);
}

@end
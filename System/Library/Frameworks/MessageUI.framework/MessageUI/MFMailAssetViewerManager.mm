@interface MFMailAssetViewerManager
+ (id)log;
- (MFMailAssetViewerManager)initWithDelegate:(id)delegate;
- (MFMailAssetViewerManagerDelegate)delegate;
- (id)handlerForAttachmentContext:(id)context;
- (void)assetViewer:(id)viewer editCompletedWithURL:(id)l;
- (void)assetViewerEditCanceled:(id)canceled;
- (void)assetViewerSceneClosed:(id)closed;
- (void)assetViewerSceneLaunched:(id)launched;
@end

@implementation MFMailAssetViewerManager

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MFMailAssetViewerManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __31__MFMailAssetViewerManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (MFMailAssetViewerManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MFMailAssetViewerManager;
  v5 = [(MFMailAssetViewerManager *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E699B7F0]);
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = [v6 initWithObject:v7];
    handlers = v5->_handlers;
    v5->_handlers = v8;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (id)handlerForAttachmentContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [[MFMailAssetViewerHandler alloc] initWithAttachmentContext:contextCopy delegate:self];
  handlers = [(MFMailAssetViewerManager *)self handlers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MFMailAssetViewerManager_handlerForAttachmentContext___block_invoke;
  v10[3] = &unk_1E806E788;
  v7 = v5;
  v11 = v7;
  [handlers performWhileLocked:v10];

  v8 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Created and registered handler %@", buf, 0xCu);
  }

  return v7;
}

- (void)assetViewerSceneLaunched:(id)launched
{
  v7 = *MEMORY[0x1E69E9840];
  launchedCopy = launched;
  v4 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = launchedCopy;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene launched for %@", &v5, 0xCu);
  }
}

- (void)assetViewerSceneClosed:(id)closed
{
  v13 = *MEMORY[0x1E69E9840];
  closedCopy = closed;
  v5 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = closedCopy;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene closed for %@", buf, 0xCu);
  }

  handlers = [(MFMailAssetViewerManager *)self handlers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MFMailAssetViewerManager_assetViewerSceneClosed___block_invoke;
  v9[3] = &unk_1E806E788;
  v7 = closedCopy;
  v10 = v7;
  [handlers performWhileLocked:v9];

  delegate = [(MFMailAssetViewerManager *)self delegate];
  [delegate assetViewerManager:self sceneClosedForHandler:v7];
}

- (void)assetViewer:(id)viewer editCompletedWithURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  viewerCopy = viewer;
  lCopy = l;
  v8 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = viewerCopy;
    v17 = 2112;
    v18 = lCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Asset Viewerscene edit completed %@ for %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MFMailAssetViewerManager_assetViewer_editCompletedWithURL___block_invoke;
  v12[3] = &unk_1E806CC80;
  v12[4] = self;
  v9 = viewerCopy;
  v13 = v9;
  v10 = lCopy;
  v14 = v10;
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  [mainThreadScheduler performBlock:v12];
}

void __61__MFMailAssetViewerManager_assetViewer_editCompletedWithURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetViewerManager:*(a1 + 32) editCompletedForHandler:*(a1 + 40) URL:*(a1 + 48)];
}

- (void)assetViewerEditCanceled:(id)canceled
{
  v7 = *MEMORY[0x1E69E9840];
  canceledCopy = canceled;
  v4 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = canceledCopy;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene edit canceled %@", &v5, 0xCu);
  }
}

- (MFMailAssetViewerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
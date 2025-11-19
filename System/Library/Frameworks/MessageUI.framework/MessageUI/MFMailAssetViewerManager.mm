@interface MFMailAssetViewerManager
+ (id)log;
- (MFMailAssetViewerManager)initWithDelegate:(id)a3;
- (MFMailAssetViewerManagerDelegate)delegate;
- (id)handlerForAttachmentContext:(id)a3;
- (void)assetViewer:(id)a3 editCompletedWithURL:(id)a4;
- (void)assetViewerEditCanceled:(id)a3;
- (void)assetViewerSceneClosed:(id)a3;
- (void)assetViewerSceneLaunched:(id)a3;
@end

@implementation MFMailAssetViewerManager

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MFMailAssetViewerManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (MFMailAssetViewerManager)initWithDelegate:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (id)handlerForAttachmentContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MFMailAssetViewerHandler alloc] initWithAttachmentContext:v4 delegate:self];
  v6 = [(MFMailAssetViewerManager *)self handlers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MFMailAssetViewerManager_handlerForAttachmentContext___block_invoke;
  v10[3] = &unk_1E806E788;
  v7 = v5;
  v11 = v7;
  [v6 performWhileLocked:v10];

  v8 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Created and registered handler %@", buf, 0xCu);
  }

  return v7;
}

- (void)assetViewerSceneLaunched:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene launched for %@", &v5, 0xCu);
  }
}

- (void)assetViewerSceneClosed:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene closed for %@", buf, 0xCu);
  }

  v6 = [(MFMailAssetViewerManager *)self handlers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MFMailAssetViewerManager_assetViewerSceneClosed___block_invoke;
  v9[3] = &unk_1E806E788;
  v7 = v4;
  v10 = v7;
  [v6 performWhileLocked:v9];

  v8 = [(MFMailAssetViewerManager *)self delegate];
  [v8 assetViewerManager:self sceneClosedForHandler:v7];
}

- (void)assetViewer:(id)a3 editCompletedWithURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Asset Viewerscene edit completed %@ for %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MFMailAssetViewerManager_assetViewer_editCompletedWithURL___block_invoke;
  v12[3] = &unk_1E806CC80;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  v11 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v11 performBlock:v12];
}

void __61__MFMailAssetViewerManager_assetViewer_editCompletedWithURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetViewerManager:*(a1 + 32) editCompletedForHandler:*(a1 + 40) URL:*(a1 + 48)];
}

- (void)assetViewerEditCanceled:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[MFMailAssetViewerManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Asset Viewer scene edit canceled %@", &v5, 0xCu);
  }
}

- (MFMailAssetViewerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
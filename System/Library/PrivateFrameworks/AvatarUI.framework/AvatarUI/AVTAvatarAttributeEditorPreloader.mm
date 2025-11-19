@interface AVTAvatarAttributeEditorPreloader
- (AVTAvatarAttributeEditorPreloader)initWithResourceLoader:(id)a3 logger:(id)a4;
- (void)cancelAllPreloading;
- (void)cancelPreloadForSectionItemIndexPath:(id)a3;
- (void)dealloc;
- (void)preloadCategory:(id)a3;
- (void)preloadSectionItem:(id)a3 atIndexPath:(id)a4;
@end

@implementation AVTAvatarAttributeEditorPreloader

- (AVTAvatarAttributeEditorPreloader)initWithResourceLoader:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorPreloader;
  v9 = [(AVTAvatarAttributeEditorPreloader *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceLoader, a3);
    objc_storeStrong(&v10->_logger, a4);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    cancelationTokens = v10->_cancelationTokens;
    v10->_cancelationTokens = v11;
  }

  return v10;
}

- (void)cancelAllPreloading
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(AVTAvatarAttributeEditorPreloader *)self logger];
        v11 = [v9 description];
        [v10 logCancelingPreLoadingTask:v11];

        [v9 cancel];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  [v12 removeAllObjects];
}

- (void)dealloc
{
  [(AVTAvatarAttributeEditorPreloader *)self cancelAllPreloading];
  v3.receiver = self;
  v3.super_class = AVTAvatarAttributeEditorPreloader;
  [(AVTAvatarAttributeEditorPreloader *)&v3 dealloc];
}

- (void)preloadSectionItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTAvatarAttributeEditorPreloader *)self logger];
  [v8 logPreLoadingNeededForIndex:objc_msgSend(v7 section:{"item"), objc_msgSend(v7, "section")}];

  v9 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    objc_initWeak(&location, self);
    v11 = [(AVTAvatarAttributeEditorPreloader *)self resourceLoader];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__AVTAvatarAttributeEditorPreloader_preloadSectionItem_atIndexPath___block_invoke;
    v16[3] = &unk_1E7F3A858;
    objc_copyWeak(&v18, &location);
    v12 = v7;
    v17 = v12;
    v10 = [v11 preLoadResourcesForSectionItem:v6 completionHandler:v16];

    v13 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
    [v13 setObject:v10 forKeyedSubscript:v12];

    v14 = [(AVTAvatarAttributeEditorPreloader *)self logger];
    v15 = [v10 description];
    [v14 logRequestingPreLoadingTask:v15 forIndex:objc_msgSend(v12 section:{"item"), objc_msgSend(v12, "section")}];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __68__AVTAvatarAttributeEditorPreloader_preloadSectionItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cancelationTokens];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5 == v3)
  {
    v6 = [WeakRetained cancelationTokens];
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

- (void)cancelPreloadForSectionItemIndexPath:(id)a3
{
  v9 = a3;
  v4 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  v5 = [v4 objectForKeyedSubscript:v9];

  if (v5)
  {
    v6 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
    [v6 setObject:0 forKeyedSubscript:v9];

    v7 = [(AVTAvatarAttributeEditorPreloader *)self logger];
    v8 = [v5 description];
    [v7 logCancelingPreLoadingTask:v8];

    [v5 cancel];
  }
}

- (void)preloadCategory:(id)a3
{
  v4 = a3;
  [(AVTAvatarAttributeEditorPreloader *)self cancelAllPreloading];
  objc_initWeak(&location, self);
  v5 = [(AVTAvatarAttributeEditorPreloader *)self resourceLoader];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__AVTAvatarAttributeEditorPreloader_preloadCategory___block_invoke;
  v11 = &unk_1E7F3A880;
  objc_copyWeak(&v12, &location);
  v6 = [v5 preLoadResourcesForPresetResourcesProvider:v4 completionHandler:&v8];

  v7 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens:v8];
  [v7 setObject:v6 forKeyedSubscript:@"categoryPreload"];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__AVTAvatarAttributeEditorPreloader_preloadCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained cancelationTokens];
  v5 = [v4 objectForKeyedSubscript:@"categoryPreload"];

  if (v5 == v3)
  {
    v6 = [WeakRetained cancelationTokens];
    [v6 setObject:0 forKeyedSubscript:@"categoryPreload"];
  }
}

@end
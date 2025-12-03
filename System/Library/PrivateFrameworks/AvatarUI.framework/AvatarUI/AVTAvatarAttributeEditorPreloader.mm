@interface AVTAvatarAttributeEditorPreloader
- (AVTAvatarAttributeEditorPreloader)initWithResourceLoader:(id)loader logger:(id)logger;
- (void)cancelAllPreloading;
- (void)cancelPreloadForSectionItemIndexPath:(id)path;
- (void)dealloc;
- (void)preloadCategory:(id)category;
- (void)preloadSectionItem:(id)item atIndexPath:(id)path;
@end

@implementation AVTAvatarAttributeEditorPreloader

- (AVTAvatarAttributeEditorPreloader)initWithResourceLoader:(id)loader logger:(id)logger
{
  loaderCopy = loader;
  loggerCopy = logger;
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorPreloader;
  v9 = [(AVTAvatarAttributeEditorPreloader *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceLoader, loader);
    objc_storeStrong(&v10->_logger, logger);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cancelationTokens = v10->_cancelationTokens;
    v10->_cancelationTokens = dictionary;
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
  cancelationTokens = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  allValues = [cancelationTokens allValues];

  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        logger = [(AVTAvatarAttributeEditorPreloader *)self logger];
        v11 = [v9 description];
        [logger logCancelingPreLoadingTask:v11];

        [v9 cancel];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  cancelationTokens2 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  [cancelationTokens2 removeAllObjects];
}

- (void)dealloc
{
  [(AVTAvatarAttributeEditorPreloader *)self cancelAllPreloading];
  v3.receiver = self;
  v3.super_class = AVTAvatarAttributeEditorPreloader;
  [(AVTAvatarAttributeEditorPreloader *)&v3 dealloc];
}

- (void)preloadSectionItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  logger = [(AVTAvatarAttributeEditorPreloader *)self logger];
  [logger logPreLoadingNeededForIndex:objc_msgSend(pathCopy section:{"item"), objc_msgSend(pathCopy, "section")}];

  cancelationTokens = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  v10 = [cancelationTokens objectForKeyedSubscript:pathCopy];

  if (!v10)
  {
    objc_initWeak(&location, self);
    resourceLoader = [(AVTAvatarAttributeEditorPreloader *)self resourceLoader];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__AVTAvatarAttributeEditorPreloader_preloadSectionItem_atIndexPath___block_invoke;
    v16[3] = &unk_1E7F3A858;
    objc_copyWeak(&v18, &location);
    v12 = pathCopy;
    v17 = v12;
    v10 = [resourceLoader preLoadResourcesForSectionItem:itemCopy completionHandler:v16];

    cancelationTokens2 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
    [cancelationTokens2 setObject:v10 forKeyedSubscript:v12];

    logger2 = [(AVTAvatarAttributeEditorPreloader *)self logger];
    v15 = [v10 description];
    [logger2 logRequestingPreLoadingTask:v15 forIndex:objc_msgSend(v12 section:{"item"), objc_msgSend(v12, "section")}];

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

- (void)cancelPreloadForSectionItemIndexPath:(id)path
{
  pathCopy = path;
  cancelationTokens = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
  v5 = [cancelationTokens objectForKeyedSubscript:pathCopy];

  if (v5)
  {
    cancelationTokens2 = [(AVTAvatarAttributeEditorPreloader *)self cancelationTokens];
    [cancelationTokens2 setObject:0 forKeyedSubscript:pathCopy];

    logger = [(AVTAvatarAttributeEditorPreloader *)self logger];
    v8 = [v5 description];
    [logger logCancelingPreLoadingTask:v8];

    [v5 cancel];
  }
}

- (void)preloadCategory:(id)category
{
  categoryCopy = category;
  [(AVTAvatarAttributeEditorPreloader *)self cancelAllPreloading];
  objc_initWeak(&location, self);
  resourceLoader = [(AVTAvatarAttributeEditorPreloader *)self resourceLoader];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__AVTAvatarAttributeEditorPreloader_preloadCategory___block_invoke;
  v11 = &unk_1E7F3A880;
  objc_copyWeak(&v12, &location);
  v6 = [resourceLoader preLoadResourcesForPresetResourcesProvider:categoryCopy completionHandler:&v8];

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
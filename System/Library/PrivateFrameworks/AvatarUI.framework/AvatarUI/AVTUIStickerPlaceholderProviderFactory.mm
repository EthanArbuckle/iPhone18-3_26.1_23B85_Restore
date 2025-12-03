@interface AVTUIStickerPlaceholderProviderFactory
- (AVTUIStickerPlaceholderProviderFactory)initWithImageProvider:(id)provider;
- (id)placeholderProvider;
@end

@implementation AVTUIStickerPlaceholderProviderFactory

- (AVTUIStickerPlaceholderProviderFactory)initWithImageProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = AVTUIStickerPlaceholderProviderFactory;
  v5 = [(AVTUIStickerPlaceholderProviderFactory *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1BFB0DE80](providerCopy);
    imageProvider = v5->_imageProvider;
    v5->_imageProvider = v6;
  }

  return v5;
}

- (id)placeholderProvider
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AVTUIStickerPlaceholderProviderFactory_placeholderProvider__block_invoke;
  v8[3] = &unk_1E7F3AEC0;
  objc_copyWeak(&v9, &location);
  v2 = [v8 copy];
  v6 = MEMORY[0x1BFB0DE80](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __61__AVTUIStickerPlaceholderProviderFactory_placeholderProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained queuedHandlers];

  if (v5)
  {
    v6 = [WeakRetained queuedHandlers];
    v7 = MEMORY[0x1BFB0DE80](v3);
    [v6 addObject:v7];

    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = MEMORY[0x1BFB0DE80](v3);
    v11 = [v9 arrayWithObject:v10];
    [WeakRetained setQueuedHandlers:v11];

    objc_initWeak(&location, WeakRetained);
    v12 = [WeakRetained imageProvider];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__AVTUIStickerPlaceholderProviderFactory_placeholderProvider__block_invoke_2;
    v15[3] = &unk_1E7F3AE98;
    objc_copyWeak(&v17, &location);
    v16 = v3;
    v13 = (v12)[2](v12, v15, 0);

    v8 = MEMORY[0x1BFB0DE80](v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __61__AVTUIStickerPlaceholderProviderFactory_placeholderProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained queuedHandlers];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [WeakRetained queuedHandlers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [WeakRetained setQueuedHandlers:0];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end
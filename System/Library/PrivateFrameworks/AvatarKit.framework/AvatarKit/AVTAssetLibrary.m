@interface AVTAssetLibrary
+ (id)sharedAssetLibrary;
- (id)assetWithType:(int64_t)a3 identifier:(id)a4;
- (void)reload;
@end

@implementation AVTAssetLibrary

- (void)reload
{
  for (i = 0; i != 42; ++i)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_assets[i];
    self->_assets[i] = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_assetsByName[i];
    self->_assetsByName[i] = v6;
  }

  for (j = 0; j != 42; ++j)
  {
    v9 = AVTPrecompiledMemojiAssetsForComponentType(j);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __25__AVTAssetLibrary_reload__block_invoke;
    v10[3] = &unk_1E7F48320;
    v10[4] = self;
    v10[5] = j;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __25__AVTAssetLibrary_reload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[AVTResourceLocator sharedResourceLocator];
  v12 = [(AVTResourceLocator *)v7 urlForMemojiAssetAtPath:v5 isDirectory:1];

  v8 = [AVTAsset alloc];
  v9 = *(a1 + 40);
  v10 = [v12 path];
  v11 = [(AVTAsset *)v8 initWithType:v9 identifier:v6 path:v10];

  [*(*(a1 + 32) + 8 * *(a1 + 40) + 8) addObject:v11];
  [*(*(a1 + 32) + 8 * *(a1 + 40) + 344) setObject:v11 forKeyedSubscript:v6];
}

+ (id)sharedAssetLibrary
{
  if (sharedAssetLibrary_onceToken != -1)
  {
    +[AVTAssetLibrary sharedAssetLibrary];
  }

  v3 = sharedAssetLibrary_sharedInstance;

  return v3;
}

uint64_t __37__AVTAssetLibrary_sharedAssetLibrary__block_invoke()
{
  v0 = objc_alloc_init(AVTAssetLibrary);
  v1 = sharedAssetLibrary_sharedInstance;
  sharedAssetLibrary_sharedInstance = v0;

  v2 = sharedAssetLibrary_sharedInstance;

  return [v2 reload];
}

- (id)assetWithType:(int64_t)a3 identifier:(id)a4
{
  if (a3 == 42)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_assetsByName[a3] objectForKeyedSubscript:a4, v4];
  }

  return v6;
}

@end
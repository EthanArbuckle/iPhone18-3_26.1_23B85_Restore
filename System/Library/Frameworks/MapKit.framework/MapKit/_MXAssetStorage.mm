@interface _MXAssetStorage
- (_MXAssetStorage)init;
- (void)fetchAssetForKey:(id)a3 completion:(id)a4;
- (void)loadAssetForKey:(id)a3 withBlock:(id)a4;
- (void)setAsset:(id)a3 forKey:(id)a4;
@end

@implementation _MXAssetStorage

- (_MXAssetStorage)init
{
  v13.receiver = self;
  v13.super_class = _MXAssetStorage;
  v2 = [(_MXAssetStorage *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.maps.MXAssetStorage", v3);
    lock = v2->_lock;
    v2->_lock = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = v2->_storage;
    v2->_storage = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    loadingKeys = v2->_loadingKeys;
    v2->_loadingKeys = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchBlocks = v2->_fetchBlocks;
    v2->_fetchBlocks = v10;
  }

  return v2;
}

- (void)fetchAssetForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__18536;
  v19 = __Block_byref_object_dispose__18537;
  v20 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___MXAssetStorage_fetchAssetForKey_completion___block_invoke;
  v11[3] = &unk_1E76C8DB0;
  v14 = &v15;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  dispatch_sync(lock, v11);
  if (v16[5])
  {
    v10[2](v10);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)setAsset:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__18536;
  v20[4] = __Block_byref_object_dispose__18537;
  v21 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___MXAssetStorage_setAsset_forKey___block_invoke;
  block[3] = &unk_1E76C8D88;
  v9 = v6;
  v16 = v9;
  v17 = self;
  v18 = v7;
  v19 = v20;
  v10 = v7;
  dispatch_sync(lock, block);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35___MXAssetStorage_setAsset_forKey___block_invoke_2;
  v12[3] = &unk_1E76CD7E8;
  v13 = v9;
  v14 = v20;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  _Block_object_dispose(v20, 8);
}

- (void)loadAssetForKey:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    lock = self->_lock;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___MXAssetStorage_loadAssetForKey_withBlock___block_invoke;
    block[3] = &unk_1E76CAA70;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_sync(lock, block);
  }
}

@end
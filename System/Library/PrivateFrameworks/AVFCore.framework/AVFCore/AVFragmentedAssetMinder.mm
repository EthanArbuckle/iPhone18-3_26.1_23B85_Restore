@interface AVFragmentedAssetMinder
+ (AVFragmentedAssetMinder)fragmentedAssetMinderWithAsset:(AVAsset *)asset mindingInterval:(NSTimeInterval)mindingInterval;
- (AVFragmentedAssetMinder)init;
- (AVFragmentedAssetMinder)initWithAsset:(AVAsset *)asset mindingInterval:(NSTimeInterval)mindingInterval;
- (NSArray)assets;
- (void)_setMindingInterval:(double)interval removeAllAssets:(BOOL)assets;
- (void)addFragmentedAsset:(AVAsset *)asset;
- (void)dealloc;
- (void)removeFragmentedAsset:(AVAsset *)asset;
@end

@implementation AVFragmentedAssetMinder

+ (AVFragmentedAssetMinder)fragmentedAssetMinderWithAsset:(AVAsset *)asset mindingInterval:(NSTimeInterval)mindingInterval
{
  v4 = [objc_alloc(objc_opt_class()) initWithAsset:asset mindingInterval:mindingInterval];

  return v4;
}

- (AVFragmentedAssetMinder)init
{
  v7.receiver = self;
  v7.super_class = AVFragmentedAssetMinder;
  v2 = [(AVFragmentedAssetMinder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVFragmentedAssetMinderInternal);
    v2->_fragmentedAssetMinder = v3;
    if (!v3 || (v2->_fragmentedAssetMinder->assets = objc_alloc_init(MEMORY[0x1E695DFA8]), v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v2->_fragmentedAssetMinder->accessSerializer = dispatch_queue_create("com.apple.avfoundation.avfragmentedassetminder", v4), v2->_fragmentedAssetMinder->mindingInterval = 10.0, fragmentedAssetMinder = v2->_fragmentedAssetMinder, !fragmentedAssetMinder->assets) || fragmentedAssetMinder->mindingInterval == 0.0)
    {

      return 0;
    }
  }

  return v2;
}

- (AVFragmentedAssetMinder)initWithAsset:(AVAsset *)asset mindingInterval:(NSTimeInterval)mindingInterval
{
  v6 = [(AVFragmentedAssetMinder *)self init];
  v7 = v6;
  if (v6)
  {
    [(AVFragmentedAssetMinder *)v6 setMindingInterval:mindingInterval];
    [(AVFragmentedAssetMinder *)v7 addFragmentedAsset:asset];
  }

  return v7;
}

- (void)dealloc
{
  [(AVFragmentedAssetMinder *)self _setMindingInterval:1 removeAllAssets:0.0];
  fragmentedAssetMinder = self->_fragmentedAssetMinder;
  if (fragmentedAssetMinder)
  {

    fragmentedAssetMinder = self->_fragmentedAssetMinder;
    accessSerializer = fragmentedAssetMinder->accessSerializer;
    if (accessSerializer)
    {
      dispatch_release(accessSerializer);
      fragmentedAssetMinder = self->_fragmentedAssetMinder;
    }
  }

  v5.receiver = self;
  v5.super_class = AVFragmentedAssetMinder;
  [(AVFragmentedAssetMinder *)&v5 dealloc];
}

- (NSArray)assets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  accessSerializer = self->_fragmentedAssetMinder->accessSerializer;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVFragmentedAssetMinder_assets__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerializer, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__AVFragmentedAssetMinder_assets__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 8) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setMindingInterval:(double)interval removeAllAssets:(BOOL)assets
{
  assetsCopy = assets;
  v31 = *MEMORY[0x1E69E9840];
  if (interval >= 0.0)
  {
    intervalCopy = interval;
  }

  else
  {
    intervalCopy = 0.0;
  }

  if (intervalCopy > 0.0 && intervalCopy < 0.001)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v25 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"An %@ cannot mind fragmented assets more frequently than once per millisecond (requested interval was %f)", v20, v21, v22, v23, v24, v19), 0}];
    objc_exception_throw(v25);
  }

  fragmentedAssetMinder = self->_fragmentedAssetMinder;
  if (intervalCopy != fragmentedAssetMinder->mindingInterval || assets)
  {
    fragmentedAssetMinder->mindingInterval = intervalCopy;
    assets = [(AVFragmentedAssetMinder *)self assets];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [(NSArray *)assets countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(assets);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          [v14 _setFragmentMindingInterval:intervalCopy];
          if (assetsCopy)
          {
            [v14 _setIsAssociatedWithFragmentMinder:0];
          }
        }

        v11 = [(NSArray *)assets countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }
  }
}

- (void)addFragmentedAsset:(AVAsset *)asset
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (![(AVAsset *)asset _mindsFragments])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"An %@ cannot mind instances of %@", v14, v15, v16, v17, v18, v12);
    goto LABEL_10;
  }

  isAssociatedWithFragmentMinder = [(AVAsset *)asset isAssociatedWithFragmentMinder];
  accessSerializer = self->_fragmentedAssetMinder->accessSerializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVFragmentedAssetMinder_addFragmentedAsset___block_invoke;
  block[3] = &unk_1E7462BB0;
  block[5] = asset;
  block[6] = &v30;
  block[4] = self;
  v29 = isAssociatedWithFragmentMinder;
  dispatch_sync(accessSerializer, block);
  if (isAssociatedWithFragmentMinder)
  {
    if ((v31[3] & 1) == 0)
    {
      if (![(AVFragmentedAssetMinder *)self _throwsWhenAlreadyMindedAssetIsAdded])
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        NSLog(&cfstr_Addfragmenteda.isa, v9);
        goto LABEL_8;
      }

      v10 = MEMORY[0x1E695DF30];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ cannot add an %@ that's already being minded by another fragment minder", v23, v24, v25, v26, v27, v21);
LABEL_10:
      objc_exception_throw([v10 exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0]);
    }
  }

  else if ((v31[3] & 1) == 0)
  {
    [(AVAsset *)asset _setFragmentMindingInterval:self->_fragmentedAssetMinder->mindingInterval];
    [(AVAsset *)asset _setIsAssociatedWithFragmentMinder:1];
  }

LABEL_8:
  _Block_object_dispose(&v30, 8);
}

uint64_t __46__AVFragmentedAssetMinder_addFragmentedAsset___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 8) containsObject:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && (*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 32) + 8) + 8);

    return [v4 addObject:v3];
  }

  return result;
}

- (void)removeFragmentedAsset:(AVAsset *)asset
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (![(AVAsset *)asset _mindsFragments])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = objc_opt_class();
    NSStringFromClass(v10);
    v16 = [v7 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"An %@ cannot mind instances of %@", v11, v12, v13, v14, v15, v9), 0}];
    objc_exception_throw(v16);
  }

  accessSerializer = self->_fragmentedAssetMinder->accessSerializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVFragmentedAssetMinder_removeFragmentedAsset___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = asset;
  block[6] = &v18;
  block[4] = self;
  dispatch_sync(accessSerializer, block);
  if (*(v19 + 24) == 1)
  {
    [(AVAsset *)asset _setFragmentMindingInterval:0.0];
    [(AVAsset *)asset _setIsAssociatedWithFragmentMinder:0];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __49__AVFragmentedAssetMinder_removeFragmentedAsset___block_invoke(void *a1)
{
  result = [*(*(a1[4] + 8) + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = a1[5];
    v4 = *(*(a1[4] + 8) + 8);

    return [v4 removeObject:v3];
  }

  return result;
}

@end
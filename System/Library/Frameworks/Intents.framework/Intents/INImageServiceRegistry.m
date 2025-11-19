@interface INImageServiceRegistry
+ (id)sharedInstance;
- (INImageServiceRegistry)init;
- (NSArray)imageLoaders;
- (NSArray)imageServices;
- (NSArray)imageStorageServices;
- (id)imageLoaderForServiceIdentifier:(id)a3;
- (id)imageServiceForServiceIdentifier:(id)a3;
- (id)imageStorageServiceForServiceIdentifier:(id)a3;
- (void)_reprioritizeImageServices;
- (void)registerImageService:(id)a3;
- (void)unregisterImageService:(id)a3;
@end

@implementation INImageServiceRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__INImageServiceRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sSharedInstance;

  return v2;
}

uint64_t __40__INImageServiceRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sSharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (INImageServiceRegistry)init
{
  v8.receiver = self;
  v8.super_class = INImageServiceRegistry;
  v2 = [(INImageServiceRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.intents.INImageServiceRegistry.RegistryQueue", 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    dispatch_queue_set_specific(*(v2 + 3), &INImageServiceRegistryQueueSpecificKey, v2, 0);
  }

  return v2;
}

- (void)_reprioritizeImageServices
{
  v6 = [(NSMutableDictionary *)self->_imageServicesByServiceIdentifier allValues];
  v3 = [v6 sortedArrayUsingComparator:&__block_literal_global_69072];
  v4 = [v3 mutableCopy];
  prioritySortedImageServices = self->_prioritySortedImageServices;
  self->_prioritySortedImageServices = v4;
}

uint64_t __52__INImageServiceRegistry__reprioritizeImageServices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "servicePriority")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "servicePriority")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v5 serviceIdentifier];
    v10 = [v4 serviceIdentifier];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (NSArray)imageStorageServices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__69070;
  v10 = __Block_byref_object_dispose__69071;
  v11 = 0;
  registryQueue = self->_registryQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__INImageServiceRegistry_INImageStorageServiceRegistry__imageStorageServices__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(registryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__77__INImageServiceRegistry_INImageStorageServiceRegistry__imageStorageServices__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F02E3D60])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

uint64_t __77__INImageServiceRegistry_INImageStorageServiceRegistry__imageStorageServices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) if_compactMap:&__block_literal_global_91];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)imageServiceForServiceIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__69070;
  v17 = __Block_byref_object_dispose__69071;
  v18 = 0;
  registryQueue = self->_registryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__INImageServiceRegistry_imageServiceForServiceIdentifier___block_invoke;
  block[3] = &unk_1E7283018;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(registryQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __59__INImageServiceRegistry_imageServiceForServiceIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [*(a1[5] + 8) objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_storeStrong((*(a1[6] + 8) + 40), v3);
  if (v2)
  {
  }
}

- (NSArray)imageServices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__69070;
  v10 = __Block_byref_object_dispose__69071;
  v11 = 0;
  registryQueue = self->_registryQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__INImageServiceRegistry_imageServices__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(registryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__INImageServiceRegistry_imageServices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (void)unregisterImageService:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceIdentifier];

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__INImageServiceRegistry_unregisterImageService___block_invoke;
    v7[3] = &unk_1E7287190;
    v7[4] = self;
    v8 = v4;
    v6 = MEMORY[0x193AD7780](v7);
    if (dispatch_get_specific(&INImageServiceRegistryQueueSpecificKey) == self)
    {
      v6[2](v6);
    }

    else
    {
      dispatch_sync(self->_registryQueue, v6);
    }
  }
}

uint64_t __49__INImageServiceRegistry_unregisterImageService___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) serviceIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 16);

  return [v5 removeObject:v4];
}

- (void)registerImageService:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceIdentifier];

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__INImageServiceRegistry_registerImageService___block_invoke;
    v7[3] = &unk_1E7287190;
    v7[4] = self;
    v8 = v4;
    v6 = MEMORY[0x193AD7780](v7);
    if (dispatch_get_specific(&INImageServiceRegistryQueueSpecificKey) == self)
    {
      v6[2](v6);
    }

    else
    {
      dispatch_sync(self->_registryQueue, v6);
    }
  }
}

uint64_t __47__INImageServiceRegistry_registerImageService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 serviceIdentifier];
  [v3 setObject:v2 forKey:v4];

  v5 = *(a1 + 32);

  return [v5 _reprioritizeImageServices];
}

- (id)imageStorageServiceForServiceIdentifier:(id)a3
{
  v3 = [(INImageServiceRegistry *)self imageServiceForServiceIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    if ([v3 conformsToProtocol:&unk_1F02E3D60])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)imageLoaderForServiceIdentifier:(id)a3
{
  v3 = [(INImageServiceRegistry *)self imageServiceForServiceIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    if ([v3 conformsToProtocol:&unk_1F0316528])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (NSArray)imageLoaders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__69070;
  v10 = __Block_byref_object_dispose__69071;
  v11 = 0;
  registryQueue = self->_registryQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__INImageServiceRegistry_INImageLoaderRegistry__imageLoaders__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(registryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __61__INImageServiceRegistry_INImageLoaderRegistry__imageLoaders__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) if_compactMap:&__block_literal_global_26];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *__61__INImageServiceRegistry_INImageLoaderRegistry__imageLoaders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F0316528])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end
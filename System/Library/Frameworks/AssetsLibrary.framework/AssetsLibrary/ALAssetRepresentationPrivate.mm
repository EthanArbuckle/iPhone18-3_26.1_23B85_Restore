@interface ALAssetRepresentationPrivate
+ (int)_fileDescriptorForPersistentURL:(id)l;
+ (void)_clearFileDescriptorQueue;
+ (void)_setupFileDescriptorQueue;
- (ALAssetRepresentationPrivate)initWithManagedAsset:(id)asset sidecar:(id)sidecar extension:(id)extension library:(id)library;
- (BOOL)_isImage;
- (BOOL)_isVideo;
- (void)_performBlockAndWait:(id)wait;
- (void)dealloc;
@end

@implementation ALAssetRepresentationPrivate

- (void)_performBlockAndWait:(id)wait
{
  library = [(ALAssetRepresentationPrivate *)self library];
  if (library)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke;
    v9[3] = &unk_278A07C08;
    v9[4] = self;
    v9[5] = wait;
    [(ALAssetsLibrary *)library _performBlockAndWait:v9];
  }

  else if (_CFExecutableLinkedOnOrAfter())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke_4;
    block[3] = &unk_278A07C58;
    block[4] = self;
    if (_performBlockAndWait__onceToken != -1)
    {
      dispatch_once(&_performBlockAndWait__onceToken, block);
    }
  }

  else
  {
    objc_sync_enter(self);
    v6 = dispatch_group_create();
    if ([(ALAssetRepresentationPrivate *)self _photoLibrary])
    {
      photoLibrary = self->_photoLibrary;
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke_3;
      block[8] = &unk_278A07C30;
      block[9] = self;
      block[10] = wait;
    }

    else
    {
      photoLibrary = +[ALAssetsLibrary _library];
      self->_photoLibrary = photoLibrary;
      block[11] = MEMORY[0x277D85DD0];
      block[12] = 3221225472;
      block[13] = __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke_2;
      block[14] = &unk_278A07C30;
      block[15] = self;
      block[16] = wait;
    }

    [(PLPhotoLibrary *)photoLibrary withDispatchGroup:v6 performBlock:?];
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    objc_sync_exit(self);
  }
}

uint64_t __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectWithObjectID:{objc_msgSend(*(*(a1 + 32) + 24), "objectID")}];
  v3 = [v2 sidecarWithResourceObjectID:{objc_msgSend(*(*(a1 + 32) + 32), "objectID")}];
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5 != v2)
  {

    *(*(a1 + 32) + 24) = v2;
    v4 = *(a1 + 32);
  }

  v6 = v4[4];
  if (v6 != v3)
  {

    *(*(a1 + 32) + 32) = v3;
    v4 = *(a1 + 32);
    v7 = v4[4];
  }

  v8 = v4[3];
  v9 = *(*(a1 + 40) + 16);
  v11 = v4[5];
  v10 = v4[6];

  return v9();
}

void __53__ALAssetRepresentationPrivate__performBlockAndWait___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  NSLog(&cfstr_InvalidAttempt.isa, v3, *(a1 + 32));
}

- (BOOL)_isVideo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ALAssetRepresentationPrivate__isVideo__block_invoke;
  v4[3] = &unk_278A07B90;
  v4[4] = self;
  v4[5] = &v5;
  [(ALAssetRepresentationPrivate *)self _performBlockAndWait:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__ALAssetRepresentationPrivate__isVideo__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) isVideo];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isImage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ALAssetRepresentationPrivate__isImage__block_invoke;
  v4[3] = &unk_278A07B90;
  v4[4] = self;
  v4[5] = &v5;
  [(ALAssetRepresentationPrivate *)self _performBlockAndWait:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__ALAssetRepresentationPrivate__isImage__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) isPhoto];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  [(ALAssetRepresentationPrivate *)self setLibrary:0];

  self->_photoLibrary = 0;
  self->_extension = 0;

  self->_sidecar = 0;
  self->_photo = 0;
  v3.receiver = self;
  v3.super_class = ALAssetRepresentationPrivate;
  [(ALAssetRepresentationPrivate *)&v3 dealloc];
}

- (ALAssetRepresentationPrivate)initWithManagedAsset:(id)asset sidecar:(id)sidecar extension:(id)extension library:(id)library
{
  v12.receiver = self;
  v12.super_class = ALAssetRepresentationPrivate;
  v10 = [(ALAssetRepresentationPrivate *)&v12 init];
  if (v10)
  {
    v10->_photo = asset;
    v10->_sidecar = sidecar;
    v10->_extension = [extension copy];
    [(ALAssetRepresentationPrivate *)v10 setLibrary:library];
    [(ALAssetRepresentationPrivate *)v10 setIsValid:1];
  }

  return v10;
}

+ (void)_clearFileDescriptorQueue
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (__persistentURLQueue && [__persistentURLQueue count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = __persistentURLQueue;
    v4 = [__persistentURLQueue countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          close([objc_msgSend(__fileDescriptorDictionary objectForKey:{v7), "intValue"}]);
          [__fileDescriptorDictionary removeObjectForKey:v7];
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    [__persistentURLQueue removeAllObjects];
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

+ (int)_fileDescriptorForPersistentURL:(id)l
{
  +[ALAssetRepresentationPrivate _setupFileDescriptorQueue];
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [__persistentURLQueue indexOfObject:l];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 >= [__persistentURLQueue count])
  {
    v6 = -1;
  }

  else
  {
    v6 = [objc_msgSend(__fileDescriptorDictionary objectForKey:{l), "intValue"}];
    if ([__persistentURLQueue count] >= 2 && v5 != objc_msgSend(__persistentURLQueue, "count") - 1)
    {
      [__persistentURLQueue exchangeObjectAtIndex:v5 withObjectAtIndex:?];
    }
  }

  objc_sync_exit(v4);
  return v6;
}

+ (void)_setupFileDescriptorQueue
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!__persistentURLQueue)
  {
    __persistentURLQueue = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  }

  if (!__fileDescriptorDictionary)
  {
    __fileDescriptorDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  }

  objc_sync_exit(v2);
}

@end
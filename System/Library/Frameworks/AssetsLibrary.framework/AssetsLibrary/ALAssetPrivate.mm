@interface ALAssetPrivate
- (ALAssetPrivate)initWithManagedAsset:(id)asset library:(id)library;
- (BOOL)isDeletable;
- (void)_performBlockAndWait:(id)wait;
- (void)dealloc;
@end

@implementation ALAssetPrivate

- (void)_performBlockAndWait:(id)wait
{
  library = [(ALAssetPrivate *)self library];
  if (library)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__ALAssetPrivate__performBlockAndWait___block_invoke;
    v9[3] = &unk_278A07C08;
    v9[4] = self;
    v9[5] = wait;
    [(ALAssetsLibrary *)library _performBlockAndWait:v9];
  }

  else if (_CFExecutableLinkedOnOrAfter())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__ALAssetPrivate__performBlockAndWait___block_invoke_4;
    block[3] = &unk_278A07C58;
    block[4] = self;
    if (_performBlockAndWait__onceToken_264 != -1)
    {
      dispatch_once(&_performBlockAndWait__onceToken_264, block);
    }
  }

  else
  {
    objc_sync_enter(self);
    v6 = dispatch_group_create();
    if ([(ALAssetPrivate *)self _photoLibrary])
    {
      photoLibrary = self->_photoLibrary;
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __39__ALAssetPrivate__performBlockAndWait___block_invoke_3;
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
      block[13] = __39__ALAssetPrivate__performBlockAndWait___block_invoke_2;
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

uint64_t __39__ALAssetPrivate__performBlockAndWait___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectWithObjectID:{objc_msgSend(*(*(a1 + 32) + 24), "objectID")}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 != v2)
  {
    v5 = v2;

    *(*(a1 + 32) + 24) = v5;
    v3 = *(a1 + 32);
    v6 = *(v3 + 24);
  }

  v7 = *(v3 + 32);
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void __39__ALAssetPrivate__performBlockAndWait___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  NSLog(&cfstr_InvalidAttempt.isa, v3, *(a1 + 32));
}

- (BOOL)isDeletable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ALAssetPrivate_isDeletable__block_invoke;
  v4[3] = &unk_278A07BB8;
  v4[4] = &v5;
  [(ALAssetPrivate *)self _performBlockAndWait:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __29__ALAssetPrivate_isDeletable__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeletableFromAssetsLibrary];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (void)dealloc
{
  self->_photoLibrary = 0;
  [(ALAssetPrivate *)self setLibrary:0];
  [(ALAssetPrivate *)self setPhoto:0];
  v3.receiver = self;
  v3.super_class = ALAssetPrivate;
  [(ALAssetPrivate *)&v3 dealloc];
}

- (ALAssetPrivate)initWithManagedAsset:(id)asset library:(id)library
{
  v9.receiver = self;
  v9.super_class = ALAssetPrivate;
  v6 = [(ALAssetPrivate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ALAssetPrivate *)v6 setPhoto:asset];
    [(ALAssetPrivate *)v7 setLibrary:library];
    [(ALAssetPrivate *)v7 setIsValid:1];
  }

  return v7;
}

@end
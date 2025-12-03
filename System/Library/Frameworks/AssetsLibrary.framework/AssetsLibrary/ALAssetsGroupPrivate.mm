@interface ALAssetsGroupPrivate
- (ALAssetsGroupPrivate)initWithAlbum:(id)album library:(id)library;
- (id)valueForProperty:(id)property;
- (int)albumFilter;
- (void)_performBlockAndWait:(id)wait;
- (void)dealloc;
- (void)populateAssets;
- (void)resetAssets;
- (void)setAssetsFilter:(id)filter;
- (void)setValue:(id)value forProperty:(id)property;
- (void)updateAlbumFiltering;
@end

@implementation ALAssetsGroupPrivate

- (void)_performBlockAndWait:(id)wait
{
  library = [(ALAssetsGroupPrivate *)self library];
  if (library)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke;
    v9[3] = &unk_278A07C08;
    v9[4] = self;
    v9[5] = wait;
    [(ALAssetsLibrary *)library _performBlockAndWait:v9];
  }

  else if (_CFExecutableLinkedOnOrAfter())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke_4;
    block[3] = &unk_278A07C58;
    block[4] = self;
    if (_performBlockAndWait__onceToken_366 != -1)
    {
      dispatch_once(&_performBlockAndWait__onceToken_366, block);
    }
  }

  else
  {
    objc_sync_enter(self);
    v6 = dispatch_group_create();
    if ([(ALAssetsGroupPrivate *)self _photoLibrary])
    {
      photoLibrary = self->_photoLibrary;
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke_3;
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
      block[13] = __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke_2;
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

uint64_t __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277D3AC70] unfilteredAlbum:*(*(a1 + 32) + 32)];
    v4 = [MEMORY[0x277D3AC70] filteredAlbum:objc_msgSend(*(*(a1 + 32) + 64) filter:{"objectWithObjectID:", objc_msgSend(v3, "objectID")), objc_msgSend(*(a1 + 32), "albumFilter")}];
LABEL_5:
    v6 = v4;
    goto LABEL_7;
  }

  v5 = *(*(a1 + 32) + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(*(a1 + 32) + 64) objectWithObjectID:{objc_msgSend(*(*(a1 + 32) + 32), "objectID")}];
    goto LABEL_5;
  }

  NSLog(&cfstr_DonTKnowHowToS.isa, *(a1 + 32));
  v6 = 0;
LABEL_7:
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  if (v8 != v6)
  {

    *(*(a1 + 32) + 32) = v6;
    v7 = *(a1 + 32);
    v9 = *(v7 + 32);
  }

  v10 = *(v7 + 64);
  v11 = *(*(a1 + 40) + 16);

  return v11();
}

void __45__ALAssetsGroupPrivate__performBlockAndWait___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  NSLog(&cfstr_InvalidAttempt.isa, v3, *(a1 + 32));
}

- (void)setValue:(id)value forProperty:(id)property
{
  propertyValues = self->_propertyValues;
  objc_sync_enter(propertyValues);
  [(NSMutableDictionary *)self->_propertyValues setObject:value forKey:property];

  objc_sync_exit(propertyValues);
}

- (id)valueForProperty:(id)property
{
  propertyValues = self->_propertyValues;
  objc_sync_enter(propertyValues);
  v6 = [(NSMutableDictionary *)self->_propertyValues objectForKey:property];
  objc_sync_exit(propertyValues);
  return v6;
}

- (void)populateAssets
{
  if (!self->_loadedAssets)
  {
    self->_loadedAssets = 1;
    [(ALAssetsGroupPrivate *)self updateAlbumFiltering];
  }
}

- (void)updateAlbumFiltering
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__ALAssetsGroupPrivate_updateAlbumFiltering__block_invoke;
  v2[3] = &unk_278A07BE0;
  v2[4] = self;
  [(ALAssetsGroupPrivate *)self _performBlockAndWait:v2];
}

uint64_t __44__ALAssetsGroupPrivate_updateAlbumFiltering__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D3AC70];
    v6 = [*(a1 + 32) albumFilter];
    v7 = [v5 predicateForAlbumFilter:v6 parameters:0 photoLibrary:{objc_msgSend(MEMORY[0x277D3AD38], "systemPhotoLibrary")}];

    return [a3 setALAssetsGroupFilterPredicate:v7];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277D3AC70] filteredAlbum:a3 filter:{objc_msgSend(v9, "albumFilter")}];

    return [v9 setAlbum:v10];
  }
}

- (void)resetAssets
{
  propertyValues = self->_propertyValues;
  objc_sync_enter(propertyValues);
  [(NSMutableDictionary *)self->_propertyValues removeAllObjects];

  objc_sync_exit(propertyValues);
}

- (int)albumFilter
{
  assetsFilter = self->_assetsFilter;
  v4 = 9728;
  if (assetsFilter)
  {
    v4 = [(ALAssetsFilter *)assetsFilter _filter]| 0x2600;
  }

  isCloudSharedGroup = [(ALAssetsGroupPrivate *)self isCloudSharedGroup];
  v6 = v4 | 0x80;
  if (!isCloudSharedGroup)
  {
    v6 = v4;
  }

  if (self->_applyHyperionFilter)
  {
    v7 = v6 | 0x100;
  }

  else
  {
    v7 = v6;
  }

  v8 = PLIsCloudPhotoLibraryEnabledForCurrentUser();
  v9 = v7 | 0x800;
  if (!v8)
  {
    v9 = v7;
  }

  return v9 | 0x1000;
}

- (void)setAssetsFilter:(id)filter
{
  assetsFilter = self->_assetsFilter;
  if (assetsFilter != filter)
  {

    self->_assetsFilter = filter;

    [(ALAssetsGroupPrivate *)self updateAlbumFiltering];
  }
}

- (void)dealloc
{
  [(ALAssetsGroupPrivate *)self setLibrary:0];

  self->_photoLibrary = 0;
  v3.receiver = self;
  v3.super_class = ALAssetsGroupPrivate;
  [(ALAssetsGroupPrivate *)&v3 dealloc];
}

- (ALAssetsGroupPrivate)initWithAlbum:(id)album library:(id)library
{
  v9.receiver = self;
  v9.super_class = ALAssetsGroupPrivate;
  v6 = [(ALAssetsGroupPrivate *)&v9 init];
  if (v6)
  {
    if (PLIsCloudPhotoLibraryEnabledForCurrentUser())
    {
      v6->_applyHyperionFilter = 1;
    }

    [(ALAssetsGroupPrivate *)v6 setAlbum:album];
    v6->_propertyValues = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_loadedAssets = 0;
    v6->_isValid = 1;
    [(ALAssetsGroupPrivate *)v6 setLibrary:library];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__ALAssetsGroupPrivate_initWithAlbum_library___block_invoke;
    v8[3] = &unk_278A07BE0;
    v8[4] = v6;
    [(ALAssetsGroupPrivate *)v6 _performBlockAndWait:v8];
  }

  return v6;
}

uint64_t __46__ALAssetsGroupPrivate_initWithAlbum_library___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(a1 + 32) + 64) = a2;
  result = [a3 isCloudSharedAlbum];
  *(*(a1 + 32) + 25) = result;
  return result;
}

@end
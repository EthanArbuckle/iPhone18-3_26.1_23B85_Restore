@interface ALAssetsLibraryPrivate
- (ALAssetsLibraryPrivate)initWithAssetsLibrary:(id)a3;
- (PLPhotoLibrary)photoLibrary;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)registerAlbum:(id)a3 assetGroupPrivate:(id)a4;
@end

@implementation ALAssetsLibraryPrivate

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(PLPhotoLibrary *)self->_photoLibrary performBlockAndWait:&__block_literal_global_159];
  [(ALAssetsLibraryPrivate *)self setAssetsLibrary:0];

  self->_assetGroupInternals = 0;
  self->_photoLibrary = 0;

  v3.receiver = self;
  v3.super_class = ALAssetsLibraryPrivate;
  [(ALAssetsLibraryPrivate *)&v3 dealloc];
}

- (void)registerAlbum:(id)a3 assetGroupPrivate:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ALAssetsLibraryPrivate *)self photoLibrary];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ALAssetsLibraryPrivate_registerAlbum_assetGroupPrivate___block_invoke;
    v9[3] = &unk_278A07878;
    v9[4] = self;
    v9[5] = a3;
    [(PLPhotoLibrary *)v7 performBlockAndWait:v9];
  }

  assetGroupInternals = self->_assetGroupInternals;
  objc_sync_enter(assetGroupInternals);
  [(NSHashTable *)self->_assetGroupInternals addObject:a4];
  objc_sync_exit(assetGroupInternals);
}

uint64_t __58__ALAssetsLibraryPrivate_registerAlbum_assetGroupPrivate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) groupURL];
  v4 = [*(a1 + 40) objectID];

  return [v2 setObject:v3 forKey:v4];
}

- (void)photoLibraryDidChange:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  if (v4)
  {
    v5 = v4;
    v39 = [MEMORY[0x277CBEB38] dictionary];
    v40 = [MEMORY[0x277CBEB58] set];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = v5;
    v6 = [v5 objectForKey:@"insertedAssetGroups"];
    v7 = [v6 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v7)
    {
      v8 = *v59;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v59 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v58 + 1) + 8 * i) groupURL];
          if (v10)
          {
            [v40 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CBEB58] set];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = [v38 objectForKey:@"updatedAssetGroups"];
    v13 = [v12 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v13)
    {
      v14 = *v55;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v54 + 1) + 8 * j);
          v17 = [v16 groupURL];
          if (v17)
          {
            [v11 addObject:v17];
          }

          if ([v16 conformsToProtocol:&unk_2849B1E10])
          {
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __48__ALAssetsLibraryPrivate_photoLibraryDidChange___block_invoke;
            v53[3] = &unk_278A07850;
            v53[4] = v11;
            [v16 enumerateDerivedAlbums:v53];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x277CBEB58] set];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [v38 objectForKey:@"deletedAssetGroups"];
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v20)
    {
      v21 = *v50;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v49 + 1) + 8 * k);
          v24 = -[NSMutableDictionary objectForKey:](self->_groupURLSByAlbumOID, "objectForKey:", [v23 objectID]);
          if (v24)
          {
            [v18 addObject:v24];
            -[NSMutableDictionary removeObjectForKey:](self->_groupURLSByAlbumOID, "removeObjectForKey:", [v23 objectID]);
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v20);
    }

    v25 = [MEMORY[0x277CBEB58] set];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = [v38 objectForKey:@"updatedAssets"];
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
    if (v27)
    {
      v28 = *v46;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [*(*(&v45 + 1) + 8 * m) assetURL];
          if (v30)
          {
            [v25 addObject:v30];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
      }

      while (v27);
    }

    if ([v40 count])
    {
      [v39 setObject:v40 forKey:@"ALAssetLibraryInsertedAssetGroupsKey"];
    }

    if ([v11 count])
    {
      [v39 setObject:v11 forKey:@"ALAssetLibraryUpdatedAssetGroupsKey"];
    }

    if ([v18 count])
    {
      [v39 setObject:v18 forKey:@"ALAssetLibraryDeletedAssetGroupsKey"];
    }

    if ([v25 count])
    {
      [v39 setObject:v25 forKey:@"ALAssetLibraryUpdatedAssetsKey"];
    }

    v4 = v39;
  }

  v31 = v4;
  if ([v4 count])
  {
    +[ALAssetRepresentationPrivate _clearFileDescriptorQueue];
    if ([objc_msgSend(v31 objectForKey:{@"ALAssetLibraryUpdatedAssetGroupsKey", "count"}])
    {
      assetGroupInternals = self->_assetGroupInternals;
      objc_sync_enter(assetGroupInternals);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v33 = self->_assetGroupInternals;
      v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
      if (v34)
      {
        v35 = *v42;
        do
        {
          for (n = 0; n != v34; ++n)
          {
            if (*v42 != v35)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v41 + 1) + 8 * n) libraryDidChange];
          }

          v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
        }

        while (v34);
      }

      objc_sync_exit(assetGroupInternals);
    }
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __48__ALAssetsLibraryPrivate_photoLibraryDidChange___block_invoke(uint64_t a1, void *a2)
{
  [a2 mappedDataSourceChanged:0 remoteNotificationData:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 groupURL];
    if (result)
    {
      v5 = result;
      v6 = *(a1 + 32);

      return [v6 addObject:v5];
    }
  }

  return result;
}

- (PLPhotoLibrary)photoLibrary
{
  objc_sync_enter(self);
  if (!self->_photoLibrary)
  {
    self->_photoLibrary = +[ALAssetsLibrary _library];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_photoLibraryDidChange_ name:*MEMORY[0x277D3ADC8] object:self->_photoLibrary];
  }

  objc_sync_exit(self);
  return self->_photoLibrary;
}

- (ALAssetsLibraryPrivate)initWithAssetsLibrary:(id)a3
{
  v7.receiver = self;
  v7.super_class = ALAssetsLibraryPrivate;
  v4 = [(ALAssetsLibraryPrivate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ALAssetsLibraryPrivate *)v4 setAssetsLibrary:a3];
    v5->_assetGroupInternals = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5->_groupURLSByAlbumOID = objc_opt_new();
    v5->_isValid = 1;
  }

  return v5;
}

@end
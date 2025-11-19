@interface ALAssetsGroup
- (ALAssetsGroup)initWithPhotoAlbum:(id)a3 library:(id)a4 type:(unint64_t)a5;
- (BOOL)addAsset:(ALAsset *)asset;
- (BOOL)isEditable;
- (BOOL)isValid;
- (CGImageRef)posterImage;
- (NSInteger)numberOfAssets;
- (id)_typeAsString;
- (id)_uuid;
- (id)valueForProperty:(NSString *)property;
- (void)_enumerateAssetsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)dealloc;
- (void)setAssetsFilter:(ALAssetsFilter *)filter;
@end

@implementation ALAssetsGroup

- (BOOL)addAsset:(ALAsset *)asset
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (asset)
  {
    v5 = dispatch_semaphore_create(0);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v6 = [MEMORY[0x277D3B240] sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__ALAssetsGroup_addAsset___block_invoke;
    v9[3] = &unk_278A077F8;
    v9[4] = self;
    v9[5] = asset;
    v9[7] = v10;
    v9[8] = &v12;
    v9[6] = v5;
    [v6 checkPhotosAccessAllowedWithScope:4 handler:v9];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v7 = *(v13 + 24);
    _Block_object_dispose(v10, 8);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

intptr_t __26__ALAssetsGroup_addAsset___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = PLPhotosAccessAllowed();
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && [*(a1 + 32) isEditable] && (v2 = objc_msgSend(objc_msgSend(*(a1 + 40), "defaultRepresentation"), "url"), v3 = objc_msgSend(*(a1 + 32), "_uuid"), v2) && (v4 = v3) != 0)
  {
    v5 = [objc_msgSend(MEMORY[0x277D3B220] "sharedSystemLibraryAssetsdClient")];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__ALAssetsGroup_addAsset___block_invoke_2;
    v9[3] = &unk_278A077D0;
    v6 = *(a1 + 64);
    v9[4] = *(a1 + 48);
    v9[5] = v6;
    return [v5 addAssetWithURL:v2 toAlbumWithUUID:v4 completionHandler:v9];
  }

  else
  {
    v8 = *(a1 + 48);

    return dispatch_semaphore_signal(v8);
  }
}

- (BOOL)isEditable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(ALAssetsGroup *)self isValid])
  {
    v3 = [(ALAssetsGroup *)self internal];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__ALAssetsGroup_isEditable__block_invoke;
    v6[3] = &unk_278A076E0;
    v6[4] = &v7;
    [(ALAssetsGroupPrivate *)v3 _performBlockAndWait:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __27__ALAssetsGroup_isEditable__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isCloudSharedAlbum])
  {
    result = 0;
  }

  else
  {
    result = [a3 canPerformEditOperation:4];
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_enumerateAssetsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = [a5 copy];
  objc_sync_enter(self);
  if ([(ALAssetsGroup *)self isValid]&& v8)
  {
    [(ALAssetsGroupPrivate *)[(ALAssetsGroup *)self internal] populateAssets];
    v9 = [(ALAssetsGroup *)self internal];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3052000000;
    v37 = __Block_byref_object_copy__86;
    v38 = __Block_byref_object_dispose__87;
    v39 = a3;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3052000000;
    v27 = __Block_byref_object_copy__86;
    v28 = __Block_byref_object_dispose__87;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__86;
    v22 = __Block_byref_object_dispose__87;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke;
    v17[3] = &unk_278A07780;
    v17[4] = &v34;
    v17[5] = &v18;
    v17[6] = &v30;
    v17[7] = &v24;
    [(ALAssetsGroupPrivate *)v9 _performBlockAndWait:v17];
    v10 = v35[5];
    v11 = v25[5];
    if (v19[5])
    {

      objc_exception_throw(v19[5]);
    }

    v12 = malloc_type_malloc(8 * v31[3], 0x100004000313F17uLL);
    v13 = [v35[5] lastIndex];
    v16[0] = 0;
    v16[1] = v13 + 1;
    [v35[5] getIndexes:v12 maxCount:v31[3] inIndexRange:v16];
    v14 = v25[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke_3;
    v15[3] = &unk_278A077A8;
    v15[4] = v9;
    v15[5] = v8;
    v15[6] = v12;
    [v14 enumerateObjectsWithOptions:a4 usingBlock:v15];
    free(v12);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    LOBYTE(v34) = 0;
    (v8)[2](v8, 0, 0x7FFFFFFFFFFFFFFFLL, &v34);
  }

  objc_sync_exit(self);
}

id __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v5 = *(*(a1[4] + 8) + 40);
    if (v5)
    {
      v6 = [v5 count];
    }

    else
    {
      v6 = -1;
    }

    if (v6 >= 0x7D0)
    {
      v7 = 2000;
    }

    else
    {
      v7 = v6;
    }

    [a3 setBatchSize:v7];
  }

  v8 = [objc_msgSend(a3 "assets")];
  v9 = *(*(a1[4] + 8) + 40);
  if (!v9)
  {
    *(*(a1[4] + 8) + 40) = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v8}];
    v9 = *(*(a1[4] + 8) + 40);
  }

  if ([v9 count] <= v8 && (objc_msgSend(*(*(a1[4] + 8) + 40), "lastIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(*(*(a1[4] + 8) + 40), "lastIndex") <= v8))
  {
    *(*(a1[6] + 8) + 24) = [*(*(a1[4] + 8) + 40) count];
    *(*(a1[7] + 8) + 40) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(*(a1[6] + 8) + 24)];
    v11 = *(*(a1[4] + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke_2;
    v13[3] = &unk_278A07758;
    v12 = a1[7];
    v13[4] = a3;
    v13[5] = v12;
    return [v11 enumerateIndexesUsingBlock:v13];
  }

  else
  {
    result = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:@"indexSet count or lastIndex must not exceed -numberOfAssets" userInfo:0];
    *(*(a1[5] + 8) + 40) = result;
  }

  return result;
}

void __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = -[ALAsset initWithManagedAsset:library:]([ALAsset alloc], "initWithManagedAsset:library:", a2, [*(a1 + 32) library]);
  v5 = *(*(a1 + 48) + 8 * a3);
  (*(*(a1 + 40) + 16))();
}

uint64_t __62__ALAssetsGroup__enumerateAssetsAtIndexes_options_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 32) "assets")];
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 addObject:v3];
}

- (NSInteger)numberOfAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(ALAssetsGroup *)self isValid])
  {
    [(ALAssetsGroupPrivate *)[(ALAssetsGroup *)self internal] populateAssets];
    v3 = [(ALAssetsGroup *)self internal];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__ALAssetsGroup_numberOfAssets__block_invoke;
    v6[3] = &unk_278A076E0;
    v6[4] = &v7;
    [(ALAssetsGroupPrivate *)v3 _performBlockAndWait:v6];
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __31__ALAssetsGroup_numberOfAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "assets")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setAssetsFilter:(ALAssetsFilter *)filter
{
  if ([(ALAssetsGroup *)self isValid])
  {
    v5 = [(ALAssetsGroup *)self internal];

    [(ALAssetsGroupPrivate *)v5 setAssetsFilter:filter];
  }
}

- (CGImageRef)posterImage
{
  v3 = _CFExecutableLinkedOnOrAfter();
  if (![(ALAssetsGroup *)self isValid])
  {
    return 0;
  }

  v4 = [(ALAssetsGroup *)self internal];
  [(ALAssetsGroupPrivate *)v4 populateAssets];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__86;
  v15 = __Block_byref_object_dispose__87;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__ALAssetsGroup_posterImage__block_invoke;
  v9[3] = &unk_278A07730;
  v10 = v3 == 0;
  v9[4] = &v11;
  [(ALAssetsGroupPrivate *)v4 _performBlockAndWait:v9];
  v5 = v12[5];
  if (v5)
  {
    v6 = [v5 CGImage];
    v7 = v12[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

id __28__ALAssetsGroup_posterImage__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1)
  {
    a3 = [MEMORY[0x277D3AC70] unfilteredAlbum:?];
  }

  *(*(*(a1 + 32) + 8) + 40) = [a3 posterImage];
  v4 = *(*(*(a1 + 32) + 8) + 40);

  return v4;
}

- (id)valueForProperty:(NSString *)property
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__86;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  if ([(ALAssetsGroup *)self isValid])
  {
    v5 = [(ALAssetsGroupPrivate *)[(ALAssetsGroup *)self internal] valueForProperty:property];
    v17[5] = v5;
    if (!v5)
    {
      if ([(NSString *)property isEqualToString:@"ALAssetsGroupPropertyType"])
      {
        v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[ALAssetsGroupPrivate groupType](-[ALAssetsGroup internal](self, "internal"), "groupType")}];
        v17[5] = v6;
      }

      else
      {
        v8 = [(ALAssetsGroup *)self internal];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __34__ALAssetsGroup_valueForProperty___block_invoke;
        v15[3] = &unk_278A07708;
        v15[5] = self;
        v15[6] = &v16;
        v15[4] = property;
        [(ALAssetsGroupPrivate *)v8 _performBlockAndWait:v15];
      }

      v9 = [(ALAssetsGroup *)self internal];
      v10 = v17[5];
      if (!v10)
      {
        v10 = [MEMORY[0x277CBEB68] null];
      }

      [(ALAssetsGroupPrivate *)v9 setValue:v10 forProperty:property];
      v11 = v17[5];
      v5 = v17[5];
    }

    v12 = [MEMORY[0x277CBEB68] null];
    v7 = v17;
    if (v5 == v12)
    {
      v17[5] = 0;
    }
  }

  else
  {
    v7 = v17;
  }

  v13 = v7[5];
  _Block_object_dispose(&v16, 8);
  return v13;
}

id __34__ALAssetsGroup_valueForProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyName"])
  {
    v5 = [a3 localizedTitle];
LABEL_7:
    *(*(*(a1 + 48) + 8) + 40) = v5;
    goto LABEL_8;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyPersistentID"])
  {
    v5 = [a3 uuid];
    goto LABEL_7;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyURL"])
  {
    v5 = [a3 groupURL];
    goto LABEL_7;
  }

  if ([objc_msgSend(*(a1 + 40) "internal")] == 128)
  {
    if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyRepresentativeLocationNames"])
    {
      v5 = [a3 localizedLocationNames];
      goto LABEL_7;
    }

    if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyRepresentativeStartDate"])
    {
      v5 = [a3 startDate];
      goto LABEL_7;
    }

    if ([*(a1 + 32) isEqualToString:@"ALAssetsGroupPropertyRepresentativeEndDate"])
    {
      v5 = [a3 endDate];
      goto LABEL_7;
    }
  }

LABEL_8:
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return v6;
}

- (BOOL)isValid
{
  v2 = [(ALAssetsGroup *)self internal];

  return [(ALAssetsGroupPrivate *)v2 isValid];
}

- (id)_uuid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__86;
  v10 = __Block_byref_object_dispose__87;
  v11 = 0;
  v2 = [(ALAssetsGroup *)self internal];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__ALAssetsGroup__uuid__block_invoke;
  v5[3] = &unk_278A076E0;
  v5[4] = &v6;
  [(ALAssetsGroupPrivate *)v2 _performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __22__ALAssetsGroup__uuid__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "uuid")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)_typeAsString
{
  v2 = [(ALAssetsGroupPrivate *)[(ALAssetsGroup *)self internal] groupType];
  if (v2 > 15)
  {
    if (v2 > 63)
    {
      if (v2 == 64)
      {
        return @"Collection";
      }

      if (v2 == 128)
      {
        return @"Moment";
      }
    }

    else
    {
      if (v2 == 16)
      {
        return @"Saved Photos";
      }

      if (v2 == 32)
      {
        return @"Photo Stream";
      }
    }
  }

  else if (v2 > 3)
  {
    if (v2 == 4)
    {
      return @"Event";
    }

    if (v2 == 8)
    {
      return @"Faces";
    }
  }

  else
  {
    if (v2 == 1)
    {
      return @"Library";
    }

    if (v2 == 2)
    {
      return @"Album";
    }
  }

  return 0;
}

- (void)dealloc
{
  [(ALAssetsGroup *)self setInternal:0];
  v3.receiver = self;
  v3.super_class = ALAssetsGroup;
  [(ALAssetsGroup *)&v3 dealloc];
}

- (ALAssetsGroup)initWithPhotoAlbum:(id)a3 library:(id)a4 type:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = ALAssetsGroup;
  v8 = [(ALAssetsGroup *)&v11 init];
  if (v8)
  {
    v9 = [[ALAssetsGroupPrivate alloc] initWithAlbum:a3 library:a4];
    [(ALAssetsGroupPrivate *)v9 setGroupType:a5];
    [(ALAssetsGroup *)v8 setInternal:v9];

    [a4 registerAlbum:a3 assetGroupPrivate:{-[ALAssetsGroup internal](v8, "internal")}];
  }

  return v8;
}

@end
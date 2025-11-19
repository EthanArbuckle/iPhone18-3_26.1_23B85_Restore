@interface MPMediaEntityCache
- (MPMediaEntityCache)initWithMediaLibraryDataProvider:(id)a3;
- (id)_entityWithIdentifier:(int64_t)a3 mediaEntityType:(int64_t)a4 collectionGroupingType:(int64_t)a5 loadEntityBlock:(id)a6;
- (id)collectionWithIdentifier:(int64_t)a3 grouping:(int64_t)a4 loadEntityBlock:(id)a5;
- (id)itemWithIdentifier:(int64_t)a3;
- (id)itemWithIdentifier:(int64_t)a3 loadEntityBlock:(id)a4;
- (void)_clearSomeGlobalEntityTemporaryReferences;
- (void)_entityMapForDataProviderEntityClass:(Class)a3;
- (void)_performWithExclusiveAccessForDataProviderEntityClass:(Class)a3 block:(id)a4;
- (void)_performWithSharedAccessForDataProviderEntityClass:(Class)a3 block:(id)a4;
- (void)removeEntityWithIdentifier:(int64_t)a3 dataProviderEntityClass:(Class)a4;
- (void)updatePropertyValuesInEntityWithIdentifier:(int64_t)a3 dataProviderEntityClass:(Class)a4 deleted:(BOOL)a5;
@end

@implementation MPMediaEntityCache

- (void)_performWithSharedAccessForDataProviderEntityClass:(Class)a3 block:(id)a4
{
  v6 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v6[2](v6, [(MPMediaEntityCache *)self _entityMapForDataProviderEntityClass:a3]);
  os_unfair_recursive_lock_unlock();
}

- (void)_performWithExclusiveAccessForDataProviderEntityClass:(Class)a3 block:(id)a4
{
  v6 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v6[2](v6, [(MPMediaEntityCache *)self _entityMapForDataProviderEntityClass:a3]);
  os_unfair_recursive_lock_unlock();
}

- (void)_clearSomeGlobalEntityTemporaryReferences
{
  dispatch_assert_queue_V2(self->_deallocLaterQueue);
  if ([(NSMutableArray *)self->_entityTemporaryReferences count]<= 0xFA)
  {
    v3 = [(NSMutableArray *)self->_entityTemporaryReferences count];
  }

  else
  {
    v3 = 250;
  }

  v4 = [(NSMutableArray *)self->_entityTemporaryReferences subarrayWithRange:0, v3];
  [(NSMutableArray *)self->_entityTemporaryReferences removeObjectsInRange:0, v3];
  if (![(NSMutableArray *)self->_entityTemporaryReferences count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    entityTemporaryReferences = self->_entityTemporaryReferences;
    self->_entityTemporaryReferences = v5;
  }

  v7 = [(NSMutableArray *)self->_entityTemporaryReferences count];
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    v8 = dispatch_time(0, 100000000);
    deallocLaterQueue = self->_deallocLaterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MPMediaEntityCache__clearSomeGlobalEntityTemporaryReferences__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_after(v8, deallocLaterQueue, block);
  }
}

- (void)_entityMapForDataProviderEntityClass:(Class)a3
{
  Value = CFDictionaryGetValue(self->_concreteEntitiesByDataProviderEntityClass, a3);
  if (!Value)
  {
    operator new();
  }

  return Value;
}

- (id)_entityWithIdentifier:(int64_t)a3 mediaEntityType:(int64_t)a4 collectionGroupingType:(int64_t)a5 loadEntityBlock:(id)a6
{
  v10 = a6;
  if (self->_mediaLibraryDataProviderRespondsToSupportsEntityChangeTrackingMethod)
  {
    v23 = 0;
    if ([(MPMediaLibraryDataProviderPrivate *)self->_mediaLibraryDataProvider supportsEntityChangeTrackingForMediaEntityType:a4 collectionGroupingType:a5 dataProviderClass:&v23])
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16693;
  v27 = __Block_byref_object_dispose__16694;
  v28 = 0;
  if (v11)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke;
    v22[3] = &unk_1E7678760;
    v22[4] = &v23;
    v22[5] = a3;
    [(MPMediaEntityCache *)self _performWithSharedAccessForDataProviderEntityClass:v11 block:v22];
    if (!v24[5])
    {
      v12 = [[MPConcreteMediaEntityPropertiesCache alloc] initWithLibraryDataProvider:self->_mediaLibraryDataProvider dataProviderEntityClass:v11 identifier:a3];
      v13 = v10[2](v10, v12);
      v14 = v24[5];
      v24[5] = v13;

      if (([v24[5] conformsToProtocol:&unk_1F155A548] & 1) == 0)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPMediaEntityCache _entityWithIdentifier:mediaEntityType:collectionGroupingType:loadEntityBlock:]"];
        [v19 handleFailureInFunction:v20 file:@"MPMediaEntityCache.mm" lineNumber:126 description:@"Invalid entity"];
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke_2;
      v21[3] = &unk_1E76787A8;
      v21[5] = &v23;
      v21[6] = a3;
      v21[4] = self;
      [(MPMediaEntityCache *)self _performWithExclusiveAccessForDataProviderEntityClass:v11 block:v21];
    }
  }

  else
  {
    v15 = v10[2](v10, 0);
    v16 = v24[5];
    v24[5] = v15;
  }

  v17 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v17;
}

void __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = v3;
  while (1)
  {
    v6 = v5[4];
    if (v4 >= v6)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      return;
    }
  }

  if (v6 < v4)
  {
    ++v5;
    goto LABEL_6;
  }

  v7 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(v3, v4);
  WeakRetained = objc_loadWeakRetained(v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = WeakRetained;
}

void __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = a1[6];
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  objc_storeWeak(v5 + 5, *(*(a1[5] + 8) + 40));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke_3;
  v8[3] = &unk_1E76819F0;
  v7 = *(a1[4] + 32);
  v9 = *(a1 + 2);
  dispatch_async(v7, v8);
}

void __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(*(*(a1 + 40) + 8) + 40)];
  if ([*(*(a1 + 32) + 48) count] == 1)
  {
    v2 = dispatch_time(0, 100000000);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__MPMediaEntityCache__entityWithIdentifier_mediaEntityType_collectionGroupingType_loadEntityBlock___block_invoke_4;
    block[3] = &unk_1E7682518;
    block[4] = v3;
    dispatch_after(v2, v4, block);
  }
}

- (void)removeEntityWithIdentifier:(int64_t)a3 dataProviderEntityClass:(Class)a4
{
  if (a4)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __73__MPMediaEntityCache_removeEntityWithIdentifier_dataProviderEntityClass___block_invoke;
    v4[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v4[4] = a3;
    [(MPMediaEntityCache *)self _performWithExclusiveAccessForDataProviderEntityClass:a4 block:v4];
  }
}

void __73__MPMediaEntityCache_removeEntityWithIdentifier_dataProviderEntityClass___block_invoke(uint64_t a1, void **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = a2 + 1;
  v5 = a2[1];
  do
  {
    if (v5[4] >= v3)
    {
      v4 = v5;
    }

    v5 = v5[v5[4] < v3];
  }

  while (v5);
  if (v4 == a2 + 1 || v3 < v4[4])
  {
    return;
  }

  v6 = v4[1];
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *v6;
    }

    while (v6);
  }

  else
  {
    v8 = v4;
    do
    {
      v7 = v8[2];
      v32 = *v7 == v8;
      v8 = v7;
    }

    while (!v32);
  }

  if (*a2 == v4)
  {
    *a2 = v7;
  }

  a2[2] = a2[2] - 1;
  v9 = *v4;
  v10 = v4;
  if (*v4)
  {
    v11 = v4[1];
    if (!v11)
    {
      v10 = v4;
      goto LABEL_23;
    }

    do
    {
      v10 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  v9 = v10[1];
  if (v9)
  {
LABEL_23:
    v13 = 0;
    v12 = v10[2];
    v9[2] = v12;
    goto LABEL_24;
  }

  v12 = v10[2];
  v13 = 1;
LABEL_24:
  v14 = *v12;
  if (*v12 == v10)
  {
    *v12 = v9;
    if (v10 == v2)
    {
      v14 = 0;
      v2 = v9;
    }

    else
    {
      v14 = v12[1];
    }
  }

  else
  {
    v12[1] = v9;
  }

  v15 = *(v10 + 24);
  if (v10 != v4)
  {
    v16 = v4[2];
    v10[2] = v16;
    v16[*v16 != v4] = v10;
    v18 = *v4;
    v17 = v4[1];
    v18[2] = v10;
    *v10 = v18;
    v10[1] = v17;
    if (v17)
    {
      v17[2] = v10;
    }

    *(v10 + 24) = *(v4 + 24);
    if (v2 == v4)
    {
      v2 = v10;
    }
  }

  if (!v2 || !v15)
  {
    goto LABEL_87;
  }

  if (!v13)
  {
    *(v9 + 24) = 1;
    goto LABEL_87;
  }

  while (1)
  {
    v19 = v14[2];
    v20 = *v19;
    if (*v19 == v14)
    {
      break;
    }

    if ((v14[3] & 1) == 0)
    {
      *(v14 + 24) = 1;
      *(v19 + 24) = 0;
      v21 = v19[1];
      v22 = *v21;
      v19[1] = *v21;
      if (v22)
      {
        *(v22 + 16) = v19;
      }

      v23 = v19[2];
      v21[2] = v23;
      v23[*v23 != v19] = v21;
      *v21 = v19;
      v19[2] = v21;
      if (v2 == *v14)
      {
        v2 = v14;
      }

      v14 = *(*v14 + 1);
    }

    v24 = *v14;
    if (*v14 && *(v24 + 24) != 1)
    {
      v25 = v14[1];
      if (v25 && (v25[3] & 1) == 0)
      {
LABEL_73:
        v24 = v14;
      }

      else
      {
        *(v24 + 24) = 1;
        *(v14 + 24) = 0;
        v33 = v24[1];
        *v14 = v33;
        if (v33)
        {
          v33[2] = v14;
        }

        v34 = v14[2];
        v24[2] = v34;
        v34[*v34 != v14] = v24;
        v24[1] = v14;
        v14[2] = v24;
        v25 = v14;
      }

      v35 = v24[2];
      *(v24 + 24) = *(v35 + 24);
      *(v35 + 24) = 1;
      *(v25 + 24) = 1;
      v36 = *(v35 + 1);
      v37 = *v36;
      *(v35 + 1) = *v36;
      if (v37)
      {
        *(v37 + 16) = v35;
      }

      v38 = *(v35 + 2);
      v36[2] = v38;
      v38[*v38 != v35] = v36;
      *v36 = v35;
      goto LABEL_86;
    }

    v25 = v14[1];
    if (v25 && *(v25 + 24) != 1)
    {
      goto LABEL_73;
    }

    *(v14 + 24) = 0;
    v26 = v14[2];
    if (v26 == v2 || (v26[3] & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    v14 = *(v26[2] + (*v26[2] == v26));
  }

  if ((v14[3] & 1) == 0)
  {
    *(v14 + 24) = 1;
    *(v19 + 24) = 0;
    v27 = v20[1];
    *v19 = v27;
    if (v27)
    {
      v27[2] = v19;
    }

    v28 = v19[2];
    v20[2] = v28;
    v28[*v28 != v19] = v20;
    v20[1] = v19;
    v19[2] = v20;
    v29 = v14[1];
    if (v2 == v29)
    {
      v2 = v14;
    }

    v14 = *v29;
  }

  v30 = *v14;
  if (*v14 && *(v30 + 24) != 1)
  {
    goto LABEL_82;
  }

  v31 = v14[1];
  if (!v31 || *(v31 + 24) == 1)
  {
    *(v14 + 24) = 0;
    v26 = v14[2];
    v32 = *(v26 + 24) != 1 || v26 == v2;
    if (v32)
    {
LABEL_67:
      *(v26 + 24) = 1;
      goto LABEL_87;
    }

    goto LABEL_65;
  }

  if (v30 && (v30[3] & 1) == 0)
  {
LABEL_82:
    v31 = v14;
    goto LABEL_83;
  }

  *(v31 + 24) = 1;
  *(v14 + 24) = 0;
  v39 = *v31;
  v14[1] = *v31;
  if (v39)
  {
    v39[2] = v14;
  }

  v40 = v14[2];
  v31[2] = v40;
  v40[*v40 != v14] = v31;
  *v31 = v14;
  v14[2] = v31;
  v30 = v14;
LABEL_83:
  v35 = v31[2];
  *(v31 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v30 + 24) = 1;
  v36 = *v35;
  v41 = *(*v35 + 8);
  *v35 = v41;
  if (v41)
  {
    *(v41 + 16) = v35;
  }

  v42 = *(v35 + 2);
  v36[2] = v42;
  v42[*v42 != v35] = v36;
  v36[1] = v35;
LABEL_86:
  *(v35 + 2) = v36;
LABEL_87:
  objc_destroyWeak(v4 + 5);

  operator delete(v4);
}

- (void)updatePropertyValuesInEntityWithIdentifier:(int64_t)a3 dataProviderEntityClass:(Class)a4 deleted:(BOOL)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__MPMediaEntityCache_updatePropertyValuesInEntityWithIdentifier_dataProviderEntityClass_deleted___block_invoke;
  v5[3] = &__block_descriptor_41_e9_v16__0_v8l;
  v5[4] = a3;
  v6 = a5;
  [(MPMediaEntityCache *)self _performWithExclusiveAccessForDataProviderEntityClass:a4 block:v5];
}

void __97__MPMediaEntityCache_updatePropertyValuesInEntityWithIdentifier_dataProviderEntityClass_deleted___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = v2;
    do
    {
      if (*(v3 + 32) >= v6)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v6));
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 32))
    {
      WeakRetained = objc_loadWeakRetained((v7 + 40));
      v8 = [WeakRetained cachedPropertyValues];
      v9 = v8;
      if (*(a1 + 40) == 1)
      {
        [v8 delete];
      }

      else
      {
        [v8 invalidate];
      }
    }
  }
}

- (id)collectionWithIdentifier:(int64_t)a3 grouping:(int64_t)a4 loadEntityBlock:(id)a5
{
  v5 = [(MPMediaEntityCache *)self _entityWithIdentifier:a3 mediaEntityType:1 collectionGroupingType:a4 loadEntityBlock:a5];

  return v5;
}

- (id)itemWithIdentifier:(int64_t)a3 loadEntityBlock:(id)a4
{
  v4 = [(MPMediaEntityCache *)self _entityWithIdentifier:a3 mediaEntityType:0 collectionGroupingType:0 loadEntityBlock:a4];

  return v4;
}

- (id)itemWithIdentifier:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16693;
  v13 = __Block_byref_object_dispose__16694;
  v14 = 0;
  if (self->_mediaLibraryDataProviderRespondsToSupportsEntityChangeTrackingMethod)
  {
    v8 = 0;
    v4 = [(MPMediaLibraryDataProviderPrivate *)self->_mediaLibraryDataProvider supportsEntityChangeTrackingForMediaEntityType:0 collectionGroupingType:0 dataProviderClass:&v8];
    v5 = v8 ? v4 : 0;
    if (v5)
    {
      [MPMediaEntityCache _performWithSharedAccessForDataProviderEntityClass:"_performWithSharedAccessForDataProviderEntityClass:block:" block:?];
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __41__MPMediaEntityCache_itemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = v3;
  while (1)
  {
    v6 = v5[4];
    if (v4 >= v6)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      return;
    }
  }

  if (v6 < v4)
  {
    ++v5;
    goto LABEL_6;
  }

  v7 = std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(v3, v4);
  WeakRetained = objc_loadWeakRetained(v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = WeakRetained;
}

- (MPMediaEntityCache)initWithMediaLibraryDataProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MPMediaEntityCache;
  v6 = [(MPMediaEntityCache *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPMediaEntityCache/deallocLaterQueue", 0);
    deallocLaterQueue = v6->_deallocLaterQueue;
    v6->_deallocLaterQueue = v7;

    v6->_rwlock.ourl_lock._os_unfair_lock_opaque = 0;
    v6->_rwlock.ourl_count = 0;
    objc_storeStrong(&v6->_mediaLibraryDataProvider, a3);
    v6->_mediaLibraryDataProviderRespondsToSupportsEntityChangeTrackingMethod = objc_opt_respondsToSelector() & 1;
    v6->_concreteEntitiesByDataProviderEntityClass = CFDictionaryCreateMutable(0, 0, 0, 0);
    v9 = [MEMORY[0x1E695DF70] array];
    entityTemporaryReferences = v6->_entityTemporaryReferences;
    v6->_entityTemporaryReferences = v9;
  }

  return v6;
}

@end
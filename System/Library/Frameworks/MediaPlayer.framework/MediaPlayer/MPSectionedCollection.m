@interface MPSectionedCollection
- (MPSectionedCollection)init;
- (MPSectionedCollection)initWithCoder:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)_stateDumpObject;
- (id)allElementsEnumerator;
- (id)allItems;
- (id)allSections;
- (id)changeDetailsToSectionedCollection:(id)a3 applyingUIKitWorkarounds:(BOOL)a4 isEqualBlock:(id)a5 isUpdatedBlock:(id)a6;
- (id)firstItem;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)identifiersForSectionAtIndex:(int64_t)a3;
- (id)indexPathForGlobalIndex:(int64_t)a3;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)lastItem;
- (id)lazyMapWithSections:(id)a3 items:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)globalIndexForIndexPath:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)totalItemCount;
- (void)_initializeAsEmptySectionedCollection;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)enumerateItemIdentifiersUsingBlock:(id)a3;
- (void)enumerateItemsInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)enumerateSectionIdentifiersUsingBlock:(id)a3;
- (void)enumerateSectionsUsingBlock:(id)a3;
@end

@implementation MPSectionedCollection

- (MPSectionedCollection)init
{
  v5.receiver = self;
  v5.super_class = MPSectionedCollection;
  v2 = [(MPSectionedCollection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MPSectionedCollection *)v2 _initializeAsEmptySectionedCollection];
  }

  return v3;
}

- (void)_initializeAsEmptySectionedCollection
{
  sectionedItems = self->_sectionedItems;
  v4 = MEMORY[0x1E695E0F0];
  self->_sectionedItems = MEMORY[0x1E695E0F0];

  sections = self->_sections;
  self->_sections = v4;
}

- (id)allItems
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MPSectionedCollection totalItemCount](self, "totalItemCount")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_sectionedItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];

  return v9;
}

- (int64_t)totalItemCount
{
  v3 = [(MPSectionedCollection *)self numberOfSections];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(MPSectionedCollection *)self numberOfItemsInSection:v5++];
  }

  while (v4 != v5);
  return v6;
}

- (id)_stateDumpObject
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(MPSectionedCollection *)self numberOfSections];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[MPSectionedCollection numberOfSections](self, "numberOfSections")}];
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(MPSectionedCollection *)self numberOfItemsInSection:i];
      v7 = [(MPSectionedCollection *)self sectionAtIndex:i];
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__MPSectionedCollection__stateDumpObject__block_invoke;
      v17[3] = &unk_1E767D970;
      v9 = v8;
      v18 = v9;
      [(MPSectionedCollection *)self enumerateItemsInSectionAtIndex:i usingBlock:v17];
      v19[0] = @"_sectionIdx";
      if (i)
      {
        quot = i;
        v11 = &v21;
        do
        {
          v12 = ldiv(quot, 10);
          quot = v12.quot;
          if (v12.rem >= 0)
          {
            LOBYTE(v13) = v12.rem;
          }

          else
          {
            v13 = -v12.rem;
          }

          *--v11 = v13 + 48;
        }

        while (v12.quot);
        v14 = CFStringCreateWithBytes(0, v11, &v21 - v11, 0x8000100u, 0);
      }

      else
      {
        v14 = @"0";
      }

      v20[0] = v14;
      v20[1] = v7;
      v19[1] = @"section";
      v19[2] = @"items";
      v20[2] = v9;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

      [v4 addObject:v15];
    }
  }

  return v4;
}

- (id)allElementsEnumerator
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF28];
  v8[0] = self->_sections;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v4 arrayByAddingObjectsFromArray:self->_sectionedItems];
  v6 = [v3 msv_concatArrays:v5];

  return v6;
}

- (id)lazyMapWithSections:(id)a3 items:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MPLazyTransformSectionedCollectionDataSource alloc] initWithSectionedCollection:self sectionTransform:v7 itemTransform:v6];

  v9 = [[MPLazySectionedCollection alloc] initWithDataSource:v8];

  return v9;
}

- (id)changeDetailsToSectionedCollection:(id)a3 applyingUIKitWorkarounds:(BOOL)a4 isEqualBlock:(id)a5 isUpdatedBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MPChangeDetails alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke;
  v21[3] = &unk_1E767D948;
  v21[4] = self;
  v14 = v10;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v25 = a4;
  v17 = [(MPChangeDetails *)v13 initWithBlock:v21];
  if ([(MPChangeDetails *)v17 hasChanges])
  {
    v18 = v17;
  }

  else
  {
    v18 = +[MPChangeDetails empty];
  }

  v19 = v18;

  return v19;
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v80 = 0;
  v8 = [*(a1 + 32) numberOfSections];
  v9 = [*(a1 + 40) numberOfSections];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2;
  v78[3] = &unk_1E767D880;
  v79 = *(a1 + 48);
  v10 = MPChangeDetailOperationGenerateEx(v8, v9, &v80, &v53, v78);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3;
  aBlock[3] = &unk_1E767D8F8;
  v11 = v5;
  v73 = v11;
  v76 = *(a1 + 48);
  v12 = v4;
  v74 = v12;
  v13 = v3;
  v75 = v13;
  v77 = *(a1 + 56);
  v14 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5;
  v66[3] = &unk_1E767D8F8;
  v15 = v7;
  v67 = v15;
  v70 = *(a1 + 48);
  v16 = v6;
  v68 = v16;
  v71 = *(a1 + 56);
  v17 = v13;
  v69 = v17;
  v18 = _Block_copy(v66);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2_69;
  v60[3] = &unk_1E767D8F8;
  v19 = v12;
  v20 = v10;
  v44 = v19;
  v61 = v19;
  v64 = *(a1 + 48);
  v43 = v11;
  v62 = v43;
  v21 = v17;
  v63 = v21;
  v65 = *(a1 + 56);
  v48 = _Block_copy(v60);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4_71;
  v54[3] = &unk_1E767D8F8;
  v42 = v16;
  v55 = v42;
  v58 = *(a1 + 48);
  v41 = v15;
  v56 = v41;
  v59 = *(a1 + 56);
  v47 = v21;
  v57 = v47;
  v22 = _Block_copy(v54);
  v23 = v80;
  if (v80)
  {
    v24 = 0;
    v45 = v20;
    v25 = 0x1E696A000uLL;
    v46 = v14;
    while (1)
    {
      v26 = *&v20[8 * v24];
      v27 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        break;
      }

      if (v27)
      {
        v28 = [*(v25 + 3208) indexPathWithIndex:(v26 >> 31) & 0x7FFFFFFF];
        v29 = [*(v25 + 3208) indexPathWithIndex:v26 & 0x7FFFFFFF];
        v53 = 0;
        v30 = [*(a1 + 32) numberOfItemsInSection:(v26 >> 31) & 0x7FFFFFFF];
        v31 = [*(a1 + 40) numberOfItemsInSection:v26 & 0x7FFFFFFF];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_6;
        v49[3] = &unk_1E767D920;
        v52 = *(a1 + 48);
        v32 = v28;
        v50 = v32;
        v33 = v29;
        v51 = v33;
        v34 = MPChangeDetailOperationGenerateEx(v30, v31, &v53, v81, v49);
        v35 = v53;
        if (v53)
        {
          v36 = 0;
          while (1)
          {
            v37 = *&v34[8 * v36];
            v38 = v37 >> 62;
            if ((v37 >> 62) > 1)
            {
              break;
            }

            if (v38)
            {
              v39 = [v32 indexPathByAddingIndex:(v37 >> 31) & 0x7FFFFFFF];
              v40 = [v33 indexPathByAddingIndex:v37 & 0x7FFFFFFF];
              if ((*(*(a1 + 48) + 16))())
              {
                if ((*(*(a1 + 56) + 16))())
                {
                  if ([v39 isEqual:v40])
                  {
                    [v47 appendItemUpdateForPreviousIndexPath:v39 finalIndexPath:v40];
                  }

                  else
                  {
                    [v47 appendItemMoveFromIndexPath:v39 toIndexPath:v40 updated:1];
                  }
                }
              }

              else
              {
                v22[2](v22, v39);
                v18[2](v18, v40);
              }

              goto LABEL_19;
            }

LABEL_20:
            if (++v36 >= v35)
            {
              goto LABEL_25;
            }
          }

          if (v38 == 3)
          {
            v39 = [v33 indexPathByAddingIndex:*&v34[8 * v36] & 0x7FFFFFFFLL];
            v18[2](v18, v39);
          }

          else
          {
            v39 = [v32 indexPathByAddingIndex:(v37 >> 31) & 0x7FFFFFFF];
            v22[2](v22, v39);
          }

LABEL_19:

          v35 = v53;
          goto LABEL_20;
        }

LABEL_25:
        free(v34);
        if ((*(*(a1 + 48) + 16))())
        {
          v20 = v45;
          v14 = v46;
          if ((*(*(a1 + 56) + 16))())
          {
            [v47 appendSectionUpdateForPreviousIndex:objc_msgSend(v32 finalIndex:{"section"), objc_msgSend(v33, "section")}];
          }
        }

        else
        {
          v48[2](v48, v32);
          v14 = v46;
          v46[2](v46, v33);
          v20 = v45;
        }

        v25 = 0x1E696A000;
        goto LABEL_32;
      }

LABEL_33:
      if (++v24 >= v23)
      {
        goto LABEL_34;
      }
    }

    if (v27 == 3)
    {
      v32 = [*(v25 + 3208) indexPathWithIndex:*&v20[8 * v24] & 0x7FFFFFFFLL];
      v14[2](v14, v32);
    }

    else
    {
      v32 = [*(v25 + 3208) indexPathWithIndex:(v26 >> 31) & 0x7FFFFFFF];
      v48[2](v48, v32);
    }

LABEL_32:

    v23 = v80;
    goto LABEL_33;
  }

LABEL_34:
  free(v20);
  [v47 setInsertedSections:v44];
  [v47 setDeletedSections:v43];
  [v47 setInsertedItemIndexPaths:v42];
  [v47 setDeletedItemIndexPaths:v41];
  if (*(a1 + 64))
  {
    [v47 applyUIKitWorkarounds];
  }
}

uint64_t __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:a2];
  v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  v7 = (*(v4 + 16))(v4, v5, v6);

  return v7;
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4;
  v11[3] = &unk_1E767D8A8;
  v13 = *(a1 + 56);
  v5 = v3;
  v12 = v5;
  v14 = &v15;
  [v4 enumerateIndexesUsingBlock:v11];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:{objc_msgSend(v5, "section")}];
  }

  else
  {
    [*(a1 + 32) removeIndex:?];
    v6 = *(a1 + 48);
    v7 = v16[3];
    v8 = [v5 section];
    v9 = *(a1 + 64);
    v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:v16[3]];
    [v6 appendSectionMoveFromIndex:v7 toIndex:v8 updated:{(*(v9 + 16))(v9, v10, v5)}];
  }

  _Block_object_dispose(&v15, 8);
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__42263;
  v19 = __Block_byref_object_dispose__42264;
  v20 = 0;
  v4 = *(a1 + 32);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_67;
  v10 = &unk_1E767D8D0;
  v12 = *(a1 + 56);
  v5 = v3;
  v11 = v5;
  v13 = &v21;
  v14 = &v15;
  [v4 enumerateObjectsUsingBlock:&v7];
  if (v22[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:{v5, v7, v8, v9, v10}];
  }

  else
  {
    [*(a1 + 32) removeObjectAtIndex:{v7, v8, v9, v10}];
    v6 = (*(*(a1 + 64) + 16))();
    if ([v16[5] isEqual:v5])
    {
      if (v6)
      {
        [*(a1 + 48) appendItemUpdateForPreviousIndexPath:v16[5] finalIndexPath:v5];
      }
    }

    else
    {
      [*(a1 + 48) appendItemMoveFromIndexPath:v16[5] toIndexPath:v5 updated:v6];
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3_70;
  v11[3] = &unk_1E767D8A8;
  v13 = *(a1 + 56);
  v5 = v3;
  v12 = v5;
  v14 = &v15;
  [v4 enumerateIndexesUsingBlock:v11];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:{objc_msgSend(v5, "section")}];
  }

  else
  {
    [*(a1 + 32) removeIndex:?];
    v6 = *(a1 + 48);
    v7 = [v5 section];
    v8 = v16[3];
    v9 = *(a1 + 64);
    v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:v8];
    [v6 appendSectionMoveFromIndex:v7 toIndex:v8 updated:{(*(v9 + 16))(v9, v5, v10)}];
  }

  _Block_object_dispose(&v15, 8);
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4_71(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__42263;
  v19 = __Block_byref_object_dispose__42264;
  v20 = 0;
  v4 = *(a1 + 32);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5_72;
  v10 = &unk_1E767D8D0;
  v12 = *(a1 + 56);
  v5 = v3;
  v11 = v5;
  v13 = &v21;
  v14 = &v15;
  [v4 enumerateObjectsUsingBlock:&v7];
  if (v22[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:{v5, v7, v8, v9, v10}];
  }

  else
  {
    [*(a1 + 32) removeObjectAtIndex:{v7, v8, v9, v10}];
    v6 = (*(*(a1 + 64) + 16))();
    if ([v5 isEqual:v16[5]])
    {
      if (v6)
      {
        [*(a1 + 48) appendItemUpdateForPreviousIndexPath:v5 finalIndexPath:v16[5]];
      }
    }

    else
    {
      [*(a1 + 48) appendItemMoveFromIndexPath:v5 toIndexPath:v16[5] updated:v6];
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) indexPathByAddingIndex:a2];
  v7 = [*(a1 + 40) indexPathByAddingIndex:a3];
  v8 = (*(v5 + 16))(v5, v6, v7);

  return v8;
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5_72(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = a3;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3_70(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = a1[4];
  v6 = a1[5];
  v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:a2];
  LODWORD(v6) = (*(v6 + 16))(v6, v7, v8);

  if (v6)
  {
    *(*(a1[6] + 8) + 24) = a2;
    *a3 = 1;
  }
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_67(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = a3;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __113__MPSectionedCollection_changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = a1[5];
  v7 = [MEMORY[0x1E696AC88] indexPathWithIndex:a2];
  LODWORD(v6) = (*(v6 + 16))(v6, v7, a1[4]);

  if (v6)
  {
    *(*(a1[6] + 8) + 24) = a2;
    *a3 = 1;
  }
}

- (id)indexPathForGlobalIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v22 = v6;
    v23 = v5;
    v24 = v4;
    v25 = v3;
    if (a3 < 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"MPSectionedCollection.m" lineNumber:254 description:@"globalIndex must be greater than or equal to 0"];
    }

    v15 = [(MPSectionedCollection *)self numberOfSections:v8];
    if (v15 < 1)
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = [(MPSectionedCollection *)self numberOfItemsInSection:v17];
        if (v19 + v18 > a3)
        {
          break;
        }

        ++v17;
        v18 += v19;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      v11 = [MEMORY[0x1E696AC88] indexPathForItem:a3 - v18 inSection:v17];
    }
  }

  return v11;
}

- (int64_t)globalIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];
  if (v5 < 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (v5 != v8)
    {
      v9 += [(MPSectionedCollection *)self numberOfItemsInSection:v8++];
    }

    if (v7 >= [(MPSectionedCollection *)self numberOfItemsInSection:v5])
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7 + v9;
    }
  }

  return v10;
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  sectionedItems = self->_sectionedItems;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MPSectionedCollection_enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E767D858;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [(NSArray *)sectionedItems enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __50__MPSectionedCollection_enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MPSectionedCollection_enumerateItemsUsingBlock___block_invoke_2;
  v10[3] = &unk_1E767D830;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = a3;
  [a2 enumerateObjectsUsingBlock:v10];
  if (a4 && (*(*(*(a1 + 40) + 8) + 24) & 1) != 0)
  {
    *a4 = 1;
  }
}

void __50__MPSectionedCollection_enumerateItemsUsingBlock___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a1[6]];
  (*(v8 + 16))(v8, v10, v9, *(a1[5] + 8) + 24);

  if (a4 && (*(*(a1[5] + 8) + 24) & 1) != 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)enumerateItemsInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(NSArray *)self->_sectionedItems objectAtIndex:a3];
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v6[2](v6, *(*(&v13 + 1) + 8 * v12), v10, &v17);
      if (v17)
      {
        break;
      }

      ++v10;
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateSectionsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v11 + 1) + 8 * v10), v8, &v15);
      if (v15)
      {
        break;
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];

  v7 = [(NSArray *)self->_sectionedItems objectAtIndex:v5];
  v8 = [v7 objectAtIndex:v6];

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_sectionedItems objectAtIndex:a3];
  v4 = [v3 count];

  return v4;
}

- (id)allSections
{
  v2 = [(NSArray *)self->_sections copy];

  return v2;
}

- (id)lastItem
{
  v2 = [(NSArray *)self->_sectionedItems lastObject];
  v3 = [v2 lastObject];

  return v3;
}

- (id)firstItem
{
  v2 = [(NSArray *)self->_sectionedItems firstObject];
  v3 = [v2 firstObject];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MPMutableSectionedCollection);
  if (v4)
  {
    v5 = [(NSArray *)self->_sections mutableCopy];
    sections = v4->super._sections;
    v4->super._sections = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sectionedItems, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_sectionedItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) mutableCopy];
          [(NSArray *)v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    sectionedItems = v4->super._sectionedItems;
    v4->super._sectionedItems = v7;
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(MPSectionedCollection *)self numberOfSections];
  v8 = v7;
  v9 = @"sections";
  if (v7 == 1)
  {
    v9 = @"section";
  }

  [v6 appendFormat:@"; %lu %@", v7, v9];
  [v6 appendString:@"; ["];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [(MPSectionedCollection *)self numberOfItemsInSection:i];
      v12 = [(MPSectionedCollection *)self sectionAtIndex:i];
      v13 = [v12 description];
      v14 = v13;
      if (v11 == 1)
      {
        v15 = @"item";
      }

      else
      {
        v15 = @"items";
      }

      [v6 appendFormat:@"\n    %@ (%lu %@), ", v13, v11, v15];
    }

    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"]"];
  [v6 appendString:@">"];

  return v6;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(MPSectionedCollection *)self numberOfSections];
  v8 = v7;
  v9 = @"sections";
  if (v7 == 1)
  {
    v9 = @"section";
  }

  [v6 appendFormat:@"; %lu %@", v7, v9];
  [v6 appendString:@": ["];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [(MPSectionedCollection *)self numberOfItemsInSection:i];
      v12 = [(MPSectionedCollection *)self sectionAtIndex:i];
      v13 = [v12 debugDescription];
      v14 = v13;
      v15 = @"items";
      if (v11 == 1)
      {
        v15 = @"item";
      }

      [v6 appendFormat:@"\n    %@ (%lu %@): [", v13, v11, v15];

      if (v11 >= 1)
      {
        for (j = 0; j != v11; ++j)
        {
          v17 = [MEMORY[0x1E696AC88] indexPathForItem:j inSection:i];
          v18 = [(MPSectionedCollection *)self itemAtIndexPath:v17];
          v19 = [v18 debugDescription];
          [v6 appendFormat:@"\n        %@, ", v19];
        }

        [v6 appendString:@"\n    "];
      }

      [v6 appendString:{@"], "}];
    }

    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"]"];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  sectionedItems = self->_sectionedItems;
  v5 = a3;
  [v5 encodeObject:sectionedItems forKey:@"sectionedItems"];
  [v5 encodeObject:self->_sections forKey:@"sections"];
}

- (MPSectionedCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPSectionedCollection;
  v5 = [(MPSectionedCollection *)&v13 init];
  if (v5)
  {
    v6 = [v4 allowedClasses];
    v7 = [v6 setByAddingObject:objc_opt_class()];

    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"sectionedItems"];
    sectionedItems = v5->_sectionedItems;
    v5->_sectionedItems = v8;

    v10 = [v4 decodeObjectOfClasses:v7 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v10;
  }

  return v5;
}

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedCollection *)self numberOfSections];
  if (v5 < 1)
  {
    v13 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [(MPSectionedCollection *)self numberOfItemsInSection:v7];
      if (v8 < 1)
      {
        v13 = 0;
      }

      else
      {
        v9 = v8;
        v10 = 1;
        do
        {
          v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 - 1 inSection:v7];
          v12 = [(MPSectionedCollection *)self identifiersForItemAtIndexPath:v11];
          if ([v12 intersectsSet:v4])
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }

          if (v10 >= v9)
          {
            break;
          }

          ++v10;
        }

        while (!v13);
      }

      ++v7;
    }

    while (v7 < v6 && !v13);
  }

  return v13;
}

- (id)identifiersForSectionAtIndex:(int64_t)a3
{
  v3 = [(MPSectionedCollection *)self sectionAtIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 identifiers];
    }

    else
    {
      +[MPIdentifierSet emptyIdentifierSet];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v3 = [(MPSectionedCollection *)self itemAtIndexPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 identifiers];
    }

    else
    {
      +[MPIdentifierSet emptyIdentifierSet];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v12 = 0;
  v7 = [(MPSectionedCollection *)self numberOfItemsInSection:a3];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 1;
    do
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:a3];
      v11 = [(MPSectionedCollection *)self identifiersForItemAtIndexPath:v10];
      if (v11)
      {
        v6[2](v6, v9 - 1, v11, &v12);
      }

      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while ((v12 & 1) == 0);
  }
}

- (void)enumerateSectionIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(MPSectionedCollection *)self numberOfSections];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = [(MPSectionedCollection *)self identifiersForSectionAtIndex:v7 - 1];
      v4[2](v4, v7 - 1, v8, &v9);

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
  }
}

- (void)enumerateItemIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(MPSectionedCollection *)self numberOfSections];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [(MPSectionedCollection *)self numberOfItemsInSection:v7];
      v9 = v14;
      if (v8 >= 1 && (v14 & 1) == 0)
      {
        v10 = v8;
        v11 = 1;
        do
        {
          v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 - 1 inSection:v7];
          v13 = [(MPSectionedCollection *)self identifiersForItemAtIndexPath:v12];
          if (v13)
          {
            v4[2](v4, v12, v13, &v14);
          }

          v9 = v14;
          if (v11 >= v10)
          {
            break;
          }

          ++v11;
        }

        while ((v14 & 1) == 0);
      }

      ++v7;
    }

    while (v7 < v6 && (v9 & 1) == 0);
  }
}

@end
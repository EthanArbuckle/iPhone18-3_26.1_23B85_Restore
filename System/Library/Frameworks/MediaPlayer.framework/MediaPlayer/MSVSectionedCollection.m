@interface MSVSectionedCollection
@end

@implementation MSVSectionedCollection

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke(uint64_t a1, void *a2)
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
  v78[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2;
  v78[3] = &unk_1E767D880;
  v79 = *(a1 + 48);
  v10 = MPChangeDetailOperationGenerateEx(v8, v9, &v80, &v53, v78);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3;
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
  v66[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5;
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
  v60[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_7;
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
  v54[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_9;
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
        v49[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_11;
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

uint64_t __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:a2];
  v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  v7 = (*(v4 + 16))(v4, v5, v6);

  return v7;
}

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4;
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

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_5(uint64_t a1, void *a2)
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
  v9 = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_6;
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

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_8;
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

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_9(uint64_t a1, void *a2)
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
  v9 = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_10;
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

uint64_t __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) indexPathByAddingIndex:a2];
  v7 = [*(a1 + 40) indexPathByAddingIndex:a3];
  v8 = (*(v5 + 16))(v5, v6, v7);

  return v8;
}

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_10(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = a3;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_8(void *a1, uint64_t a2, _BYTE *a3)
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

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_6(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = a3;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke_4(void *a1, uint64_t a2, _BYTE *a3)
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

@end
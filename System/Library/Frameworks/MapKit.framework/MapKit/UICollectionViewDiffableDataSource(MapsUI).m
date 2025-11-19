@interface UICollectionViewDiffableDataSource(MapsUI)
- (id)_mapkit_visibleFocusItemsInCollectionView:()MapsUI forSection:;
@end

@implementation UICollectionViewDiffableDataSource(MapsUI)

- (id)_mapkit_visibleFocusItemsInCollectionView:()MapsUI forSection:
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 frame];
  if (CGRectGetWidth(v40) <= 0.0 || ([v6 frame], CGRectGetHeight(v41) <= 0.0))
  {
    v29 = MEMORY[0x1E695E0F0];
    goto LABEL_25;
  }

  v8 = [a1 snapshotForSection:v7];
  v9 = [v8 items];
  v10 = [v9 count];

  if (v10)
  {
    [v6 layoutIfNeeded];
    v11 = [v6 visibleCells];
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v31 = v8;
      v32 = v7;
      v16 = *v34;
      v17 = -1;
      do
      {
        v18 = v13;
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v18);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          [v6 indexPathForCell:{v20, v31}];
          v22 = v21 = v6;
          v23 = [v22 row];

          v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
          [v12 setObject:v20 forKeyedSubscript:v24];

          v6 = v21;
          if (v17 >= v23)
          {
            v17 = v23;
          }
        }

        v13 = v18;
        v15 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);

      if (v17 == -1)
      {
        v29 = MEMORY[0x1E695E0F0];
        v8 = v31;
        v7 = v32;
        goto LABEL_23;
      }

      v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v7 = v32;
      if (v17 < [v12 count] + v17)
      {
        v26 = v17;
        do
        {
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
          v28 = [v12 objectForKeyedSubscript:v27];
          [v25 addObject:v28];

          ++v26;
        }

        while (v26 < [v12 count] + v17);
      }

      v29 = [v25 copy];
      v8 = v31;
      v6 = v21;
    }

    else
    {
      v29 = MEMORY[0x1E695E0F0];
      v25 = v13;
    }

LABEL_23:
    goto LABEL_24;
  }

  v29 = MEMORY[0x1E695E0F0];
LABEL_24:

LABEL_25:

  return v29;
}

@end
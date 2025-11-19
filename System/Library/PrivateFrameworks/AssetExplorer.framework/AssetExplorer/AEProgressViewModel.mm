@interface AEProgressViewModel
- (AEProgressViewModel)initWithDataSourceManager:(id)a3;
- (id)_createSnapshot;
- (void)_setProgressByAsset:(id)a3;
- (void)cancelProgressForAssetUUIDs:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setProgress:(id)a3 forAssetReference:(id)a4;
@end

@implementation AEProgressViewModel

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ((v6 & 1) != 0 && AEProgressViewModelDataSourceManagerObserverContext == a5)
  {
    v30 = v8;
    v9 = [v8 dataSource];
    v29 = self;
    v10 = [(AEProgressViewModel *)self _progressByAsset];
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [v10 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        v16 = 0;
        v31 = v14;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * v16);
          v18 = [v9 assetReferenceForAssetReference:v17];
          if (v18)
          {
            v19 = [v10 objectForKey:v17];
            [v11 setObject:v19 forKey:v18];
          }

          else
          {
            v19 = PLAssetExplorerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v17 asset];
              [v20 uuid];
              v21 = v15;
              v22 = v9;
              v23 = v12;
              v24 = v11;
              v26 = v25 = v10;
              *buf = 138543362;
              v39 = v26;
              _os_log_impl(&dword_2411DE000, v19, OS_LOG_TYPE_DEFAULT, "Forgetting in-flight progress for asset %{public}@", buf, 0xCu);

              v10 = v25;
              v11 = v24;
              v12 = v23;
              v9 = v22;
              v15 = v21;
              v14 = v31;
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v14);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__AEProgressViewModel_observable_didChange_context___block_invoke;
    v32[3] = &unk_278CC77A8;
    v32[4] = v29;
    v33 = v11;
    v27 = v11;
    [(AEProgressViewModel *)v29 performChanges:v32];

    v8 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)cancelProgressForAssetUUIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    [(AEProgressViewModel *)self _progressByAsset];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 asset];
          v13 = [v12 uuid];

          if ([v4 containsObject:v13])
          {
            v14 = [v5 objectForKey:v11];
            [v14 cancel];
            ++v8;
            v15 = [v4 count];

            if (v15 == v8)
            {

              goto LABEL_13;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setProgress:(id)a3 forAssetReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEProgressViewModel *)self _dataSourceManager];
  v9 = [v8 dataSource];
  v10 = [v9 assetReferenceForAssetReference:v7];

  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__AEProgressViewModel_setProgress_forAssetReference___block_invoke;
    v11[3] = &unk_278CC7780;
    v11[4] = self;
    v12 = v6;
    v13 = v10;
    [(AEProgressViewModel *)self performChanges:v11];
  }
}

void __53__AEProgressViewModel_setProgress_forAssetReference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _progressByAsset];
  v4 = [v2 mutableCopy];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 setObject:v3 forKey:*(a1 + 48)];
  }

  else
  {
    [v4 removeObjectForKey:*(a1 + 48)];
  }

  [*(a1 + 32) _setProgressByAsset:v4];
}

- (id)_createSnapshot
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(AEProgressViewModel *)self _progressByAsset];
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v3 keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v11 = [(AEProgressViewModel *)self _dataSourceManager];
          v12 = [v11 dataSource];
          v13 = v12;
          if (v12)
          {
            [v12 indexPathForAssetReference:v10];
          }

          else
          {
            v22 = 0u;
            v23 = 0u;
          }

          v14 = PXIndexPathFromSimpleIndexPath();
          v15 = [(AEProgressViewModel *)self _progressByAsset:v22];
          v16 = [v15 objectForKey:v10];

          [v4 setObject:v16 forKey:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v17 = [(AEProgressViewModel *)self _dataSourceManager];
  v18 = [v17 dataSource];
  v19 = -[AEProgressViewModelSnapshot initWithProgressByIndexPath:dataSourceIdenfitier:]([AEProgressViewModelSnapshot alloc], "initWithProgressByIndexPath:dataSourceIdenfitier:", v4, [v18 identifier]);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_setProgressByAsset:(id)a3
{
  v5 = a3;
  if (self->__progressByAsset != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__progressByAsset, a3);
    v6 = [(AEProgressViewModel *)self _createSnapshot];
    currentSnapshot = self->_currentSnapshot;
    self->_currentSnapshot = v6;

    [(AEProgressViewModel *)self signalChange:1];
    v5 = v8;
  }
}

- (AEProgressViewModel)initWithDataSourceManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AEProgressViewModel;
  v6 = [(AEProgressViewModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__dataSourceManager, a3);
    [v5 registerChangeObserver:v7 context:AEProgressViewModelDataSourceManagerObserverContext];
    v8 = [MEMORY[0x277CBEAC0] dictionary];
    progressByAsset = v7->__progressByAsset;
    v7->__progressByAsset = v8;
  }

  return v7;
}

@end
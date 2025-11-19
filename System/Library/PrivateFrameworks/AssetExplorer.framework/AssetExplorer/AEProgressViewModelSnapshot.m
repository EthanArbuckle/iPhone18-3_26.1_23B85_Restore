@interface AEProgressViewModelSnapshot
- (AEProgressViewModelSnapshot)initWithProgressByIndexPath:(id)a3 dataSourceIdenfitier:(int64_t)a4;
- (BOOL)hasProgressForIndexPath:(PXSimpleIndexPath *)a3;
- (id)progressForIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation AEProgressViewModelSnapshot

- (id)progressForIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(AEProgressViewModelSnapshot *)self _progressByIndexPath];
  v8 = *a3;
  v5 = PXIndexPathFromSimpleIndexPath();
  v6 = [v4 objectForKey:{v5, *&v8.dataSourceIdentifier, *&v8.item}];

  return v6;
}

- (BOOL)hasProgressForIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(AEProgressViewModelSnapshot *)self _pathsWithProgress];
  v5 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v5;
  LOBYTE(a3) = [v4 containsIndexPath:v7];

  return a3;
}

- (AEProgressViewModelSnapshot)initWithProgressByIndexPath:(id)a3 dataSourceIdenfitier:(int64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27.receiver = self;
  v27.super_class = AEProgressViewModelSnapshot;
  v8 = [(AEProgressViewModelSnapshot *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v8->_correspondingDataSourceIdentifier = a4;
    if (v7)
    {
      objc_storeStrong(&v8->__progressByIndexPath, a3);
      v10 = objc_alloc_init(MEMORY[0x277D3CD78]);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = [(NSDictionary *)v9->__progressByIndexPath keyEnumerator];
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v21 = 0u;
            v22 = 0u;
            PXSimpleIndexPathFromIndexPath();
            v20[0] = v21;
            v20[1] = v22;
            [v10 addIndexPath:v20];
            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      pathsWithProgress = v9->__pathsWithProgress;
      v9->__pathsWithProgress = v10;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

@end
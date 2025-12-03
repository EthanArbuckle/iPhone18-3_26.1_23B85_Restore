@interface AEProgressViewModelSnapshot
- (AEProgressViewModelSnapshot)initWithProgressByIndexPath:(id)path dataSourceIdenfitier:(int64_t)idenfitier;
- (BOOL)hasProgressForIndexPath:(PXSimpleIndexPath *)path;
- (id)progressForIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation AEProgressViewModelSnapshot

- (id)progressForIndexPath:(PXSimpleIndexPath *)path
{
  _progressByIndexPath = [(AEProgressViewModelSnapshot *)self _progressByIndexPath];
  v8 = *path;
  v5 = PXIndexPathFromSimpleIndexPath();
  v6 = [_progressByIndexPath objectForKey:{v5, *&v8.dataSourceIdentifier, *&v8.item}];

  return v6;
}

- (BOOL)hasProgressForIndexPath:(PXSimpleIndexPath *)path
{
  _pathsWithProgress = [(AEProgressViewModelSnapshot *)self _pathsWithProgress];
  v5 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v5;
  LOBYTE(path) = [_pathsWithProgress containsIndexPath:v7];

  return path;
}

- (AEProgressViewModelSnapshot)initWithProgressByIndexPath:(id)path dataSourceIdenfitier:(int64_t)idenfitier
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = AEProgressViewModelSnapshot;
  v8 = [(AEProgressViewModelSnapshot *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v8->_correspondingDataSourceIdentifier = idenfitier;
    if (pathCopy)
    {
      objc_storeStrong(&v8->__progressByIndexPath, path);
      v10 = objc_alloc_init(MEMORY[0x277D3CD78]);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      keyEnumerator = [(NSDictionary *)v9->__progressByIndexPath keyEnumerator];
      v12 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(keyEnumerator);
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
          v13 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
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
@interface AEWrappedAssetsDataSource
- (AEWrappedAssetsDataSource)initWithReviewAssetsDataSource:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
@end

@implementation AEWrappedAssetsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v15.receiver = self;
  v15.super_class = AEWrappedAssetsDataSource;
  [(PXSimpleIndexPath *)&v15 indexPathForObjectReference:v6];
  if (retstr->dataSourceIdentifier == *MEMORY[0x277D3CF78])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 itemObject];
      v8 = [(AEWrappedAssetsDataSource *)self _reviewAssetsDataSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v7 identifier];
          v11 = [v9 indexPathForAssetWithIdentifier:v10];

          [(AEWrappedAssetsDataSource *)self identifier];
          PXSimpleIndexPathFromIndexPath();
          *&retstr->dataSourceIdentifier = v13;
          *&retstr->item = v14;
        }
      }
    }
  }

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(AEWrappedAssetsDataSource *)self _reviewAssetsDataSource];
  v8 = *a3;
  v5 = PXIndexPathFromSimpleIndexPath();
  v6 = [v4 assetAtIndexPath:{v5, *&v8.dataSourceIdentifier, *&v8.item}];

  return v6;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(AEWrappedAssetsDataSource *)self _reviewAssetsDataSource];
  v4 = [objc_alloc(MEMORY[0x277CCAA70]) initWithIndex:0];
  v5 = [v3 numberOfSubItemsAtIndexPath:v4];

  return v5;
}

- (int64_t)numberOfSections
{
  v2 = [(AEWrappedAssetsDataSource *)self _reviewAssetsDataSource];
  v3 = objc_alloc_init(MEMORY[0x277CCAA70]);
  v4 = [v2 numberOfSubItemsAtIndexPath:v3];

  return v4;
}

- (AEWrappedAssetsDataSource)initWithReviewAssetsDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEWrappedAssetsDataSource;
  v6 = [(AEWrappedAssetsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__reviewAssetsDataSource, a3);
  }

  return v7;
}

@end
@interface AEWrappedDataSourceManager
- (void)_createDataSourceFromAssetsDataSource:(id)a3 changeDetails:(id)a4;
- (void)attachDataSourceManager:(id)a3;
- (void)detachCurrentDataSourceManager;
@end

@implementation AEWrappedDataSourceManager

- (void)_createDataSourceFromAssetsDataSource:(id)a3 changeDetails:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(PXSectionedDataSourceManager *)self dataSource];
  v9 = [[AEWrappedAssetsDataSource alloc] initWithReviewAssetsDataSource:v7];

  if (!v6)
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v17 = &unk_2852F9590;
  v18[0] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [v8 identifier];
LABEL_6:
  v12 = [(AEWrappedAssetsDataSource *)v9 identifier];
  v13 = objc_alloc(MEMORY[0x277D3CDD0]);
  v14 = [MEMORY[0x277D3CCC8] changeDetailsWithNoChanges];
  v15 = [v13 initWithFromDataSourceIdentifier:v11 toDataSourceIdentifier:v12 sectionChanges:v14 itemChangeDetailsBySection:v10 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)detachCurrentDataSourceManager
{
  v3 = [(AEWrappedDataSourceManager *)self _attachedDataSourceManager];
  [v3 setDelegate:0];
  [(AEWrappedDataSourceManager *)self _setAttachedDataSourceManager:0];
}

- (void)attachDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = [v4 assetsDataSource];
  [(AEWrappedDataSourceManager *)self _createDataSourceFromAssetsDataSource:v5 changeDetails:0];
  [(AEWrappedDataSourceManager *)self _setAttachedDataSourceManager:v4];
  [v4 setDelegate:self];
  [v4 setReviewDelegate:self];
}

@end
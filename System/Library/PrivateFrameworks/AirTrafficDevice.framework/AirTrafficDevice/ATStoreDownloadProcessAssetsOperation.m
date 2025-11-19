@interface ATStoreDownloadProcessAssetsOperation
- (ATStoreDownloadProcessAssetsOperation)initWithAsset:(id)a3 assetsOperationResult:(id)a4;
- (void)execute;
@end

@implementation ATStoreDownloadProcessAssetsOperation

- (void)execute
{
  v3 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v3];
}

- (ATStoreDownloadProcessAssetsOperation)initWithAsset:(id)a3 assetsOperationResult:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATStoreDownloadProcessAssetsOperation;
  v8 = [(ATStoreDownloadOperation *)&v11 initWithAsset:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetsOperationResult, a4);
  }

  return v9;
}

@end
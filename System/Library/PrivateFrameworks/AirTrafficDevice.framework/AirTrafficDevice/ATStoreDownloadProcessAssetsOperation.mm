@interface ATStoreDownloadProcessAssetsOperation
- (ATStoreDownloadProcessAssetsOperation)initWithAsset:(id)asset assetsOperationResult:(id)result;
- (void)execute;
@end

@implementation ATStoreDownloadProcessAssetsOperation

- (void)execute
{
  v3 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v3];
}

- (ATStoreDownloadProcessAssetsOperation)initWithAsset:(id)asset assetsOperationResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = ATStoreDownloadProcessAssetsOperation;
  v8 = [(ATStoreDownloadOperation *)&v11 initWithAsset:asset];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetsOperationResult, result);
  }

  return v9;
}

@end
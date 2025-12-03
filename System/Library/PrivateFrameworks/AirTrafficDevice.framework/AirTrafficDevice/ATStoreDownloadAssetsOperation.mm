@interface ATStoreDownloadAssetsOperation
- (ATStoreDownloadAssetsOperation)initWithAsset:(id)asset prepareOperationResult:(id)result;
- (void)execute;
@end

@implementation ATStoreDownloadAssetsOperation

- (void)execute
{
  v3 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v3];
}

- (ATStoreDownloadAssetsOperation)initWithAsset:(id)asset prepareOperationResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = ATStoreDownloadAssetsOperation;
  v8 = [(ATStoreDownloadOperation *)&v11 initWithAsset:asset];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_prepareOperationResult, result);
  }

  return v9;
}

@end
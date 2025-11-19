@interface ATStoreDownloadAssetsOperation
- (ATStoreDownloadAssetsOperation)initWithAsset:(id)a3 prepareOperationResult:(id)a4;
- (void)execute;
@end

@implementation ATStoreDownloadAssetsOperation

- (void)execute
{
  v3 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v3];
}

- (ATStoreDownloadAssetsOperation)initWithAsset:(id)a3 prepareOperationResult:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATStoreDownloadAssetsOperation;
  v8 = [(ATStoreDownloadOperation *)&v11 initWithAsset:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_prepareOperationResult, a4);
  }

  return v9;
}

@end
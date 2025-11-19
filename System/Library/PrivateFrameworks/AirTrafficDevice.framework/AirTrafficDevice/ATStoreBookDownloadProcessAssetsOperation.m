@interface ATStoreBookDownloadProcessAssetsOperation
- (void)execute;
@end

@implementation ATStoreBookDownloadProcessAssetsOperation

- (void)execute
{
  v5 = objc_alloc_init(ATStoreDownloadOperationResult);
  v3 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
  v4 = [v3 downloadFilePath];
  [(ATStoreDownloadOperationResult *)v5 setDownloadFilePath:v4];

  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v5];
}

@end
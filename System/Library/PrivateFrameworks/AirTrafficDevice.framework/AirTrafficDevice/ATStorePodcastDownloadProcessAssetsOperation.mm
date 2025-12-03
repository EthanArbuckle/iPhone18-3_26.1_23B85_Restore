@interface ATStorePodcastDownloadProcessAssetsOperation
- (void)execute;
@end

@implementation ATStorePodcastDownloadProcessAssetsOperation

- (void)execute
{
  v5 = objc_alloc_init(ATStoreDownloadOperationResult);
  assetsOperationResult = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
  downloadFilePath = [assetsOperationResult downloadFilePath];
  [(ATStoreDownloadOperationResult *)v5 setDownloadFilePath:downloadFilePath];

  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v5];
}

@end
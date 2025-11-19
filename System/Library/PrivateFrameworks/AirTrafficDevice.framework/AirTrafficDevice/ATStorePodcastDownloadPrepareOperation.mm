@interface ATStorePodcastDownloadPrepareOperation
- (void)execute;
@end

@implementation ATStorePodcastDownloadPrepareOperation

- (void)execute
{
  v3 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperation *)self finishWithError:0 operationResult:v3];
}

@end
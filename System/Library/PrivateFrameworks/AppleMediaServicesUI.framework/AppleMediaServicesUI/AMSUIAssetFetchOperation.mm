@interface AMSUIAssetFetchOperation
- (void)_finishWithImage:(id)image error:(id)error;
- (void)cancel;
- (void)main;
- (void)setQueuePriority:(int64_t)priority;
@end

@implementation AMSUIAssetFetchOperation

- (void)setQueuePriority:(int64_t)priority
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSUIAssetFetchOperation;
  queuePriority = [(AMSUIAssetFetchOperation *)&v12 queuePriority];
  v11.receiver = self;
  v11.super_class = AMSUIAssetFetchOperation;
  [(AMSUIAssetFetchOperation *)&v11 setQueuePriority:priority];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v13[0] = @"oldPriority";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:queuePriority];
  v13[1] = @"newPriority";
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:self userInfo:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)main
{
  v3 = AMSError();
  [(AMSUIAssetFetchOperation *)self _finishWithImage:0 error:v3];
}

- (void)cancel
{
  [(AMSUIAssetFetchOperation *)self setOperationPromise:0];
  v4.receiver = self;
  v4.super_class = AMSUIAssetFetchOperation;
  [(AMSUIAssetFetchOperation *)&v4 cancel];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:self];
}

- (void)_finishWithImage:(id)image error:(id)error
{
  imageCopy = image;
  errorCopy = error;
  if (([(AMSUIAssetFetchOperation *)self isCancelled]& 1) == 0)
  {
    operationPromise = [(AMSUIAssetFetchOperation *)self operationPromise];

    if (operationPromise)
    {
      operationPromise2 = [(AMSUIAssetFetchOperation *)self operationPromise];
      [operationPromise2 finishWithResult:imageCopy error:errorCopy];
    }

    [(AMSUIAssetFetchOperation *)self setOperationPromise:0];
  }
}

@end
@interface AMSUIAssetFetchOperation
- (void)_finishWithImage:(id)a3 error:(id)a4;
- (void)cancel;
- (void)main;
- (void)setQueuePriority:(int64_t)a3;
@end

@implementation AMSUIAssetFetchOperation

- (void)setQueuePriority:(int64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSUIAssetFetchOperation;
  v5 = [(AMSUIAssetFetchOperation *)&v12 queuePriority];
  v11.receiver = self;
  v11.super_class = AMSUIAssetFetchOperation;
  [(AMSUIAssetFetchOperation *)&v11 setQueuePriority:a3];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v13[0] = @"oldPriority";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v13[1] = @"newPriority";
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v6 postNotificationName:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:self userInfo:v9];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:self];
}

- (void)_finishWithImage:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (([(AMSUIAssetFetchOperation *)self isCancelled]& 1) == 0)
  {
    v7 = [(AMSUIAssetFetchOperation *)self operationPromise];

    if (v7)
    {
      v8 = [(AMSUIAssetFetchOperation *)self operationPromise];
      [v8 finishWithResult:v9 error:v6];
    }

    [(AMSUIAssetFetchOperation *)self setOperationPromise:0];
  }
}

@end
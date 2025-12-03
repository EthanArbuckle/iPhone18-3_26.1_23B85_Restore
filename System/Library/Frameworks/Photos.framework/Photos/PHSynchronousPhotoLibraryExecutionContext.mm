@interface PHSynchronousPhotoLibraryExecutionContext
+ (PHSynchronousPhotoLibraryExecutionContext)synchronousExecutionContext;
- (void)callTransactionCompletionHandler:(id)handler withSuccess:(BOOL)success error:(id)error;
- (void)sendChangesRequest:(id)request onClient:(id)client reply:(id)reply;
@end

@implementation PHSynchronousPhotoLibraryExecutionContext

- (void)callTransactionCompletionHandler:(id)handler withSuccess:(BOOL)success error:(id)error
{
  if (handler)
  {
    (*(handler + 2))(handler, success, error);
  }
}

- (void)sendChangesRequest:(id)request onClient:(id)client reply:(id)reply
{
  v10 = 0;
  replyCopy = reply;
  v8 = [client sendChangesRequest:request error:&v10];
  v9 = v10;
  replyCopy[2](replyCopy, v8, v9);
}

+ (PHSynchronousPhotoLibraryExecutionContext)synchronousExecutionContext
{
  v2 = objc_alloc_init(PHSynchronousPhotoLibraryExecutionContext);

  return v2;
}

@end
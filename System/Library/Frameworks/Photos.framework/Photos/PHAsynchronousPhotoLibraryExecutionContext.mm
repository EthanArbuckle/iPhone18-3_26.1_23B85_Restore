@interface PHAsynchronousPhotoLibraryExecutionContext
+ (PHAsynchronousPhotoLibraryExecutionContext)asynchronousExecutionContext;
- (void)callTransactionCompletionHandler:(id)handler withSuccess:(BOOL)success error:(id)error;
@end

@implementation PHAsynchronousPhotoLibraryExecutionContext

- (void)callTransactionCompletionHandler:(id)handler withSuccess:(BOOL)success error:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  if (handlerCopy)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v10 = handlerCopy;
    v9 = errorCopy;
    pl_dispatch_async();
  }
}

+ (PHAsynchronousPhotoLibraryExecutionContext)asynchronousExecutionContext
{
  v2 = objc_alloc_init(PHAsynchronousPhotoLibraryExecutionContext);

  return v2;
}

@end
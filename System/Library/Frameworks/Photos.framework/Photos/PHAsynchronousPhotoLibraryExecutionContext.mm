@interface PHAsynchronousPhotoLibraryExecutionContext
+ (PHAsynchronousPhotoLibraryExecutionContext)asynchronousExecutionContext;
- (void)callTransactionCompletionHandler:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
@end

@implementation PHAsynchronousPhotoLibraryExecutionContext

- (void)callTransactionCompletionHandler:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (v6)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v10 = v6;
    v9 = v7;
    pl_dispatch_async();
  }
}

+ (PHAsynchronousPhotoLibraryExecutionContext)asynchronousExecutionContext
{
  v2 = objc_alloc_init(PHAsynchronousPhotoLibraryExecutionContext);

  return v2;
}

@end
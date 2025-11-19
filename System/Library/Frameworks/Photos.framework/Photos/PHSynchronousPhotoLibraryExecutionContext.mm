@interface PHSynchronousPhotoLibraryExecutionContext
+ (PHSynchronousPhotoLibraryExecutionContext)synchronousExecutionContext;
- (void)callTransactionCompletionHandler:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)sendChangesRequest:(id)a3 onClient:(id)a4 reply:(id)a5;
@end

@implementation PHSynchronousPhotoLibraryExecutionContext

- (void)callTransactionCompletionHandler:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a4, a5);
  }
}

- (void)sendChangesRequest:(id)a3 onClient:(id)a4 reply:(id)a5
{
  v10 = 0;
  v7 = a5;
  v8 = [a4 sendChangesRequest:a3 error:&v10];
  v9 = v10;
  v7[2](v7, v8, v9);
}

+ (PHSynchronousPhotoLibraryExecutionContext)synchronousExecutionContext
{
  v2 = objc_alloc_init(PHSynchronousPhotoLibraryExecutionContext);

  return v2;
}

@end
@interface FPFetchRegularItemThumbnailsOperation
- (FPFetchRegularItemThumbnailsOperation)initWithDictionary:(id)a3 desiredSizeToScale:(CGSize)a4 itemManager:(id)a5;
- (FPOperationProgressDelegate)delegate;
- (void)main;
- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5;
@end

@implementation FPFetchRegularItemThumbnailsOperation

- (FPFetchRegularItemThumbnailsOperation)initWithDictionary:(id)a3 desiredSizeToScale:(CGSize)a4 itemManager:(id)a5
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  v13 = [v11 allKeys];
  v14 = [v13 copy];

  v15 = [v14 count];
  if (v12 && v15 && width >= 1.0 && height >= 1.0)
  {
    v24.receiver = self;
    v24.super_class = FPFetchRegularItemThumbnailsOperation;
    v16 = [(FPOperation *)&v24 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_dictionary, a3);
      v17->_desiredSizeToScale.width = width;
      v17->_desiredSizeToScale.height = height;
      objc_storeStrong(&v17->_itemManager, a5);
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = [v11 allKeys];
    v25.width = width;
    v25.height = height;
    v22 = NSStringFromSize(v25);
    [v19 handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:206 description:{@"invalid parameter to initialize %@ (regularItems:%@, desiredSizeToScale:%@, itemManager:%@)", v20, v21, v22, v12}];

    v18 = 0;
  }

  return v18;
}

- (void)main
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 304) allKeys];
  v2 = [v1 fp_shortDescriptionExpandingAtMost:4];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__FPFetchRegularItemThumbnailsOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v7 = *(a1 + 32);

    [v7 completedWithResult:0 error:a3];
  }

  else
  {
    v4 = [a2 remoteObjectProxy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 304);
    [v4 startOperation:*(v5 + 312) toFetchThumbnailsWithDictionary:*(v5 + 320) size:? completionHandler:?];
  }
}

- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(FPFetchRegularItemThumbnailsOperation *)self delegate];
  [v10 operation:self didReceiveProgressInfo:v9 error:v8];

  v11[2]();
}

- (FPOperationProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
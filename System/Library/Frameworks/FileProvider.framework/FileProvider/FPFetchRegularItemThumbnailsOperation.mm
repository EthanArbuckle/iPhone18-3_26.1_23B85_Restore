@interface FPFetchRegularItemThumbnailsOperation
- (FPFetchRegularItemThumbnailsOperation)initWithDictionary:(id)dictionary desiredSizeToScale:(CGSize)scale itemManager:(id)manager;
- (FPOperationProgressDelegate)delegate;
- (void)main;
- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler;
@end

@implementation FPFetchRegularItemThumbnailsOperation

- (FPFetchRegularItemThumbnailsOperation)initWithDictionary:(id)dictionary desiredSizeToScale:(CGSize)scale itemManager:(id)manager
{
  height = scale.height;
  width = scale.width;
  dictionaryCopy = dictionary;
  managerCopy = manager;
  allKeys = [dictionaryCopy allKeys];
  v14 = [allKeys copy];

  v15 = [v14 count];
  if (managerCopy && v15 && width >= 1.0 && height >= 1.0)
  {
    v24.receiver = self;
    v24.super_class = FPFetchRegularItemThumbnailsOperation;
    v16 = [(FPOperation *)&v24 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_dictionary, dictionary);
      v17->_desiredSizeToScale.width = width;
      v17->_desiredSizeToScale.height = height;
      objc_storeStrong(&v17->_itemManager, manager);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    allKeys2 = [dictionaryCopy allKeys];
    v25.width = width;
    v25.height = height;
    v22 = NSStringFromSize(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:206 description:{@"invalid parameter to initialize %@ (regularItems:%@, desiredSizeToScale:%@, itemManager:%@)", v20, allKeys2, v22, managerCopy}];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)main
{
  v9 = *MEMORY[0x1E69E9840];
  allKeys = [*(self + 304) allKeys];
  v2 = [allKeys fp_shortDescriptionExpandingAtMost:4];
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

- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  infoCopy = info;
  delegate = [(FPFetchRegularItemThumbnailsOperation *)self delegate];
  [delegate operation:self didReceiveProgressInfo:infoCopy error:errorCopy];

  handlerCopy[2]();
}

- (FPOperationProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
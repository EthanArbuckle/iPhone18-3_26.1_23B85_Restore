@interface _LSOpenResourceOperationDelegateWrapper
- (_LSOpenResourceOperationDelegateWrapper)initWithOperation:(id)operation wrappedDelegate:(id)delegate;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation _LSOpenResourceOperationDelegateWrapper

- (_LSOpenResourceOperationDelegateWrapper)initWithOperation:(id)operation wrappedDelegate:(id)delegate
{
  operationCopy = operation;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _LSOpenResourceOperationDelegateWrapper;
  v8 = [(_LSOpenResourceOperationDelegateWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_operation, operationCopy);
    objc_storeStrong(&v9->_delegate, delegate);
  }

  return v9;
}

- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource
{
  operationCopy = operation;
  resourceCopy = resource;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperation:WeakRetained didFinishCopyingResource:resourceCopy];
  }
}

- (void)openResourceOperationDidComplete:(id)complete
{
  completeCopy = complete;
  if (self->_delegate)
  {
    v7 = completeCopy;
    v5 = objc_opt_respondsToSelector();
    completeCopy = v7;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_operation);
      [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperationDidComplete:WeakRetained];

      completeCopy = v7;
    }
  }
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LSOpenResourceOperationDelegateWrapper openResourceOperation:didFailWithError:];
    }

    [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperation:WeakRetained didFailWithError:errorCopy];
  }
}

- (void)openResourceOperation:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
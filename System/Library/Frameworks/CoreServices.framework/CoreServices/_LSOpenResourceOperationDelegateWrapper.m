@interface _LSOpenResourceOperationDelegateWrapper
- (_LSOpenResourceOperationDelegateWrapper)initWithOperation:(id)a3 wrappedDelegate:(id)a4;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation _LSOpenResourceOperationDelegateWrapper

- (_LSOpenResourceOperationDelegateWrapper)initWithOperation:(id)a3 wrappedDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _LSOpenResourceOperationDelegateWrapper;
  v8 = [(_LSOpenResourceOperationDelegateWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_operation, v6);
    objc_storeStrong(&v9->_delegate, a4);
  }

  return v9;
}

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperation:WeakRetained didFinishCopyingResource:v6];
  }
}

- (void)openResourceOperationDidComplete:(id)a3
{
  v4 = a3;
  if (self->_delegate)
  {
    v7 = v4;
    v5 = objc_opt_respondsToSelector();
    v4 = v7;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_operation);
      [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperationDidComplete:WeakRetained];

      v4 = v7;
    }
  }
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LSOpenResourceOperationDelegateWrapper openResourceOperation:didFailWithError:];
    }

    [(LSOpenResourceOperationDelegate *)self->_delegate openResourceOperation:WeakRetained didFailWithError:v7];
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
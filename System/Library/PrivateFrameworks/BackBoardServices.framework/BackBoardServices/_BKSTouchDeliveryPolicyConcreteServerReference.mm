@interface _BKSTouchDeliveryPolicyConcreteServerReference
- (void)ipc_addPolicy:(id)a3;
@end

@implementation _BKSTouchDeliveryPolicyConcreteServerReference

- (void)ipc_addPolicy:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 classForCoder];
      if (!v10)
      {
        v10 = objc_opt_class();
      }

      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"policy", v11, v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v19 = v15;
        v20 = 2114;
        v21 = v17;
        v22 = 2048;
        v23 = self;
        v24 = 2114;
        v25 = @"BKSTouchDeliveryPolicyServerInterface.m";
        v26 = 1024;
        v27 = 50;
        v28 = 2114;
        v29 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186360628);
    }
  }

  v6 = BKLogTouchDeliveryPolicy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "TDPS client ipc_addPolicy:%{public}@", buf, 0xCu);
  }

  if (v5)
  {
    v7 = [(NSXPCConnection *)self->_server->_connection remoteObjectProxyWithErrorHandler:self->_errorHandler];
    [v7 ipc_addPolicy:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end
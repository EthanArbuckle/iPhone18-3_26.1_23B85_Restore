@interface FPExceptionToErrorProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (FPExceptionToErrorProxy)initWithTarget:(id)a3;
- (id)errorFromException:(id)a3 whileSendingToSelector:(SEL)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation FPExceptionToErrorProxy

- (FPExceptionToErrorProxy)initWithTarget:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPExceptionToErrorProxy;
  v6 = [(FPExceptionToErrorProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, a3);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [self->_target methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = FPExceptionToErrorProxy;
    v7 = [(FPExceptionToErrorProxy *)&v10 methodSignatureForSelector:a3];
  }

  v8 = v7;

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  target = self->_target;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = FPExceptionToErrorProxy;
  return [(FPExceptionToErrorProxy *)&v7 respondsToSelector:a3];
}

- (id)errorFromException:(id)a3 whileSendingToSelector:(SEL)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 debugDescription];
  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];

  v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_61];
  if (v10 < 2 || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v6 debugDescription];
  }

  else
  {
    v12 = [v9 subarrayWithRange:{0, v10 - 2}];
    v13 = [v12 arrayByAddingObject:@""]);

    v14 = [v13 componentsJoinedByString:@"\n"];
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = NSStringFromSelector(a4);
  v17 = [v15 stringWithFormat:@"Exception caught sending %@ to %@:\n%@", v16, self->_target, v14];

  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A250];
  v24 = *MEMORY[0x1E696A278];
  v25[0] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v21 = [v18 errorWithDomain:v19 code:4099 userInfo:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)forwardInvocation:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  __FP_EXCEPTION_TO_ERROR_PROXY_CALLING_OUT__(v4, self->_target);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __45__FPExceptionToErrorProxy_forwardInvocation___block_invoke()
{
  v0 = os_log_create("com.apple.FileProvider", "exceptions");
  v1 = forwardInvocation__exceptionLog;
  forwardInvocation__exceptionLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)forwardInvocation:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_FAULT, "[CRIT] %@", buf, 0xCu);
}

@end
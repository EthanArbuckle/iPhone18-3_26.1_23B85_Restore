@interface EKObjectValidationContext
- (EKObjectValidationContext)initWithRootObject:(id)a3;
- (void)faultIfNeededForObject:(id)a3;
@end

@implementation EKObjectValidationContext

- (EKObjectValidationContext)initWithRootObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKObjectValidationContext;
  v6 = [(EKObjectValidationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, a3);
  }

  return v7;
}

- (void)faultIfNeededForObject:(id)a3
{
  v4 = a3;
  if ([(EKObjectValidationContext *)self reachedMaxDepth])
  {
    v5 = [(EKObjectValidationContext *)self rootObject];

    if (v5 == v4)
    {
      v6 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
      {
        [(EKObjectValidationContext *)v6 faultIfNeededForObject:v4];
      }
    }
  }
}

- (void)faultIfNeededForObject:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 privacyDescription];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A805E000, v3, OS_LOG_TYPE_FAULT, "Reached maximum depth while validating root object %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end
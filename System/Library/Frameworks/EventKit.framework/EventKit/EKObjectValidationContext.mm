@interface EKObjectValidationContext
- (EKObjectValidationContext)initWithRootObject:(id)object;
- (void)faultIfNeededForObject:(id)object;
@end

@implementation EKObjectValidationContext

- (EKObjectValidationContext)initWithRootObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = EKObjectValidationContext;
  v6 = [(EKObjectValidationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, object);
  }

  return v7;
}

- (void)faultIfNeededForObject:(id)object
{
  objectCopy = object;
  if ([(EKObjectValidationContext *)self reachedMaxDepth])
  {
    rootObject = [(EKObjectValidationContext *)self rootObject];

    if (rootObject == objectCopy)
    {
      v6 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
      {
        [(EKObjectValidationContext *)v6 faultIfNeededForObject:objectCopy];
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
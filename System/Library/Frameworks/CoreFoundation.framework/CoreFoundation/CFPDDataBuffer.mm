@interface CFPDDataBuffer
+ (id)newBufferFromCFData:(__CFData *)data;
+ (id)newBufferFromPropertyList:(void *)list;
- (BOOL)validatePlist;
- (__CFData)copyCFData;
- (id)copyXPCData;
- (void)copyPropertyListWithMutability:(unint64_t)mutability error:(__CFError *)error;
- (void)quicklyValidatePlistAndOnFailureInvokeBlock:(id)block;
@end

@implementation CFPDDataBuffer

- (BOOL)validatePlist
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, [(CFPDDataBuffer *)self bytes], [(CFPDDataBuffer *)self length], &__kCFAllocatorNull);
  v7[0] = 0;
  v3 = _CFPropertyListValidateData(v2, v7);
  if (v7[0] == 18)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyXPCData
{
  bytes = [(CFPDDataBuffer *)self bytes];
  v4 = [(CFPDDataBuffer *)self length];

  return xpc_data_create(bytes, v4);
}

+ (id)newBufferFromCFData:(__CFData *)data
{
  v4 = [CFPDCFDataBuffer alloc];

  return [(CFPDCFDataBuffer *)v4 initWithCFData:data];
}

+ (id)newBufferFromPropertyList:(void *)list
{
  v4 = [CFPDPurgeableBuffer alloc];

  return [(CFPDPurgeableBuffer *)v4 initWithPropertyList:list];
}

- (__CFData)copyCFData
{
  bytes = [(CFPDDataBuffer *)self bytes];
  v4 = [(CFPDDataBuffer *)self length];

  return CFDataCreate(&__kCFAllocatorSystemDefault, bytes, v4);
}

- (void)copyPropertyListWithMutability:(unint64_t)mutability error:(__CFError *)error
{
  v6 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, [(CFPDDataBuffer *)self bytes], [(CFPDDataBuffer *)self length], &__kCFAllocatorNull);
  v7 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v6, mutability, 0, error);
  CFRelease(v6);
  if (v7 && CFGetTypeID(v7) != 18)
  {
    v8 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CFPDDataBuffer copyPropertyListWithMutability:v8 error:?];
    }

    CFRelease(v7);
    v7 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v7;
}

- (void)quicklyValidatePlistAndOnFailureInvokeBlock:(id)block
{
  if ([(CFPDDataBuffer *)self length]< 8 || (v5 = [(CFPDDataBuffer *)self bytes], strncmp(v5, "bplist00", 8uLL)) && strncmp(v5, "<?xml", 5uLL))
  {
    (*(block + 2))(block);
    v6 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, [(CFPDDataBuffer *)self bytes], [(CFPDDataBuffer *)self length], &__kCFAllocatorNull);
    if (os_variant_has_internal_diagnostics())
    {
      v7 = os_log_create("com.apple.defaults", "diagnostics");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CFPDDataBuffer *)v6 quicklyValidatePlistAndOnFailureInvokeBlock:v7];
      }
    }

    CFRelease(v6);
  }
}

- (void)copyPropertyListWithMutability:(os_log_t)log error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Found non-dictionary property list, which is invalid for preferences. Ignoring it.", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)quicklyValidatePlistAndOnFailureInvokeBlock:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "bad plist data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
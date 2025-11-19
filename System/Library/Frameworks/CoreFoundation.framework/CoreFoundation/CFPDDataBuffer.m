@interface CFPDDataBuffer
+ (id)newBufferFromCFData:(__CFData *)a3;
+ (id)newBufferFromPropertyList:(void *)a3;
- (BOOL)validatePlist;
- (__CFData)copyCFData;
- (id)copyXPCData;
- (void)copyPropertyListWithMutability:(unint64_t)a3 error:(__CFError *)a4;
- (void)quicklyValidatePlistAndOnFailureInvokeBlock:(id)a3;
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
  v3 = [(CFPDDataBuffer *)self bytes];
  v4 = [(CFPDDataBuffer *)self length];

  return xpc_data_create(v3, v4);
}

+ (id)newBufferFromCFData:(__CFData *)a3
{
  v4 = [CFPDCFDataBuffer alloc];

  return [(CFPDCFDataBuffer *)v4 initWithCFData:a3];
}

+ (id)newBufferFromPropertyList:(void *)a3
{
  v4 = [CFPDPurgeableBuffer alloc];

  return [(CFPDPurgeableBuffer *)v4 initWithPropertyList:a3];
}

- (__CFData)copyCFData
{
  v3 = [(CFPDDataBuffer *)self bytes];
  v4 = [(CFPDDataBuffer *)self length];

  return CFDataCreate(&__kCFAllocatorSystemDefault, v3, v4);
}

- (void)copyPropertyListWithMutability:(unint64_t)a3 error:(__CFError *)a4
{
  v6 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, [(CFPDDataBuffer *)self bytes], [(CFPDDataBuffer *)self length], &__kCFAllocatorNull);
  v7 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v6, a3, 0, a4);
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
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v7;
}

- (void)quicklyValidatePlistAndOnFailureInvokeBlock:(id)a3
{
  if ([(CFPDDataBuffer *)self length]< 8 || (v5 = [(CFPDDataBuffer *)self bytes], strncmp(v5, "bplist00", 8uLL)) && strncmp(v5, "<?xml", 5uLL))
  {
    (*(a3 + 2))(a3);
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
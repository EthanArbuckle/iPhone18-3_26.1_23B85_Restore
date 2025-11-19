@interface BSXPCDecodeObject
@end

@implementation BSXPCDecodeObject

BOOL ___BSXPCDecodeObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = _BSXPCDecodeObjectFromContext(*(a1 + 32), a3, 0, *(a1 + 48), 0);
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = BSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218242;
      v10 = a2;
      v11 = 2112;
      v12 = a3;
      _os_log_error_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_ERROR, "Array element %zu failed to decode: %@", &v9, 0x16u);
    }
  }

  return v6 != 0;
}

BOOL ___BSXPCDecodeObject_block_invoke_311(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = _BSXPCDecodeObjectForKey(*(a1 + 32), v3, *(a1 + 56), 0);
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  return v4 != 0;
}

@end
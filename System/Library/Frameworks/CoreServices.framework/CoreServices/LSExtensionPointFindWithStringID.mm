@interface LSExtensionPointFindWithStringID
@end

@implementation LSExtensionPointFindWithStringID

void ___LSExtensionPointFindWithStringID_block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = _LSGetExtensionPointData(*(a1 + 32), a3);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 44) == *(a1 + 56))
    {
      v9 = *(a1 + 60);
      if (v9)
      {
        if (*(v7 + 56) != v9)
        {
          return;
        }
      }

      else
      {
        v10 = _LSDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          ___LSExtensionPointFindWithStringID_block_invoke_cold_1(a3, v10);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = a3;
      *(*(*(a1 + 48) + 8) + 24) = v8;
      *a4 = 1;
    }
  }
}

void ___LSExtensionPointFindWithStringID_block_invoke_1(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (a3[10] == *(a1 + 48) && a3[11] == *(a1 + 52))
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      if (a3[14] != v9)
      {
        return;
      }
    }

    else
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        ___LSExtensionPointFindWithStringID_block_invoke_cold_1(a2, v10);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a5 = 1;
  }
}

void ___LSExtensionPointFindWithStringID_block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "No extension point parent specified, returning first extension point found id: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end
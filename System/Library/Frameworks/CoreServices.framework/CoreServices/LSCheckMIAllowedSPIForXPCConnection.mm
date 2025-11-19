@interface LSCheckMIAllowedSPIForXPCConnection
@end

@implementation LSCheckMIAllowedSPIForXPCConnection

uint64_t ___LSCheckMIAllowedSPIForXPCConnection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v6 = *(a1 + 40);
    string_ptr = xpc_string_get_string_ptr(v4);
    v8 = strcmp(v6, string_ptr);
    v5 = 1;
    if (!v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end
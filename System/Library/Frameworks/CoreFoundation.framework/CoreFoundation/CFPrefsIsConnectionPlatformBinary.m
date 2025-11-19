@interface CFPrefsIsConnectionPlatformBinary
@end

@implementation CFPrefsIsConnectionPlatformBinary

uint64_t ___CFPrefsIsConnectionPlatformBinary_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 53);
  if (v3 == 255)
  {
    v5 = *(result + 32);
    xpc_connection_get_audit_token();
    xpc_connection_get_pid(*(v2 + 32));
    result = csops_audittoken();
    if (!result)
    {
      *(*(*(v2 + 40) + 8) + 24) = 0;
    }

    *(a2 + 53) = *(*(*(v2 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = v3 != 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end
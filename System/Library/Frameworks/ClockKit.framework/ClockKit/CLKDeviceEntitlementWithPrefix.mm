@interface CLKDeviceEntitlementWithPrefix
@end

@implementation CLKDeviceEntitlementWithPrefix

uint64_t ___CLKDeviceEntitlementWithPrefix_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = 1;
  v7 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:1];
  v8 = [v7 hasPrefix:a1[4]];
  if (v5 && v8)
  {
    if (MEMORY[0x2383C4E30](v5) == MEMORY[0x277D86448])
    {
      v6 = 1;
      if (xpc_BOOL_get_value(v5))
      {
        *(*(a1[5] + 8) + 24) = 1;
        objc_storeStrong((*(a1[6] + 8) + 40), v7);
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

@end
@interface IPv4InterfaceAddressesChanged
@end

@implementation IPv4InterfaceAddressesChanged

void __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke(uint64_t a1, const void *a2)
{
  if (APSCFStringToSockAddr())
  {
    __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke_cold_1();
  }

  else
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), a2);
  }
}

uint64_t __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1[177];
  v3 = v1[64];
  LODWORD(v1) = v1[112];
  v5 = *(a1 + 40);
  return OUTLINED_FUNCTION_7_0();
}

@end
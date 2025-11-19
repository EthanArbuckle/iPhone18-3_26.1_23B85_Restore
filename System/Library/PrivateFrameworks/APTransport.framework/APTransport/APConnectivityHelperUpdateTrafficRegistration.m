@interface APConnectivityHelperUpdateTrafficRegistration
@end

@implementation APConnectivityHelperUpdateTrafficRegistration

uint64_t ___APConnectivityHelperUpdateTrafficRegistration_block_invoke(void *a1)
{
  result = [*(a1[7] + 48) setAWDLPeerTrafficRegistration:a1[4] error:*(a1[6] + 8) + 40];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

@end
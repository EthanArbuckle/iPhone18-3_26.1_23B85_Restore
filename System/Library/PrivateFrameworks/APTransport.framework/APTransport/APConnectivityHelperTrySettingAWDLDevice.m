@interface APConnectivityHelperTrySettingAWDLDevice
@end

@implementation APConnectivityHelperTrySettingAWDLDevice

uint64_t ___APConnectivityHelperTrySettingAWDLDevice_block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 40) + 48) "AWDL")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end
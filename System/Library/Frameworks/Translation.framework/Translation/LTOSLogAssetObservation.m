@interface LTOSLogAssetObservation
@end

@implementation LTOSLogAssetObservation

uint64_t ___LTOSLogAssetObservation_block_invoke()
{
  _LTOSLogAssetObservation_log = os_log_create("com.apple.Translation", "AssetObservation");

  return MEMORY[0x2821F96F8]();
}

@end
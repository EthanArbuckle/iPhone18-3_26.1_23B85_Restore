@interface CLKTimeFormatData
@end

@implementation CLKTimeFormatData

uint64_t __47___CLKTimeFormatData__timeFormatDataAccessLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = _timeFormatDataAccessLock_accessLock;
  _timeFormatDataAccessLock_accessLock = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
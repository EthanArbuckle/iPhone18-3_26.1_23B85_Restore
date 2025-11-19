@interface InitContext
@end

@implementation InitContext

void __apReceiverFairPlayHelper_InitContext_block_invoke(uint64_t a1)
{
  v3[3] = *MEMORY[0x277D85DE8];
  memset(v3, 0, 24);
  zxcm2Qme0x(0, 0, v3);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    DataToHexCStringEx();
    *(*(*(a1 + 32) + 8) + 24) = XtCqEf5X(0, v3, "/var/mobile/Media/iTunes_Control/iTunes/AirTunes/", &gFairPlayContextID);
  }
}

@end
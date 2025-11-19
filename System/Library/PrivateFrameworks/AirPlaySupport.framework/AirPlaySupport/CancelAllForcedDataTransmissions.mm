@interface CancelAllForcedDataTransmissions
@end

@implementation CancelAllForcedDataTransmissions

uint64_t __protocolDriverSenderAPAT_CancelAllForcedDataTransmissions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 + 104);
  FigSimpleMutexLock();
  v5 = MEMORY[0x277CC0898];
  *(v3 + 148) = *MEMORY[0x277CC0898];
  *(v3 + 164) = *(v5 + 16);
  v6 = *(v3 + 104);

  return FigSimpleMutexUnlock();
}

@end
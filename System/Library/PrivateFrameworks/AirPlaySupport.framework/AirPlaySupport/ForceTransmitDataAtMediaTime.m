@interface ForceTransmitDataAtMediaTime
@end

@implementation ForceTransmitDataAtMediaTime

uint64_t __protocolDriverSenderAPAT_ForceTransmitDataAtMediaTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = *(v3 + 104);
  FigSimpleMutexLock();
  *(v3 + 148) = v7;
  *(v3 + 164) = v8;
  v5 = *(v3 + 104);

  return FigSimpleMutexUnlock();
}

@end
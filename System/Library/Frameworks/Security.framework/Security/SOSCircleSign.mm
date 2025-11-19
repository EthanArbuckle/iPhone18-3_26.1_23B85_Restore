@interface SOSCircleSign
@end

@implementation SOSCircleSign

__CFData *__SOSCircleSign_block_invoke(uint64_t a1, uint64_t a2, const uint8_t *a3)
{
  SOSCircleHashGenAndPeers(*(a1 + 40), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32), a3, *(a1 + 56));
  result = SecKeyCopyRawHashSignature(*(a1 + 40), a3, *(a1 + 64), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
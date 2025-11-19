@interface SOSCircleCopyNextGenSignatureWithPeerAdded
@end

@implementation SOSCircleCopyNextGenSignatureWithPeerAdded

__CFData *__SOSCircleCopyNextGenSignatureWithPeerAdded_block_invoke(uint64_t a1, uint64_t a2, const uint8_t *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  MutableCopy = CFSetCreateMutableCopy(0, 0, *(v6 + 32));
  CFSetAddValue(MutableCopy, v7);
  v10 = sosGenerationCreateOrIncrement(*(v6 + 24));
  SOSCircleHashGenAndPeers(v5, v10, MutableCopy, a3, v8);
  if (v10)
  {
    CFRelease(v10);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  result = SecKeyCopyRawHashSignature(*(a1 + 40), a3, *(a1 + 72), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
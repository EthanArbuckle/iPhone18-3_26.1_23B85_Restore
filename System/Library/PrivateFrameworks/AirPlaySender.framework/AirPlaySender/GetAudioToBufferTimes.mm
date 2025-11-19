@interface GetAudioToBufferTimes
@end

@implementation GetAudioToBufferTimes

__n128 __audioHoseManagerBuffered_GetAudioToBufferTimes_block_invoke(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = a3[4];
  *(v3 + 40) = a3[5].n128_u64[0];
  *(v3 + 24) = result;
  return result;
}

__n128 __audioHoseManagerBuffered_GetAudioToBufferTimes_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v12 = v3;
    v13 = v4;
    v7 = *(*(a1 + 32) + 8);
    time1 = *(a3 + 64);
    v10 = *(v7 + 24);
    if (CMTimeCompare(&time1, &v10) < 0)
    {
      v9 = *(*(a1 + 32) + 8);
      result = *(a3 + 64);
      *(v9 + 40) = *(a3 + 80);
      *(v9 + 24) = result;
    }
  }

  return result;
}

@end
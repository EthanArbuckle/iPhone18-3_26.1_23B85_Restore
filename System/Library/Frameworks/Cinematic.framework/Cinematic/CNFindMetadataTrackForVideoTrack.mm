@interface CNFindMetadataTrackForVideoTrack
@end

@implementation CNFindMetadataTrackForVideoTrack

void ___CNFindMetadataTrackForVideoTrack_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 trackID];
    if (v4 == [*(a1 + 32) trackID])
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

@end
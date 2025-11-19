@interface SendSavedSampleBuffers
@end

@implementation SendSavedSampleBuffers

void __sbcins_SendSavedSampleBuffers_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = (*(*(a1 + 32) + 8))(a2, *(*(a1 + 32) + 16));
    if (v4 == 2)
    {
      v7 = *(a1 + 40);

      CFArrayAppendValue(v7, a2);
    }

    else if (v4 == 1)
    {
      v5 = **(a1 + 32);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {

        v6(v5, a2);
      }
    }
  }
}

@end
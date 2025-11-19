@interface CFFileDescriptorDeallocate
@end

@implementation CFFileDescriptorDeallocate

void ____CFFileDescriptorDeallocate_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = *(a1[6] + 16) == 0;
  if (*(*(a1[4] + 8) + 24))
  {
    *(a1[6] + 16) = 1;
    __dmb(0xBu);
    v2 = a1[6];
    v3 = v2[4];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = a1[6];
      if (*(v4 + 48))
      {
        *(v4 + 48) = 0;
        dispatch_resume(*(v4 + 32));
        v4 = a1[6];
      }

      *(v4 + 32) = 0;
      v2 = a1[6];
    }

    v5 = v2[5];
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = a1[6];
      if (*(v6 + 49))
      {
        *(v6 + 49) = 0;
        dispatch_resume(*(v6 + 40));
        v6 = a1[6];
      }

      *(v6 + 40) = 0;
      v2 = a1[6];
    }

    *(*(a1[5] + 8) + 24) = v2[7];
    *(a1[6] + 56) = 0;
    v7 = atomic_load((a1[6] + 8));
    if ((v7 & 2) != 0)
    {
      shutdown(*(a1[6] + 20), 2);
      v8 = open("/dev/null", 0);
      dup2(v8, *(a1[6] + 20));
      close(v8);
      close(*(a1[6] + 20));
    }

    *(a1[6] + 20) = -1;
  }
}

@end
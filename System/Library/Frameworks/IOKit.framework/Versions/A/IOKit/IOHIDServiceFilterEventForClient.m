@interface IOHIDServiceFilterEventForClient
@end

@implementation IOHIDServiceFilterEventForClient

void ____IOHIDServiceFilterEventForClient_block_invoke(void *a1, uint64_t *a2)
{
  if (*(*(a1[4] + 8) + 24))
  {
    if (a1[6] == *MEMORY[0x1E695E738])
    {
      v3 = 0;
    }

    else
    {
      v3 = a1[6];
    }

    v4 = IOHIDServiceFilterFilterEventForClient(a2, a1[5], v3);
    v5 = a1[4];
    if (v4)
    {
      v6 = *(*(v5 + 8) + 24);
      if (v4 != v6 && v6 != a1[5])
      {
        CFRelease(v6);
        v5 = a1[4];
      }
    }

    *(*(v5 + 8) + 24) = v4;
  }
}

@end
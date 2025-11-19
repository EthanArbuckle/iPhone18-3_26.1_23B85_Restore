@interface IOHIDServiceSetPropertyForClient
@end

@implementation IOHIDServiceSetPropertyForClient

void ___IOHIDServiceSetPropertyForClient_block_invoke(void *a1, void *a2)
{
  v7 = *(*(a1[4] + 8) + 32);
  if (v7)
  {
    v3 = a1[6];
    IOHIDServiceFilterFilterSetPropertyForClient(a2, a1[5], &v7);
    v4 = v7;
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 32);
    if (v7 != v6 && v6 != a1[7])
    {
      CFRelease(v6);
      v4 = v7;
      v5 = *(a1[4] + 8);
    }

    *(v5 + 32) = v4;
  }
}

@end
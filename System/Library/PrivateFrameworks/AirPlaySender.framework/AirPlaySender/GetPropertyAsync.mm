@interface GetPropertyAsync
@end

@implementation GetPropertyAsync

void __vdsink_GetPropertyAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __vdsink_GetPropertyAsync_block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end
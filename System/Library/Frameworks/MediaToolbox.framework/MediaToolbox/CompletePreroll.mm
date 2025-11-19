@interface CompletePreroll
@end

@implementation CompletePreroll

void __customVideoCompositor_CompletePreroll_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(*(v2 + 208), *(a1 + 48), *(a1 + 52));
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end
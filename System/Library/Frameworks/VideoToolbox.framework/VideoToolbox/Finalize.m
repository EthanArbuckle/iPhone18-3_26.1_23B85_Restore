@interface Finalize
@end

@implementation Finalize

void __dssxpc_dscr_Finalize_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end
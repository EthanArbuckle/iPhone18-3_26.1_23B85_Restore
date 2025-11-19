@interface CopyVersionBag
@end

@implementation CopyVersionBag

uint64_t __rcl_CopyVersionBag_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!a2)
  {
    return 0;
  }

  if ([*(a1 + 32) rangeOfString:a2 options:1] == 0x7FFFFFFFFFFFFFFFLL || v7 != objc_msgSend(a2, "length"))
  {
    return 0;
  }

  NSLog(&cfstr_FoundTheMatchF.isa, *(a1 + 32), a2);
  result = 1;
  *a4 = 1;
  return result;
}

@end
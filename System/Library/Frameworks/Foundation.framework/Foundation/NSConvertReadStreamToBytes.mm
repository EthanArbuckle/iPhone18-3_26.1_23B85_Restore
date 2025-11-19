@interface NSConvertReadStreamToBytes
@end

@implementation NSConvertReadStreamToBytes

void ___NSConvertReadStreamToBytes_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E4A8], a2);
  }

  *a3 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

@end
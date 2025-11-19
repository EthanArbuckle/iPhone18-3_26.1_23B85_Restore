@interface ASUIInputValueCallback
@end

@implementation ASUIInputValueCallback

void ___ASUIInputValueCallback_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleMFIButtonDownValue:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end
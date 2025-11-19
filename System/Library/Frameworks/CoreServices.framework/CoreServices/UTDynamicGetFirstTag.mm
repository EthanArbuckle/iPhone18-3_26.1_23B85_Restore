@interface UTDynamicGetFirstTag
@end

@implementation UTDynamicGetFirstTag

void ___UTDynamicGetFirstTag_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:*a5 length:*(a5 + 8) encoding:4];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a6 = 1;
}

@end
@interface AXInitializeElementCache
@end

@implementation AXInitializeElementCache

void ___AXInitializeElementCache_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
  v1 = qword_1ED6551A0;
  qword_1ED6551A0 = v0;

  _ElementCacheLock = 0;
}

@end
@interface LSCopyRationalizedGroupContainerURLDict
@end

@implementation LSCopyRationalizedGroupContainerURLDict

void ___LSCopyRationalizedGroupContainerURLDict_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (_NSIsNSString())
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v5 isDirectory:1];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }
  }
}

@end
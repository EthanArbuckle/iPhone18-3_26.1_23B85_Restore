@interface LSCopyPluginsWithURL
@end

@implementation LSCopyPluginsWithURL

void ___LSCopyPluginsWithURL_block_invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (_LSAliasMatchesPath_NoIO(**(a1 + 48), *a3, *(a1 + 32), 2 * (*(a1 + 56) != 0)))
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v7 = *(*(*(a1 + 40) + 8) + 24);
    }

    CFArrayAppendValue(v7, [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2]);
  }

  objc_autoreleasePoolPop(v6);
}

@end
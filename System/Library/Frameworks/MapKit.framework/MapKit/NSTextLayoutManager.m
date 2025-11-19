@interface NSTextLayoutManager
@end

@implementation NSTextLayoutManager

uint64_t __59__NSTextLayoutManager_LayoutFragments___mk_lastLineSegment__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(a1 + 32);
  v6 = [v4 rangeInElement];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__NSTextLayoutManager_LayoutFragments___mk_lastLineSegment__block_invoke_2;
  v10[3] = &unk_1E76C9A28;
  v7 = *(a1 + 40);
  v11 = v4;
  v12 = v7;
  v8 = v4;
  [v5 enumerateTextSegmentsInRange:v6 type:0 options:0 usingBlock:v10];

  return 0;
}

uint64_t __59__NSTextLayoutManager_LayoutFragments___mk_lastLineSegment__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DB820];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) textElement];
  v7 = [v5 initWithTextElement:v6 range:v4];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

uint64_t __59__NSTextLayoutManager_LayoutFragments___mk_truncatedRanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 truncatedRanges];
  v5 = [v4 count];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 truncatedRanges];
    [v6 addObjectsFromArray:v7];
  }

  return 1;
}

uint64_t __59__NSTextLayoutManager_LayoutFragments___mk_layoutFragments__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeInElement];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSTextLayoutManager_LayoutFragments___mk_layoutFragments__block_invoke_2;
  v8[3] = &unk_1E76C99B0;
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v4 enumerateTextSegmentsInRange:v5 type:0 options:0 usingBlock:v8];

  return 1;
}

uint64_t __59__NSTextLayoutManager_LayoutFragments___mk_layoutFragments__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69DB820];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = [*(a1 + 40) textElement];
  v8 = [v6 initWithTextElement:v7 range:v5];

  [v3 addObject:v8];
  return 1;
}

@end
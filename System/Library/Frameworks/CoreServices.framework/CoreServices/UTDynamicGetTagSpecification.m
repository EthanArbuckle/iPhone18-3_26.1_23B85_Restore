@interface UTDynamicGetTagSpecification
@end

@implementation UTDynamicGetTagSpecification

void ___UTDynamicGetTagSpecification_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:*a3 length:*(a3 + 8) encoding:4];
  if (v11)
  {
    v14 = v11;
    v12 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(*(*(a1 + 32) + 8) + 40) setObject:v12 forKeyedSubscript:v14];
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:*a5 length:*(a5 + 8) encoding:4];
    if (v13)
    {
      [v12 addObject:v13];
    }

    v11 = v14;
  }
}

@end
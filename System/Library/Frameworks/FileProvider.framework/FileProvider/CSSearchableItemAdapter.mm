@interface CSSearchableItemAdapter
@end

@implementation CSSearchableItemAdapter

FPTag *__32___CSSearchableItemAdapter_tags__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = getMDPropertyCopyUserTagNameSymbolLoc_ptr;
  v18 = getMDPropertyCopyUserTagNameSymbolLoc_ptr;
  if (!getMDPropertyCopyUserTagNameSymbolLoc_ptr)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getMDPropertyCopyUserTagNameSymbolLoc_block_invoke;
    v13 = &unk_1E793A2E8;
    v14 = &v15;
    v4 = MetadataUtilitiesLibrary_0();
    v16[3] = dlsym(v4, "MDPropertyCopyUserTagName");
    getMDPropertyCopyUserTagNameSymbolLoc_ptr = *(v14[1] + 24);
    v3 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v3)
  {
    __32___CSSearchableItemAdapter_tags__block_invoke_cold_1();
  }

  v5 = v3(v2, &v9);
  v6 = [FPTag alloc];
  v7 = [(FPTag *)v6 initWithLabel:v5 color:v9];

  return v7;
}

FPTag *__32___CSSearchableItemAdapter_tags__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [FPTag alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = -[FPTag initWithLabel:color:](v6, "initWithLabel:color:", v5, [v7 intValue]);

  return v8;
}

FPTag *__32___CSSearchableItemAdapter_tags__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FPTag alloc] initWithLabel:v2 color:0];

  return v3;
}

void __32___CSSearchableItemAdapter_tags__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _MDPropertyCopyUserTagName(CFStringRef, uint8_t *)"}];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:76 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
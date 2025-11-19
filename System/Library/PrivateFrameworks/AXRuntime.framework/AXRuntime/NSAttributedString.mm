@interface NSAttributedString
@end

@implementation NSAttributedString

void __103__NSAttributedString_AXPropertyListCoersion___axRecursivelyPropertyListCoercedRepresentationWithError___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v17 = bswap64(a4);
  v18 = bswap64(a3);
  v7 = MEMORY[0x1E695DF88];
  v8 = a2;
  v9 = [v7 data];
  [v9 appendBytes:&v18 length:8];
  [v9 appendBytes:&v17 length:8];
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v8 _axRecursivelyPropertyListCoercedRepresentationWithError:&obj];

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v19[0] = @"Range";
    v19[1] = @"Attrs";
    v20[0] = v9;
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [*(a1 + 32) addObject:v12];
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    *a5 = 1;
  }
}

@end
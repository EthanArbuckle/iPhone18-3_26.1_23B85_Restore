@interface NSString
- (id)_bsui_rangesOfEmojiTokens:(void *)a1;
@end

@implementation NSString

- (id)_bsui_rangesOfEmojiTokens:(void *)a1
{
  if (a1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    if (a2)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v4 = 0;
    }

    v25 = v4;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3010000000;
    v18 = 0;
    v19 = 0;
    v17 = &unk_1A2D58392;
    [a1 length];
    CEMEnumerateEmojiTokensInStringWithBlock();
    if (v21[5])
    {
      v5 = v15[4];
      v6 = v15[5];
      if (v6 + v5 < [a1 length])
      {
        v7 = v15[4];
        v8 = v15[5];
        v9 = [a1 length];
        v10 = v21[5];
        v11 = [MEMORY[0x1E696B098] valueWithRange:{v8 + v7, v9 - (v15[4] + v15[5])}];
        [v10 addObject:v11];
      }

      if (a2)
      {
        *a2 = v21[5];
      }
    }

    v12 = v27[5];
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __67__NSString_BSUIPartialStylingAdditions___bsui_rangesOfEmojiTokens___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != -1 && a4 != -1)
  {
    v7 = *(*(a1[4] + 8) + 40);
    v8 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v7 addObject:v8];

    v9 = *(*(a1[5] + 8) + 40);
    if (v9)
    {
      v10 = *(*(a1[6] + 8) + 40) + *(*(a1[6] + 8) + 32);
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v10, a3 - v10}];
      [v9 addObject:v11];

      v12 = *(a1[6] + 8);
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
    }
  }
}

@end
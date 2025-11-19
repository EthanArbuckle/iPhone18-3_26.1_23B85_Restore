@interface NSString(SLWeiboStringAdditions)
- (uint64_t)SLWeiboCharacterCountWithShortenedURLLength:()SLWeiboStringAdditions;
@end

@implementation NSString(SLWeiboStringAdditions)

- (uint64_t)SLWeiboCharacterCountWithShortenedURLLength:()SLWeiboStringAdditions
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:&v38];
  v28 = v38;
  v29 = v4;
  v32 = [a1 mutableCopy];
  [v4 matchesInString:v32 options:0 range:{0, objc_msgSend(v32, "length")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v37 = 0u;
  v5 = [v27 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v6)
  {
    v33 = 0;
    v31 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v33 = 0;
  v31 = 0;
  v8 = *v35;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v34 + 1) + 8 * i);
      if ([v10 resultType] == 32)
      {
        v11 = [v10 URL];
        v12 = [v11 scheme];
        v13 = [v10 range];
        if ([a1 rangeOfString:v12 options:1 range:{v13, v14}] == v13)
        {
          if ([v12 compare:@"https" options:1])
          {
            if (![v12 compare:@"http" options:1])
            {
              ++v31;
              goto LABEL_12;
            }
          }

          else
          {
            ++v33;
LABEL_12:
            v15 = [v10 range];
            [v32 replaceCharactersInRange:v15 withString:{v16, &stru_1F41EC300}];
          }
        }

        continue;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v7);
LABEL_18:

  v17 = v32;
  if ([v17 length])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = MEMORY[0x1E69E9830];
    while (1)
    {
      v23 = [v17 characterAtIndex:v18];
      if (v23 > 0x7F)
      {
        break;
      }

      if ((*(v22 + 4 * v23 + 60) & 0x20000) != 0)
      {
        goto LABEL_24;
      }

      ++v21;
LABEL_26:
      if ([v17 length] <= ++v18)
      {
        goto LABEL_29;
      }
    }

    if (!__maskrune(v23, 0x20000uLL))
    {
      ++v19;
      goto LABEL_26;
    }

LABEL_24:
    ++v20;
    goto LABEL_26;
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
LABEL_29:
  if (v21 | v19)
  {
    v24 = (v19 + vcvtps_s32_f32(vcvts_n_f32_s32(v20 + v21, 1uLL)));
  }

  else
  {
    v24 = 0;
  }

  if (a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = 20;
  }

  return v33 + v33 * v25 + v31 * v25 + v24;
}

@end
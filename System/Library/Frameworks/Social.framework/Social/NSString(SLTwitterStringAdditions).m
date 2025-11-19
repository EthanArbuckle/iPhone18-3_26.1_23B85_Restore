@interface NSString(SLTwitterStringAdditions)
- (uint64_t)SLTwitterCharacterCountWithShortenedURLLength:()SLTwitterStringAdditions;
@end

@implementation NSString(SLTwitterStringAdditions)

- (uint64_t)SLTwitterCharacterCountWithShortenedURLLength:()SLTwitterStringAdditions
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:&v30];
  v23 = v30;
  v5 = [a1 mutableCopy];
  v24 = v4;
  [v4 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v29 = 0u;
  v6 = [v21 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v7)
  {
    v9 = 0;
    v25 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v25 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      if ([v12 resultType] == 32)
      {
        v13 = [v12 URL];
        v14 = [v13 scheme];
        if ([v14 compare:@"https" options:1])
        {
          if (![v14 compare:@"http" options:1])
          {
            ++v25;
            goto LABEL_11;
          }
        }

        else
        {
          ++v9;
LABEL_11:
          v15 = [v12 range];
          [v5 replaceCharactersInRange:v15 withString:{v16, &stru_1F41EC300}];
        }

        continue;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v8);
LABEL_17:
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = 20;
  }

  v18 = [v5 precomposedStringWithCanonicalMapping];
  v19 = [v18 length];

  return v9 + v9 * v17 + v25 * v17 + v19;
}

@end
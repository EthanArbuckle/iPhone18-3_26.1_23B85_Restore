@interface NSArray(ARAdditions)
+ (id)ar_arrayWithFloats:()ARAdditions count:;
- (id)ar_filter:()ARAdditions;
- (id)ar_firstObjectPassingTest:()ARAdditions;
- (id)ar_map:()ARAdditions;
@end

@implementation NSArray(ARAdditions)

- (id)ar_firstObjectPassingTest:()ARAdditions
{
  v4 = [a1 indexOfObjectWithOptions:0 passingTest:a3];
  v5 = 0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [a1 objectAtIndex:?];
  }

  return v5;
}

- (id)ar_map:()ARAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = [MEMORY[0x1E695DFB0] null];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)ar_filter:()ARAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)ar_arrayWithFloats:()ARAdditions count:
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4]; v4; --v4)
    {
      v8 = *v5++;
      LODWORD(v7) = v8;
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [i addObject:v9];
    }
  }

  else
  {
    i = 0;
  }

  return i;
}

@end
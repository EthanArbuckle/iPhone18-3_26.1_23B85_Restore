@interface NSCoder(HMExtensions)
- (id)hm_decodeArrayOfConditionalObjects:()HMExtensions forKey:;
- (id)hm_decodeSetOfConditionalObjects:()HMExtensions forKey:;
- (void)hm_encodeArrayOfConditionalObjects:()HMExtensions forKey:;
- (void)hm_encodeSetOfConditionalObjects:()HMExtensions forKey:;
@end

@implementation NSCoder(HMExtensions)

- (id)hm_decodeSetOfConditionalObjects:()HMExtensions forKey:
{
  v6 = a4;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$count", v6];
  v7 = [self decodeInt32ForKey:?];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v7];
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$%d", v6, v9];
      v11 = [self decodeObjectOfClass:a3 forKey:v10];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 = (v9 + 1);
    }

    while (v7 != v9);
  }

  return v8;
}

- (void)hm_encodeSetOfConditionalObjects:()HMExtensions forKey:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFD8] set];
  [self encodeObject:v8 forKey:v7];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$count", v7];
  [self encodeInt32:objc_msgSend(v6 forKey:{"count"), v18}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$%d", v7, v12];
        [self encodeConditionalObject:v15 forKey:v16];
        v12 = (v12 + 1);

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)hm_decodeArrayOfConditionalObjects:()HMExtensions forKey:
{
  v6 = a4;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$count", v6];
  v7 = [self decodeInt32ForKey:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$%d", v6, v9];
      v11 = [self decodeObjectOfClass:a3 forKey:v10];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 = (v9 + 1);
    }

    while (v7 != v9);
  }

  return v8;
}

- (void)hm_encodeArrayOfConditionalObjects:()HMExtensions forKey:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  array = [MEMORY[0x1E695DEC8] array];
  [self encodeObject:array forKey:v7];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$count", v7];
  [self encodeInt32:objc_msgSend(v6 forKey:{"count"), v18}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-$%d", v7, v12];
        [self encodeConditionalObject:v15 forKey:v16];
        v12 = (v12 + 1);

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end
@interface AVTNodeDeepCopy
@end

@implementation AVTNodeDeepCopy

void ___AVTNodeDeepCopy_block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 animationKeys];
  if ([v4 count])
  {
    v24 = a1;
    v5 = [*(a1 + 32) objectForKey:v3];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v3 animationPlayerForKey:v11];
          v13 = [v12 copy];
          [v5 addAnimationPlayer:v13 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }

    a1 = v24;
  }

  v14 = [v3 actionKeys];
  if ([v14 count])
  {
    v15 = [*(a1 + 32) objectForKey:v3];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * j);
          v22 = [v3 actionForKey:v21];
          [v15 runAction:v22 forKey:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void ___AVTNodeDeepCopy_block_invoke_0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 animationKeys];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) objectForKey:v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v3 animationPlayerForKey:{v11, v15}];
          v13 = [v12 copy];
          [v5 addAnimationPlayer:v13 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end
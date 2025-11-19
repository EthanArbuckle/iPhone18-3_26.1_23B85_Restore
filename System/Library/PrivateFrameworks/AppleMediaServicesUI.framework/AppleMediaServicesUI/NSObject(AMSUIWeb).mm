@interface NSObject(AMSUIWeb)
- (id)_sanitizedServerObject:()AMSUIWeb;
@end

@implementation NSObject(AMSUIWeb)

- (id)_sanitizedServerObject:()AMSUIWeb
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E696AEC0];
    [v4 timeIntervalSince1970];
    v5 = [v9 stringWithFormat:@"%lld", v10];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v4 base64EncodedStringWithOptions:0];
    v6 = [v11 stringWithFormat:@"%@", v12];
LABEL_34:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [a1 _sanitizedServerObject:*(*(&v32 + 1) + 8 * i)];
          if (v17)
          {
            [v6 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v4;
    v18 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v12);
          }

          v22 = [a1 _sanitizedServerObject:*(*(&v28 + 1) + 8 * j)];
          if (v22)
          {
            [v6 addObject:v22];
          }
        }

        v19 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__NSObject_AMSUIWeb___sanitizedServerObject___block_invoke;
    v26[3] = &unk_1E7F27218;
    v26[4] = a1;
    v24 = v23;
    v27 = v24;
    [v4 enumerateKeysAndObjectsUsingBlock:v26];
    v25 = v27;
    v6 = v24;
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end
@interface NSDictionary(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion;
@end

@implementation NSDictionary(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v15 = *v19;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v18 + 1) + 8 * i);
      v7 = objc_autoreleasePoolPush();
      v8 = [v2 objectForKey:v6];
      if (objc_opt_respondsToSelector())
      {
        v9 = [v6 _axDictionaryKeyReplacementRepresentation];
        if (!v9)
        {

          objc_autoreleasePoolPop(v7);
          v12 = 0;
          v13 = v16;
          goto LABEL_18;
        }
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = 0;
        v10 = [v8 _axRecursivelyPropertyListCoercedRepresentationWithError:&v17];
        v11 = v17;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
      }

      v10 = &stru_1F3E63FB0;
LABEL_15:
      [v16 setObject:v10 forKey:v9];

      objc_autoreleasePoolPop(v7);
    }

    v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v4);
LABEL_17:

  v13 = v16;
  v12 = v16;
LABEL_18:

  return v12;
}

- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v4 = a1;
  v5 = [v4 objectForKey:@"SmugType"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [v5 unsignedIntegerValue], v6 <= 9))
  {
    v7 = (off_1F3E62268[v6])(v4, &v31);
  }

  else
  {
    v7 = 0;
  }

  v8 = v31;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
  }

  else if (v8)
  {
    if (a3)
    {
      v12 = v8;
      v10 = 0;
      *a3 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v4 keyEnumerator];
    v14 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      v25 = 0;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v4 objectForKey:{v18, v25}];
          v20 = [v18 _axReconstitutedRepresentationForDictionaryKeyReplacement];
          if (!v20)
          {
            goto LABEL_26;
          }

          v21 = v20;
          v22 = a3;
          v23 = [v19 _axRecursivelyReconstitutedRepresentationFromPropertyListWithError:a3];
          if (!v23)
          {

LABEL_26:
            v10 = 0;
            v9 = v25;
            goto LABEL_27;
          }

          v24 = v23;
          [v13 setObject:v23 forKey:v21];

          a3 = v22;
        }

        v15 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        v9 = v25;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v10 = v13;
LABEL_27:
  }

  return v10;
}

@end
@interface NSBundle(BatteryCenterUIAdditions)
- (id)bsui_imageForIconInfo:()BatteryCenterUIAdditions;
@end

@implementation NSBundle(BatteryCenterUIAdditions)

- (id)bsui_imageForIconInfo:()BatteryCenterUIAdditions
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v7 = [a1 objectForInfoDictionaryKey:@"CFBundleIconFilesRightToLeft"];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      [v6 addObjectsFromArray:v11];
    }
  }

  if (![v6 count])
  {
    v12 = [a1 objectForInfoDictionaryKey:@"CFBundleIconFiles"];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      [v6 addObjectsFromArray:v16];
    }
  }

  if (![v6 count])
  {
    v17 = [a1 objectForInfoDictionaryKey:@"CFBundleIcons"];
    v18 = objc_opt_class();
    v19 = v17;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [v21 objectForKey:@"CFBundlePrimaryIcon"];

    v23 = objc_opt_class();
    v24 = v22;
    if (v23)
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [v26 objectForKey:@"CFBundleIconName"];

    v28 = objc_opt_class();
    v29 = v27;
    if (v28)
    {
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31)
    {
      [v6 addObject:v31];
    }
  }

  if ([v6 count])
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v32 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v6;
  v34 = [v33 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v44;
LABEL_43:
    v37 = 0;
    while (1)
    {
      if (*v44 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = [MEMORY[0x1E69DCAB8] imageNamed:*(*(&v43 + 1) + 8 * v37) inBundle:{a1, v43}];
      [v38 size];
      if (v40 == a2 && v39 == a3)
      {
        break;
      }

      [v32 addObject:v38];

      if (v35 == ++v37)
      {
        v35 = [v33 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v35)
        {
          goto LABEL_43;
        }

        goto LABEL_52;
      }
    }

    if (v38)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_52:
  }

  v38 = [v32 lastObject];
LABEL_55:

  return v38;
}

@end
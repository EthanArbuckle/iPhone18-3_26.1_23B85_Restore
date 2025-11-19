@interface AXITMLUtilities
+ (id)_listTemplateForViewElement:(id)a3;
+ (id)firstItemTitleForViewElement:(id)a3;
+ (id)textByReconcilingClientText:(id)a3 withServerText:(id)a4;
+ (unint64_t)listItemElementCountForViewElement:(id)a3;
@end

@implementation AXITMLUtilities

+ (id)textByReconcilingClientText:(id)a3 withServerText:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 string];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1F4041FC0];

    v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [v8 stringByTrimmingCharactersInSet:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 string];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1F4041FC0];

    v12 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [v11 stringByTrimmingCharactersInSet:v12];
  }

  v13 = [v5 length];
  v14 = [v6 length];
  if (!(v13 | v14))
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (v5 && !v14)
  {
    goto LABEL_8;
  }

  if (v14 && !v13)
  {
LABEL_12:
    v15 = v6;
    goto LABEL_13;
  }

  if (![v5 localizedCaseInsensitiveContainsString:v6])
  {
    if (![v6 localizedCaseInsensitiveContainsString:v5])
    {
      v15 = __AXStringForVariables();
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_8:
  v15 = v5;
LABEL_13:
  v16 = v15;
LABEL_14:

  return v16;
}

+ (unint64_t)listItemElementCountForViewElement:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a1 _listTemplateForViewElement:a3];
  v4 = [v3 list];
  v5 = [v4 sections];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) items];
        v8 += [v11 count];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)firstItemTitleForViewElement:(id)a3
{
  v3 = [a1 _listTemplateForViewElement:a3];
  v4 = [v3 list];
  v5 = [v4 sections];
  v6 = [v5 firstObject];

  v7 = [v6 items];
  v8 = [v7 firstObject];

  getIKListItemLockupElementClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v8)
  {
    _AXAssert();
  }

  getIKListItemLockupElementClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 title];
    v10 = [v9 text];
    v11 = [v10 string];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_listTemplateForViewElement:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getIKViewElementClass_softClass;
  v26 = getIKViewElementClass_softClass;
  if (!getIKViewElementClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getIKViewElementClass_block_invoke;
    v21 = &unk_1E812DCD0;
    v22 = &v23;
    __getIKViewElementClass_block_invoke(&v18);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 children];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v5 = v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v27 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v23 = 0;
          v24 = &v23;
          v25 = 0x2050000000;
          v10 = getIKListTemplateClass_softClass;
          v26 = getIKListTemplateClass_softClass;
          if (!getIKListTemplateClass_softClass)
          {
            v18 = MEMORY[0x1E69E9820];
            v19 = 3221225472;
            v20 = __getIKListTemplateClass_block_invoke;
            v21 = &unk_1E812DCD0;
            v22 = &v23;
            __getIKListTemplateClass_block_invoke(&v18);
            v10 = v24[3];
          }

          v11 = v10;
          _Block_object_dispose(&v23, 8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = v9;
            goto LABEL_17;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
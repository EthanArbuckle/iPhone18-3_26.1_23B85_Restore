@interface AXITMLUtilities
+ (id)_listTemplateForViewElement:(id)element;
+ (id)firstItemTitleForViewElement:(id)element;
+ (id)textByReconcilingClientText:(id)text withServerText:(id)serverText;
+ (unint64_t)listItemElementCountForViewElement:(id)element;
@end

@implementation AXITMLUtilities

+ (id)textByReconcilingClientText:(id)text withServerText:(id)serverText
{
  textCopy = text;
  serverTextCopy = serverText;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [textCopy string];
    v8 = [string stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1F4041FC0];

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    textCopy = [v8 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string2 = [serverTextCopy string];
    v11 = [string2 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1F4041FC0];

    whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    serverTextCopy = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  }

  v13 = [textCopy length];
  v14 = [serverTextCopy length];
  if (!(v13 | v14))
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (textCopy && !v14)
  {
    goto LABEL_8;
  }

  if (v14 && !v13)
  {
LABEL_12:
    v15 = serverTextCopy;
    goto LABEL_13;
  }

  if (![textCopy localizedCaseInsensitiveContainsString:serverTextCopy])
  {
    if (![serverTextCopy localizedCaseInsensitiveContainsString:textCopy])
    {
      v15 = __AXStringForVariables();
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_8:
  v15 = textCopy;
LABEL_13:
  v16 = v15;
LABEL_14:

  return v16;
}

+ (unint64_t)listItemElementCountForViewElement:(id)element
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [self _listTemplateForViewElement:element];
  list = [v3 list];
  sections = [list sections];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(sections);
        }

        items = [*(*(&v13 + 1) + 8 * i) items];
        v8 += [items count];
      }

      v7 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)firstItemTitleForViewElement:(id)element
{
  v3 = [self _listTemplateForViewElement:element];
  list = [v3 list];
  sections = [list sections];
  firstObject = [sections firstObject];

  items = [firstObject items];
  firstObject2 = [items firstObject];

  getIKListItemLockupElementClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && firstObject2)
  {
    _AXAssert();
  }

  getIKListItemLockupElementClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = [firstObject2 title];
    text = [title text];
    string = [text string];
  }

  else
  {
    string = 0;
  }

  return string;
}

+ (id)_listTemplateForViewElement:(id)element
{
  v28 = *MEMORY[0x1E69E9840];
  elementCopy = element;
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
    [elementCopy children];
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
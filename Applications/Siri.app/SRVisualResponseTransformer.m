@interface SRVisualResponseTransformer
+ (id)_splitVisualResponse:(id)a3 forVisualResponseSnippet:(id)a4;
+ (id)transformVisualResponse:(id)a3 forMode:(unint64_t)a4 idiom:(int64_t)a5 shouldHideSnippet:(BOOL)a6;
+ (int64_t)currentIdiom;
@end

@implementation SRVisualResponseTransformer

+ (id)transformVisualResponse:(id)a3 forMode:(unint64_t)a4 idiom:(int64_t)a5 shouldHideSnippet:(BOOL)a6
{
  v9 = a3;
  v10 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v9;
  v11 = [v9 views];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v28 = v11;
    v29 = a4;
    v27 = a6;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (a6)
          {
            continue;
          }

          [a1 setVisualMode:{objc_msgSend(a1, "_dialogModeToVisualModeConverter:", a4)}];
LABEL_12:
          [v10 addObject:v16];
          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        if (!a6)
        {
          v17 = v16;
          v18 = v10;
          v19 = [a1 _dialogModeToVisualModeConverter:a4];
          [a1 setVisualMode:v19];
          v20 = [v17 modelData];
          v21 = v19;
          v10 = v18;
          a6 = v27;
          v22 = [VRXVisualResponseProvider transformModel:v20 mode:v21 currentIdiom:a5];

          v23 = [a1 _splitVisualResponse:v22 forVisualResponseSnippet:v17];

          [v10 addObjectsFromArray:v23];
          a4 = v29;

          v11 = v28;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = [v26 copy];
  [v24 setViews:v10];

  return v24;
}

+ (int64_t)currentIdiom
{
  if (SiriUIDeviceIsPad())
  {
    return 2;
  }

  if (SiriUIDeviceIsPod())
  {
    return 3;
  }

  return 1;
}

+ (id)_splitVisualResponse:(id)a3 forVisualResponseSnippet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
    v24 = SAAceViewUIItemTypeItemTypeConversationValue;
    v12 = SAAceViewUIItemTypeItemTypeResultValue;
    do
    {
      v13 = 0;
      v23 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [v6 copy];
        v16 = [v14 model];
        [v15 setModelData:v16];

        v17 = [v14 responseType];
        v18 = v12;
        if (v17 == 1 || (v19 = [v14 responseType], v18 = v24, v19 == 2))
        {
          [v15 setItemType:v18];
        }

        if (v10 >= 1)
        {
          v20 = +[NSUUID UUID];
          v21 = [v20 UUIDString];
          [v15 setAceId:v21];
        }

        [v7 addObject:v15];

        v13 = v13 + 1;
        ++v10;
      }

      while (v9 != v13);
      v10 = v23 + v9;
      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  return v7;
}

@end
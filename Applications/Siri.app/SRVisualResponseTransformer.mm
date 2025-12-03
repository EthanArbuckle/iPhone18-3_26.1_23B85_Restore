@interface SRVisualResponseTransformer
+ (id)_splitVisualResponse:(id)response forVisualResponseSnippet:(id)snippet;
+ (id)transformVisualResponse:(id)response forMode:(unint64_t)mode idiom:(int64_t)idiom shouldHideSnippet:(BOOL)snippet;
+ (int64_t)currentIdiom;
@end

@implementation SRVisualResponseTransformer

+ (id)transformVisualResponse:(id)response forMode:(unint64_t)mode idiom:(int64_t)idiom shouldHideSnippet:(BOOL)snippet
{
  responseCopy = response;
  v10 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = responseCopy;
  views = [responseCopy views];
  v12 = [views countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v28 = views;
    modeCopy = mode;
    snippetCopy = snippet;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(views);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (snippet)
          {
            continue;
          }

          [self setVisualMode:{objc_msgSend(self, "_dialogModeToVisualModeConverter:", mode)}];
LABEL_12:
          [v10 addObject:v16];
          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        if (!snippet)
        {
          v17 = v16;
          v18 = v10;
          v19 = [self _dialogModeToVisualModeConverter:mode];
          [self setVisualMode:v19];
          modelData = [v17 modelData];
          v21 = v19;
          v10 = v18;
          snippet = snippetCopy;
          v22 = [VRXVisualResponseProvider transformModel:modelData mode:v21 currentIdiom:idiom];

          v23 = [self _splitVisualResponse:v22 forVisualResponseSnippet:v17];

          [v10 addObjectsFromArray:v23];
          mode = modeCopy;

          views = v28;
        }
      }

      v13 = [views countByEnumeratingWithState:&v31 objects:v35 count:16];
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

+ (id)_splitVisualResponse:(id)response forVisualResponseSnippet:(id)snippet
{
  responseCopy = response;
  snippetCopy = snippet;
  v7 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = responseCopy;
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
        v15 = [snippetCopy copy];
        model = [v14 model];
        [v15 setModelData:model];

        responseType = [v14 responseType];
        v18 = v12;
        if (responseType == 1 || (v19 = [v14 responseType], v18 = v24, v19 == 2))
        {
          [v15 setItemType:v18];
        }

        if (v10 >= 1)
        {
          v20 = +[NSUUID UUID];
          uUIDString = [v20 UUIDString];
          [v15 setAceId:uUIDString];
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
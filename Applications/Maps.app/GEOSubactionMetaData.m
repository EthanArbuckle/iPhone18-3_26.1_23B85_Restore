@interface GEOSubactionMetaData
+ (id)subactionMetaDataWithChildItems:(id)a3 selectedChildItemIndexPath:(id)a4;
@end

@implementation GEOSubactionMetaData

+ (id)subactionMetaDataWithChildItems:(id)a3 selectedChildItemIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(GEOSubactionMetaData);
  v25 = v6;
  if (v6)
  {
    v8 = [v6 row];
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  [v7 setSelectedSubactionIndex:v8];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [ChildItemButton buttonTitleWithChildItem:v14];
        [v7 addDisplayedText:v15];

        v16 = [v14 childItemAction];

        if (v16)
        {
          v17 = [v14 childItemAction];
          v18 = [v14 childItemAction];
          v19 = [v17 childActionTypeAsString:{objc_msgSend(v18, "childActionType")}];
          [v7 addChildItemSubactionType:v19];
        }

        v20 = [v14 childItemType];
        if (v20 == 1)
        {
          v23 = 2;
          goto LABEL_18;
        }

        if (v20 == 3)
        {
          v23 = 3;
          goto LABEL_18;
        }

        if (v20 == 2)
        {
          v21 = [v14 childItemAction];
          v22 = [v21 childActionType];

          if ((v22 - 1) < 8)
          {
            v23 = dword_1012131F8[(v22 - 1)];
LABEL_18:
            [v7 addSubaction:v23];
            continue;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v7;
}

@end
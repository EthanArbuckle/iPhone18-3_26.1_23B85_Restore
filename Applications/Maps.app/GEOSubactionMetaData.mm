@interface GEOSubactionMetaData
+ (id)subactionMetaDataWithChildItems:(id)items selectedChildItemIndexPath:(id)path;
@end

@implementation GEOSubactionMetaData

+ (id)subactionMetaDataWithChildItems:(id)items selectedChildItemIndexPath:(id)path
{
  itemsCopy = items;
  pathCopy = path;
  v7 = objc_alloc_init(GEOSubactionMetaData);
  v25 = pathCopy;
  if (pathCopy)
  {
    v8 = [pathCopy row];
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
  v9 = itemsCopy;
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

        childItemAction = [v14 childItemAction];

        if (childItemAction)
        {
          childItemAction2 = [v14 childItemAction];
          childItemAction3 = [v14 childItemAction];
          v19 = [childItemAction2 childActionTypeAsString:{objc_msgSend(childItemAction3, "childActionType")}];
          [v7 addChildItemSubactionType:v19];
        }

        childItemType = [v14 childItemType];
        if (childItemType == 1)
        {
          v23 = 2;
          goto LABEL_18;
        }

        if (childItemType == 3)
        {
          v23 = 3;
          goto LABEL_18;
        }

        if (childItemType == 2)
        {
          childItemAction4 = [v14 childItemAction];
          childActionType = [childItemAction4 childActionType];

          if ((childActionType - 1) < 8)
          {
            v23 = dword_1012131F8[(childActionType - 1)];
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
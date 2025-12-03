@interface CNContactFetchRequestEffectiveKeyExtender
+ (id)extendRequestedKeys:(id)keys shouldUnifyResults:(BOOL)results sortOrder:(int64_t)order;
@end

@implementation CNContactFetchRequestEffectiveKeyExtender

+ (id)extendRequestedKeys:(id)keys shouldUnifyResults:(BOOL)results sortOrder:(int64_t)order
{
  resultsCopy = results;
  v6 = MEMORY[0x1E695DF70];
  keysCopy = keys;
  array = [v6 array];
  [array addObjectsFromArray:keysCopy];
  v9 = +[CNContact alwaysFetchedKeys];
  allObjects = [v9 allObjects];
  [array addObjectsFromArray:allObjects];

  v11 = [keysCopy _cn_any:&__block_literal_global_138];
  if (resultsCopy)
  {
    [array addObject:@"linkIdentifier"];
    [array addObject:@"preferredForName"];
    if (!v11)
    {
      goto LABEL_7;
    }

    [array addObject:@"sharedPhotoDisplayPreference"];
    v12 = &CNContactPreferredForImageKey;
    v13 = &CNContactisUsingSharedPhotoKey;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = &CNContactisUsingSharedPhotoKey;
    v13 = &CNContactSharedPhotoDisplayPreferenceKey;
  }

  [array addObject:*v13];
  [array addObject:*v12];
LABEL_7:

  return array;
}

uint64_t __94__CNContactFetchRequestEffectiveKeyExtender_extendRequestedKeys_shouldUnifyResults_sortOrder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
    }

    else
    {
      v12 = [v3 conformsToProtocol:&unk_1F0998880];

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v4 = +[CN allImageDataPropertyKeys];
    v5 = [v3 _cn_requiredKeys];
    v6 = [v4 intersectsKeyVector:v5];

    if (v6)
    {

LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

    v8 = +[CN allWallpaperPropertyKeys];
    v9 = [v3 _cn_requiredKeys];
    v10 = [v8 intersectsKeyVector:v9];

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_10:
  v7 = 0;
LABEL_13:

  return v7;
}

@end
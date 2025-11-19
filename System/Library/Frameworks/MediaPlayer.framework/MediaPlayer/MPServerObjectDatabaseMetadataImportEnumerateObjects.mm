@interface MPServerObjectDatabaseMetadataImportEnumerateObjects
@end

@implementation MPServerObjectDatabaseMetadataImportEnumerateObjects

void ___MPServerObjectDatabaseMetadataImportEnumerateObjects_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (((_NSIsNSDictionary() & 1) != 0 || _NSIsNSArray()) && ![&unk_1F1509F58 containsObject:v5])
  {
    [*(a1 + 40) addObject:v5];
    v7 = *(a1 + 96);
    if (*(a1 + 96))
    {
      v8 = &v12;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == 1)
    {
      v12 = 0;
    }

    v9 = *(a1 + 56);
    if (!v9)
    {
      v9 = *(a1 + 64);
    }

    v10 = *(a1 + 72);
    if (!v10)
    {
      v10 = *(a1 + 80);
    }

    _MPServerObjectDatabaseMetadataImportEnumerateObjects(v6, v8, *(a1 + 48), *(a1 + 40), v9, v10, 0, *(a1 + 88));
    v11 = 0;
    if (v7)
    {
      v11 = v12;
    }

    [*(a1 + 40) removeLastObject];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

@end
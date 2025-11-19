@interface UTType(FPCaching)
+ (id)fp_cachedTypeWithIdentifier:()FPCaching alreadyAvailableType:;
@end

@implementation UTType(FPCaching)

+ (id)fp_cachedTypeWithIdentifier:()FPCaching alreadyAvailableType:
{
  v5 = a3;
  v6 = a4;
  if (fp_cachedTypeWithIdentifier_alreadyAvailableType__onceToken != -1)
  {
    +[UTType(FPCaching) fp_cachedTypeWithIdentifier:alreadyAvailableType:];
  }

  if (fp_cachedTypeWithIdentifier_alreadyAvailableType__hasFastSequenceNumber != 1)
  {
    goto LABEL_10;
  }

  v7 = [MEMORY[0x1E6963608] defaultWorkspace];
  v21 = 0;
  [v7 getKnowledgeUUID:0 andSequenceNumber:&v21];
  v8 = v21;

  [v8 unsignedLongLongValue];
  __swp(v7, &fp_cachedTypeWithIdentifier_alreadyAvailableType__lastDatabaseGeneration);
  if (v7 != [v8 unsignedLongLongValue])
  {
    [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache removeAllObjects];
  }

  if (fp_cachedTypeWithIdentifier_alreadyAvailableType__hasFastSequenceNumber)
  {
    v9 = [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache objectForKey:v5];
    if (!v9)
    {
      if (v6)
      {
        [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache setObject:v6 forKey:v5];
        v9 = v6;
      }

      else
      {
        v18 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
        v19 = v18;
        v20 = *MEMORY[0x1E6982E48];
        if (v18)
        {
          v20 = v18;
        }

        v9 = v20;

        [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache setObject:v9 forKey:v5];
      }
    }
  }

  else
  {
LABEL_10:
    v10 = [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache objectForKey:v5];
    if (!v10)
    {
      v10 = v6;
    }

    v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
    v12 = v11;
    v13 = *MEMORY[0x1E6982E48];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    if (!v10 || (v15 = [v14 isEqual:v10], v16 = v10, (v15 & 1) == 0))
    {
      [fp_cachedTypeWithIdentifier_alreadyAvailableType__cache setObject:v14 forKey:v5];
      v16 = v14;
    }

    v9 = v16;
  }

  return v9;
}

@end
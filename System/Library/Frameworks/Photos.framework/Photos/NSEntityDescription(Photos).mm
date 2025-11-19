@interface NSEntityDescription(Photos)
- (id)ph_baseEntity;
- (id)ph_relationshipDescriptionsForKeyPath:()Photos;
- (void)ph_enumerateSelfAndSubentities:()Photos;
@end

@implementation NSEntityDescription(Photos)

- (void)ph_enumerateSelfAndSubentities:()Photos
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v4[2](v4, a1);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a1 subentities];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) ph_enumerateSelfAndSubentities:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)ph_relationshipDescriptionsForKeyPath:()Photos
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 componentsSeparatedByString:@"."];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = a1;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        v11 = 0;
        v12 = v6;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * v11);
          v14 = [v12 relationshipsByName];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (!v15)
          {

            v5 = 0;
            goto LABEL_12;
          }

          [v5 addObject:v15];
          v6 = [v15 destinationEntity];

          ++v11;
          v12 = v6;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = v6;
LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ph_baseEntity
{
  v1 = a1;
  v2 = [v1 superentity];

  if (v2)
  {
    do
    {
      v3 = [v1 superentity];

      v4 = [v3 superentity];

      v1 = v3;
    }

    while (v4);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

@end
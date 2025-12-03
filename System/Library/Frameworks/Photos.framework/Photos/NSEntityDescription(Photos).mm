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
  v4[2](v4, self);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subentities = [self subentities];
  v6 = [subentities countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subentities);
        }

        [*(*(&v10 + 1) + 8 * v9++) ph_enumerateSelfAndSubentities:v4];
      }

      while (v7 != v9);
      v7 = [subentities countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    selfCopy = self;
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
        v12 = selfCopy;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * v11);
          relationshipsByName = [v12 relationshipsByName];
          v15 = [relationshipsByName objectForKeyedSubscript:v13];

          if (!v15)
          {

            v5 = 0;
            goto LABEL_12;
          }

          [v5 addObject:v15];
          selfCopy = [v15 destinationEntity];

          ++v11;
          v12 = selfCopy;
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

    v12 = selfCopy;
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
  selfCopy = self;
  superentity = [selfCopy superentity];

  if (superentity)
  {
    do
    {
      superentity2 = [selfCopy superentity];

      v3Superentity = [superentity2 superentity];

      selfCopy = superentity2;
    }

    while (v3Superentity);
  }

  else
  {
    superentity2 = selfCopy;
  }

  return superentity2;
}

@end
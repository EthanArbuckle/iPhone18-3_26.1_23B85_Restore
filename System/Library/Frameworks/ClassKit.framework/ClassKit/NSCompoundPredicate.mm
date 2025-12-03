@interface NSCompoundPredicate
- (BOOL)pd_containsKeyPath:(id)path;
- (id)pd_filterSubpredicatesForKeyPath:(id)path;
- (void)_populateKeypathValueMap:(id)map;
@end

@implementation NSCompoundPredicate

- (BOOL)pd_containsKeyPath:(id)path
{
  pathCopy = path;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v6 = [subpredicates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subpredicates);
        }

        if ([*(*(&v10 + 1) + 8 * i) pd_containsKeyPath:pathCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [subpredicates countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)pd_filterSubpredicatesForKeyPath:(id)path
{
  pathCopy = path;
  compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v8 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(subpredicates);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) pd_filterSubpredicatesForKeyPath:pathCopy];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    if ([v6 count] == 1)
    {
      firstObject = [v6 firstObject];
    }

    else
    {
      firstObject = [[NSCompoundPredicate alloc] initWithType:compoundPredicateType subpredicates:v6];
    }

    v14 = firstObject;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_populateKeypathValueMap:(id)map
{
  mapCopy = map;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v6 = [subpredicates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(subpredicates);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [v10 _populateKeypathValueMap:mapCopy];
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subpredicates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end
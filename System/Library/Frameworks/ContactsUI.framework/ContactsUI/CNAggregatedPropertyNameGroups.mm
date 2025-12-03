@interface CNAggregatedPropertyNameGroups
- (BOOL)modified;
- (void)saveChanges;
@end

@implementation CNAggregatedPropertyNameGroups

- (void)saveChanges
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  groups = [(CNAggregatedPropertyNameGroups *)self groups];
  v3 = [groups countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(groups);
        }

        [*(*(&v7 + 1) + 8 * v6++) saveChanges];
      }

      while (v4 != v6);
      v4 = [groups countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)modified
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  groups = [(CNAggregatedPropertyNameGroups *)self groups];
  v3 = [groups countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(groups);
        }

        if ([*(*(&v7 + 1) + 8 * i) modified])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [groups countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end
@interface NSSet
- (BOOL)_maps_containsSearchResultEqualToResult:(id)a3 forPurpose:(int64_t)a4;
- (id)_maps_searchResultMemberEqualToResult:(id)a3 forPurpose:(int64_t)a4;
@end

@implementation NSSet

- (id)_maps_searchResultMemberEqualToResult:(id)a3 forPurpose:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = v6;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToSearchResult:v14 forPurpose:{a4, v17}])
          {
            v15 = v14;
            goto LABEL_14;
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_maps_containsSearchResultEqualToResult:(id)a3 forPurpose:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = v6;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToSearchResult:v14 forPurpose:{a4, v17}])
          {
            v15 = v14;

            v9 = v15;
            goto LABEL_14;
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15 != 0;
}

@end
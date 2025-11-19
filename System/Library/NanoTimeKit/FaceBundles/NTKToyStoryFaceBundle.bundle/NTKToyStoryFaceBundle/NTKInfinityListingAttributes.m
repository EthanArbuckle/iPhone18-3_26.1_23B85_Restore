@interface NTKInfinityListingAttributes
+ (id)attributesWithDictionary:(id)a3;
- (BOOL)containsAttributes:(id)a3 ignoreKeys:(id)a4;
@end

@implementation NTKInfinityListingAttributes

+ (id)attributesWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NTKInfinityListingAttributes);
  v5 = [v3 mutableCopy];

  [(NTKInfinityListingAttributes *)v4 setAttributes:v5];

  return v4;
}

- (BOOL)containsAttributes:(id)a3 ignoreKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = @"setting";
  v8 = 1;
  v9 = [NSArray arrayWithObjects:&v28 count:1];
  v10 = [v9 arrayByAddingObjectsFromArray:v7];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v6 attributes];
  v12 = [v11 allKeys];

  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v22 = v7;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (([v10 containsObject:v17] & 1) == 0)
        {
          v18 = [(NSMutableDictionary *)self->_attributes objectForKey:v17];
          v19 = [v6 attributes];
          v20 = [v19 objectForKey:v17];

          if (v18 != v20)
          {
            v8 = 0;
            goto LABEL_12;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v8 = 1;
LABEL_12:
    v7 = v22;
  }

  return v8;
}

@end
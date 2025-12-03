@interface NTKInfinityListingAttributes
+ (id)attributesWithDictionary:(id)dictionary;
- (BOOL)containsAttributes:(id)attributes ignoreKeys:(id)keys;
@end

@implementation NTKInfinityListingAttributes

+ (id)attributesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(NTKInfinityListingAttributes);
  v5 = [dictionaryCopy mutableCopy];

  [(NTKInfinityListingAttributes *)v4 setAttributes:v5];

  return v4;
}

- (BOOL)containsAttributes:(id)attributes ignoreKeys:(id)keys
{
  attributesCopy = attributes;
  keysCopy = keys;
  v28 = @"setting";
  v8 = 1;
  v9 = [NSArray arrayWithObjects:&v28 count:1];
  v10 = [v9 arrayByAddingObjectsFromArray:keysCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  attributes = [attributesCopy attributes];
  allKeys = [attributes allKeys];

  v13 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v22 = keysCopy;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (([v10 containsObject:v17] & 1) == 0)
        {
          v18 = [(NSMutableDictionary *)self->_attributes objectForKey:v17];
          attributes2 = [attributesCopy attributes];
          v20 = [attributes2 objectForKey:v17];

          if (v18 != v20)
          {
            v8 = 0;
            goto LABEL_12;
          }
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v8 = 1;
LABEL_12:
    keysCopy = v22;
  }

  return v8;
}

@end
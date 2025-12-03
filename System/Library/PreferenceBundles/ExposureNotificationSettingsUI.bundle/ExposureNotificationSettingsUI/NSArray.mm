@interface NSArray
- (id)enui_map:(id)enui_map;
@end

@implementation NSArray

- (id)enui_map:(id)enui_map
{
  enui_mapCopy = enui_map;
  if (enui_mapCopy)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = enui_mapCopy[2](enui_mapCopy, *(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [(NSArray *)self copy];
  }

  return v5;
}

@end
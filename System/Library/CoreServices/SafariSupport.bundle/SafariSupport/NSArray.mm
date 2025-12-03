@interface NSArray
- (id)safari_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)count;
@end

@implementation NSArray

- (id)safari_arrayByGroupingIntoArraysWithMaxCount:(unint64_t)count
{
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = 0;
  v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v7 count];
        if (!v7 || v12 >= count)
        {
          v13 = [NSMutableArray arrayWithCapacity:count];

          v7 = v13;
          [v5 addObject:v13];
        }

        [v7 addObject:v11];
      }

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end
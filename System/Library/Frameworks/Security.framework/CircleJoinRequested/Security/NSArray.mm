@interface NSArray
- (id)mapWithBlock:(id)block;
@end

@implementation NSArray

- (id)mapWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * i));
        [v5 addObject:{v11, v14}];
      }

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end
@interface NSArray
- (BOOL)arrayOfCallGroupsContainsCall:(id)call;
@end

@implementation NSArray

- (BOOL)arrayOfCallGroupsContainsCall:(id)call
{
  callCopy = call;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        calls = [*(*(&v12 + 1) + 8 * i) calls];
        v10 = [calls containsObject:callCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

@end
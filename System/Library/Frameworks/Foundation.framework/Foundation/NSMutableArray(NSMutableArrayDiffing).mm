@interface NSMutableArray(NSMutableArrayDiffing)
- (uint64_t)applyDifference:()NSMutableArrayDiffing;
@end

@implementation NSMutableArray(NSMutableArrayDiffing)

- (uint64_t)applyDifference:()NSMutableArrayDiffing
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 changeType] == 1)
        {
          [a1 removeObjectAtIndex:{objc_msgSend(v9, "index")}];
        }

        else
        {
          [a1 insertObject:objc_msgSend(v9 atIndex:{"object"), objc_msgSend(v9, "index")}];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

@end
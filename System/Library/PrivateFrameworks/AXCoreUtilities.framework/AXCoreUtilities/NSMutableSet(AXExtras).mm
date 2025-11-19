@interface NSMutableSet(AXExtras)
- (void)ax_replaceWithMatchingObject:()AXExtras updatingWithBlock:;
@end

@implementation NSMutableSet(AXExtras)

- (void)ax_replaceWithMatchingObject:()AXExtras updatingWithBlock:
{
  v8 = a3;
  v6 = a4;
  v7 = [a1 member:v8];
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, v8, v7);
    }

    [a1 removeObject:v7];
    [a1 addObject:v8];
  }
}

@end
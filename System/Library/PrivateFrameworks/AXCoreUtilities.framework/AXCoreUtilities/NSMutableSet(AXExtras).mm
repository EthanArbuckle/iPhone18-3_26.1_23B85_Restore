@interface NSMutableSet(AXExtras)
- (void)ax_replaceWithMatchingObject:()AXExtras updatingWithBlock:;
@end

@implementation NSMutableSet(AXExtras)

- (void)ax_replaceWithMatchingObject:()AXExtras updatingWithBlock:
{
  v8 = a3;
  v6 = a4;
  v7 = [self member:v8];
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, v8, v7);
    }

    [self removeObject:v7];
    [self addObject:v8];
  }
}

@end
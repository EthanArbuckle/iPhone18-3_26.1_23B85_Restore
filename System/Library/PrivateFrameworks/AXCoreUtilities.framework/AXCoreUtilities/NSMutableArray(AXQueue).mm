@interface NSMutableArray(AXQueue)
- (id)ax_dequeueObject;
@end

@implementation NSMutableArray(AXQueue)

- (id)ax_dequeueObject
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

@end
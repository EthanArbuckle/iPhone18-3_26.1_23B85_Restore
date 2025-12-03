@interface NSMutableArray(AXQueue)
- (id)ax_dequeueObject;
@end

@implementation NSMutableArray(AXQueue)

- (id)ax_dequeueObject
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

@end
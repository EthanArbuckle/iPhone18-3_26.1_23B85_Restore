@interface NSMutableArray(AXExtras)
- (void)ax_removeObjectsFromArrayUsingBlock:()AXExtras;
@end

@implementation NSMutableArray(AXExtras)

- (void)ax_removeObjectsFromArrayUsingBlock:()AXExtras
{
  v2 = [self indexesOfObjectsPassingTest:?];
  [self removeObjectsAtIndexes:v2];
}

@end
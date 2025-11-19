@interface NSMutableArray(AXExtras)
- (void)ax_removeObjectsFromArrayUsingBlock:()AXExtras;
@end

@implementation NSMutableArray(AXExtras)

- (void)ax_removeObjectsFromArrayUsingBlock:()AXExtras
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  [a1 removeObjectsAtIndexes:v2];
}

@end
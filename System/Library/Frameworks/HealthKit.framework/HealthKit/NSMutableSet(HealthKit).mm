@interface NSMutableSet(HealthKit)
- (void)hk_addNonNilObject:()HealthKit;
- (void)hk_removeObjectsPassingTest:()HealthKit;
@end

@implementation NSMutableSet(HealthKit)

- (void)hk_addNonNilObject:()HealthKit
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)hk_removeObjectsPassingTest:()HealthKit
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__NSMutableSet_HealthKit__hk_removeObjectsPassingTest___block_invoke;
  v7[3] = &unk_1E7381FE0;
  v8 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v7];
  [a1 minusSet:v6];
}

@end
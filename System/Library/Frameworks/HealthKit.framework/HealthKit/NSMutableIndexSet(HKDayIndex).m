@interface NSMutableIndexSet(HKDayIndex)
- (uint64_t)hk_addDayIndex:()HKDayIndex;
@end

@implementation NSMutableIndexSet(HKDayIndex)

- (uint64_t)hk_addDayIndex:()HKDayIndex
{
  if (a3 < 0)
  {
    [(NSMutableIndexSet(HKDayIndex) *)a2 hk_addDayIndex:a1];
  }

  return [a1 addIndex:a3];
}

- (void)hk_addDayIndex:()HKDayIndex .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSIndexSet+HKDayIndex.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"dayIndex >= 0"}];
}

@end
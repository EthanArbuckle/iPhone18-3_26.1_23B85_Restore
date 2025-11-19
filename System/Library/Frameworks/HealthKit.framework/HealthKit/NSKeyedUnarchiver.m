@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

uint64_t __77__NSKeyedUnarchiver_HealthKit__hk_unarchivedObjectOfClass_forKey_data_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 decodeObjectOfClass:a1[6] forKey:a1[4]];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __79__NSKeyedUnarchiver_HealthKit__hk_unarchivedObjectOfClasses_forKey_data_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 decodeObjectOfClasses:a1[4] forKey:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

@end
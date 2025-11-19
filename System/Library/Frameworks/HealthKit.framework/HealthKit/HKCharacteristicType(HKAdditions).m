@interface HKCharacteristicType(HKAdditions)
@end

@implementation HKCharacteristicType(HKAdditions)

- (void)_relatedSampleForInsertionWithCharacteristicValue:()HKAdditions date:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCharacteristicType+HKAdditions.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"[characteristic isKindOfClass:[HKQuantity class]]"}];
}

- (void)_relatedSampleForInsertionWithCharacteristicValue:()HKAdditions date:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCharacteristicType+HKAdditions.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"[characteristic isKindOfClass:[NSNumber class]]"}];
}

@end
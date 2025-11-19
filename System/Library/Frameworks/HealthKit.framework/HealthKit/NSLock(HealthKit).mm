@interface NSLock(HealthKit)
- (void)hk_withLock:()HealthKit;
@end

@implementation NSLock(HealthKit)

- (void)hk_withLock:()HealthKit
{
  v5 = a3;
  if (!v5)
  {
    [(NSLock(HealthKit) *)a2 hk_withLock:a1];
  }

  [a1 lock];
  v5[2]();
  [a1 unlock];
}

- (void)hk_withLock:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSLock+HealthKit.m" lineNumber:18 description:@"block must be non-nil."];
}

@end
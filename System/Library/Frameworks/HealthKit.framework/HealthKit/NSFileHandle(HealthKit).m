@interface NSFileHandle(HealthKit)
- (BOOL)hk_enumerateLinesWithError:()HealthKit handler:;
@end

@implementation NSFileHandle(HealthKit)

- (BOOL)hk_enumerateLinesWithError:()HealthKit handler:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__NSFileHandle_HealthKit__hk_enumerateLinesWithError_handler___block_invoke;
  v5[3] = &unk_1E7380530;
  v5[4] = a1;
  return [HKLineEnumerator enumerateUTF8LinesWithError:a3 dataProvider:v5 lineHandler:a4];
}

@end
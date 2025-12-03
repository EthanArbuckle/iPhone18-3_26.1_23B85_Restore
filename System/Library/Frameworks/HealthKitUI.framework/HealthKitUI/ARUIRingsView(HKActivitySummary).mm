@interface ARUIRingsView(HKActivitySummary)
- (void)hk_configureWithActivitySummary:()HKActivitySummary animated:completion:;
- (void)hk_configureWithActivitySummary:()HKActivitySummary isStandaloneFallback:animated:completion:;
@end

@implementation ARUIRingsView(HKActivitySummary)

- (void)hk_configureWithActivitySummary:()HKActivitySummary animated:completion:
{
  v8 = a5;
  v9 = a3;
  ringGroup = [self ringGroup];
  [ringGroup hk_configureWithActivitySummary:v9 animated:a4 completion:v8];
}

- (void)hk_configureWithActivitySummary:()HKActivitySummary isStandaloneFallback:animated:completion:
{
  v10 = a6;
  v11 = a3;
  ringGroup = [self ringGroup];
  [ringGroup hk_configureWithActivitySummary:v11 isStandaloneFallback:a4 animated:a5 completion:v10];
}

@end
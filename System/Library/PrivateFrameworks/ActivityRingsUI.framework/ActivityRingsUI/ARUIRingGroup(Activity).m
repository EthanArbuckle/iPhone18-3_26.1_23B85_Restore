@interface ARUIRingGroup(Activity)
@end

@implementation ARUIRingGroup(Activity)

- (void)setIsStandalonePhoneFitnessMode:()Activity animated:completion:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 rings];
  v4 = 134217984;
  v5 = [v3 count];
  _os_log_fault_impl(&dword_1CFD67000, a2, OS_LOG_TYPE_FAULT, "[ARUIRingGroup configureForIsStandalonePhoneFitnessMode:animated:completion:] unexpectedly called for ARUIRingGroup with %lu rings", &v4, 0xCu);
}

@end
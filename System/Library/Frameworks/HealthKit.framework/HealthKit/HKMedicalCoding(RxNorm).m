@interface HKMedicalCoding(RxNorm)
@end

@implementation HKMedicalCoding(RxNorm)

+ (void)RxNormCodingWithCode:()RxNorm displayString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+RxNorm.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"code"}];
}

@end
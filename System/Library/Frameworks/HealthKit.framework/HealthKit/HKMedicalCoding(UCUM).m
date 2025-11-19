@interface HKMedicalCoding(UCUM)
@end

@implementation HKMedicalCoding(UCUM)

+ (void)ucum_codingWithCode:()UCUM displayString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+UCUM.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"code"}];
}

+ (void)ucum_codingWithCode:()UCUM displayString:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+UCUM.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"displayString"}];
}

@end
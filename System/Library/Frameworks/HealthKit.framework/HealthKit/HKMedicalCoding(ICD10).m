@interface HKMedicalCoding(ICD10)
@end

@implementation HKMedicalCoding(ICD10)

+ (void)ICD10CodingWithCode:()ICD10 displayString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+ICD10.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"code"}];
}

@end
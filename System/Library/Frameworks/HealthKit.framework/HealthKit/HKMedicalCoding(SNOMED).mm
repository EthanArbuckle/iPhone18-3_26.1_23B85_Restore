@interface HKMedicalCoding(SNOMED)
@end

@implementation HKMedicalCoding(SNOMED)

+ (void)SNOMEDCodingWithCode:()SNOMED displayString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+SNOMED.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"code"}];
}

@end
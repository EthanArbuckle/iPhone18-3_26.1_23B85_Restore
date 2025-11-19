@interface HKMedicalCoding(ICD9)
@end

@implementation HKMedicalCoding(ICD9)

+ (void)ICD9CodingWithCode:()ICD9 displayString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+ICD9CM.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"code"}];
}

@end
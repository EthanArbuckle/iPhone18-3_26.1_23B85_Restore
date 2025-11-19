@interface HKMedicalCoding(Text)
@end

@implementation HKMedicalCoding(Text)

+ (void)text_codingWithDisplayString:()Text .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCoding+Text.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"displayString"}];
}

@end
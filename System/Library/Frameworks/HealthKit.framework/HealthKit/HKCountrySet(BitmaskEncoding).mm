@interface HKCountrySet(BitmaskEncoding)
@end

@implementation HKCountrySet(BitmaskEncoding)

+ (void)countryCodeForBitmaskPath:()BitmaskEncoding .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+BitmaskEncoding.m" lineNumber:604 description:@"Each availability mask corresponds to one ISO 3166-1 country."];
}

@end
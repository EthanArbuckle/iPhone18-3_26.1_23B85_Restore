@interface HKFixedCurrentCountryCodeProvider
- (HKFixedCurrentCountryCodeProvider)initWithCountryCode:(id)code;
@end

@implementation HKFixedCurrentCountryCodeProvider

- (HKFixedCurrentCountryCodeProvider)initWithCountryCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = HKFixedCurrentCountryCodeProvider;
  v5 = [(HKFixedCurrentCountryCodeProvider *)&v9 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;
  }

  return v5;
}

@end
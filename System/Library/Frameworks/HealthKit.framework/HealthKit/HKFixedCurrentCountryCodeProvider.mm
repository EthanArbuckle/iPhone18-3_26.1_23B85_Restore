@interface HKFixedCurrentCountryCodeProvider
- (HKFixedCurrentCountryCodeProvider)initWithCountryCode:(id)a3;
@end

@implementation HKFixedCurrentCountryCodeProvider

- (HKFixedCurrentCountryCodeProvider)initWithCountryCode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFixedCurrentCountryCodeProvider;
  v5 = [(HKFixedCurrentCountryCodeProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;
  }

  return v5;
}

@end
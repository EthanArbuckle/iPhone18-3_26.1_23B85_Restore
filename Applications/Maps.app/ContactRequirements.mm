@interface ContactRequirements
- (ContactRequirements)initWithNameRequired:(BOOL)required phoneNumberRequired:(BOOL)numberRequired emailAddressRequired:(BOOL)addressRequired;
@end

@implementation ContactRequirements

- (ContactRequirements)initWithNameRequired:(BOOL)required phoneNumberRequired:(BOOL)numberRequired emailAddressRequired:(BOOL)addressRequired
{
  v9.receiver = self;
  v9.super_class = ContactRequirements;
  result = [(ContactRequirements *)&v9 init];
  if (result)
  {
    result->_nameRequired = required;
    result->_phoneNumberRequired = numberRequired;
    result->_emailAddressRequired = addressRequired;
  }

  return result;
}

@end
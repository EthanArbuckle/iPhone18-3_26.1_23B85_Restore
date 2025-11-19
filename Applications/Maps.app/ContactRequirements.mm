@interface ContactRequirements
- (ContactRequirements)initWithNameRequired:(BOOL)a3 phoneNumberRequired:(BOOL)a4 emailAddressRequired:(BOOL)a5;
@end

@implementation ContactRequirements

- (ContactRequirements)initWithNameRequired:(BOOL)a3 phoneNumberRequired:(BOOL)a4 emailAddressRequired:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = ContactRequirements;
  result = [(ContactRequirements *)&v9 init];
  if (result)
  {
    result->_nameRequired = a3;
    result->_phoneNumberRequired = a4;
    result->_emailAddressRequired = a5;
  }

  return result;
}

@end
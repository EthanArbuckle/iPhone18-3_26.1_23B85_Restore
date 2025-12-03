@interface HealthDigitalSeparationEntry
- (HealthDigitalSeparationEntry)initWithSharingEntry:(id)entry;
- (NSPersonNameComponents)nameComponents;
- (NSString)emailAddress;
- (NSString)phoneNumber;
@end

@implementation HealthDigitalSeparationEntry

- (HealthDigitalSeparationEntry)initWithSharingEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = HealthDigitalSeparationEntry;
  v5 = [(HealthDigitalSeparationEntry *)&v9 init];
  if (v5)
  {
    v6 = [entryCopy copy];
    sharingEntry = v5->_sharingEntry;
    v5->_sharingEntry = v6;
  }

  return v5;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  firstName = [(HKSummarySharingEntry *)self->_sharingEntry firstName];
  [v3 setGivenName:firstName];

  lastName = [(HKSummarySharingEntry *)self->_sharingEntry lastName];
  [v3 setFamilyName:lastName];

  return v3;
}

- (NSString)emailAddress
{
  primaryContactIdentifier = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  _appearsToBeEmail = [primaryContactIdentifier _appearsToBeEmail];

  if (_appearsToBeEmail)
  {
    primaryContactIdentifier2 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  }

  else
  {
    primaryContactIdentifier2 = 0;
  }

  return primaryContactIdentifier2;
}

- (NSString)phoneNumber
{
  primaryContactIdentifier = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  _appearsToBePhoneNumber = [primaryContactIdentifier _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber)
  {
    primaryContactIdentifier2 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  }

  else
  {
    primaryContactIdentifier2 = 0;
  }

  return primaryContactIdentifier2;
}

@end
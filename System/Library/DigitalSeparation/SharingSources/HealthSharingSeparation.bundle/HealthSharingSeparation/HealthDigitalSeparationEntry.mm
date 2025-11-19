@interface HealthDigitalSeparationEntry
- (HealthDigitalSeparationEntry)initWithSharingEntry:(id)a3;
- (NSPersonNameComponents)nameComponents;
- (NSString)emailAddress;
- (NSString)phoneNumber;
@end

@implementation HealthDigitalSeparationEntry

- (HealthDigitalSeparationEntry)initWithSharingEntry:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HealthDigitalSeparationEntry;
  v5 = [(HealthDigitalSeparationEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sharingEntry = v5->_sharingEntry;
    v5->_sharingEntry = v6;
  }

  return v5;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  v4 = [(HKSummarySharingEntry *)self->_sharingEntry firstName];
  [v3 setGivenName:v4];

  v5 = [(HKSummarySharingEntry *)self->_sharingEntry lastName];
  [v3 setFamilyName:v5];

  return v3;
}

- (NSString)emailAddress
{
  v3 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  v4 = [v3 _appearsToBeEmail];

  if (v4)
  {
    v5 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)phoneNumber
{
  v3 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  v4 = [v3 _appearsToBePhoneNumber];

  if (v4)
  {
    v5 = [(HKSummarySharingEntry *)self->_sharingEntry primaryContactIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
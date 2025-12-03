@interface MSPSharedTripContact
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (NSString)unifiedContactIdentifier;
@end

@implementation MSPSharedTripContact

- (NSString)unifiedContactIdentifier
{
  contact = [(MSPSharedTripContact *)self contact];
  identifier = [contact identifier];

  return identifier;
}

- (NSString)emailAddress
{
  if (([(MSPSharedTripContact *)self isPhoneNumber]& 1) != 0)
  {
    stringValue = 0;
  }

  else
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
  }

  return stringValue;
}

- (NSString)phoneNumber
{
  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

@end